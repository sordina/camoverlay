//
//  camcapApp.swift
//  camcap
//
//  Created by Lyndon Maydwell on 26/10/2023.
//

import SwiftUI
import AVFoundation

//extension AVCaptureDevice: Equatable {
//    
//}

class UserSettings: ObservableObject {
    @Published var shape = AnyShape(Circle())
    @Published var isMirroring = true
    @Published var device: AVCaptureDevice?
}

class TransparentWindowView: NSView {
    
    func titleHidden(_ hidden: Bool) {
        guard let window else { return }
        window.standardWindowButton(.closeButton)?.superview?.superview?.isHidden = hidden
    }
    
    override func viewDidMoveToWindow() {
        guard let window else { return }
        
        window.isReleasedWhenClosed = true
        window.center()
        window.makeKeyAndOrderFront(nil)
        window.level = .floating
        window.backgroundColor = .clear
        window.isMovable = true
        window.isMovableByWindowBackground = true
        window.hasShadow = true
        
        // Remove close button grandparent to just show the circle.
        titleHidden(true)
        // window.standardWindowButton(.miniaturizeButton)?.isHidden = true
        // window.standardWindowButton(.zoomButton)?.isHidden = true
        
        super.viewDidMoveToWindow()
    }
    
    override func mouseEntered(with event: NSEvent) {
        titleHidden(false)
    }

    override func mouseExited(with event: NSEvent) {
        // The delay is a hack since we can't consider the titlebar part of the tracked area for some reason...
        // NOTE: This has a race condition where you could re-enter and have the schedule hiding occur
        //       There's no way I've found to cancel the dispatch though, with this or OperationQueue
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) { [weak self] in
            self?.titleHidden(true)
        }
    }
}

struct TransparentWindow: NSViewRepresentable {
    func updateNSView(_ nsView: NSView, context: Context) {
    }
    
    func makeNSView(context: Self.Context) -> NSView {
        let win = TransparentWindowView()
        
        let trackingOptions: NSTrackingArea.Options = [
            .mouseEnteredAndExited,
            .inVisibleRect,
            .assumeInside,
            .activeAlways,
        ]
        
        let frame = win.frame
        let rect = CGRect(x: frame.minX - 100, y: frame.minY - 100, width: frame.width + 100, height: frame.height + 100)
        
        win.addTrackingArea(NSTrackingArea(rect: rect, options: trackingOptions, owner: win))

        return win
    }
}

@main
struct dispLayoverApp: App {
    
    let settings = UserSettings()
    let cameras = Cameras().getCameras()
    
    init() {
        // Cameras() Should have prompted for required permissions
        guard cameras.count > 0 else { return }
        settings.device = cameras[0]
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(settings)
                .background(TransparentWindow())
                .environmentObject(settings)
        }
        .windowStyle(.hiddenTitleBar)
        .commands {
            CommandMenu("Shape") {
                var shape = 0
                let shapes = ShapeType.allCases
                Button("Next") {
                    shape += 1
                    settings.shape = mkShape(shapes[shape % shapes.count])
                }.keyboardShortcut("n")
                
                Button("Circle")    { settings.shape = mkShape(.circle) }
                Button("Rectangle") { settings.shape = mkShape(.rectangle) }
                Button("Capsule")   { settings.shape = mkShape(.capsule) }
                Button("Ellipse")   { settings.shape = mkShape(.ellipse) }
                Button("Hexagon")   { settings.shape = mkShape(.hexagon) }
                Button("Heart")     { settings.shape = mkShape(.heart) }
                Button("Cloud")     { settings.shape = mkShape(.cloud) }
                Button("Blob")      { settings.shape = mkShape(.blob) }
            }
            
            CommandMenu("Mirroring") {
                Button("Mirror") { settings.isMirroring.toggle() }.keyboardShortcut("f")
            }

            // Commands technique taken from https://developer.apple.com/forums/thread/668139
            CommandMenu("Cameras") {
                let zero = ("1" as UnicodeScalar).value
                ForEach(Array(cameras.enumerated()), id: \.0) { (i, device) in
                    if let c = UnicodeScalar(zero + UInt32(i)) {
                        Button("\(device.localizedName)") { settings.device = device }
                          .keyboardShortcut(KeyboardShortcut(KeyEquivalent(Character(c))))
                    }
                }
            }
        }
    }
}

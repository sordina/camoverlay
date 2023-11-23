//
//  Shapes.swift
//  DispLayover
//
//  Created by Lyndon Maydwell on 31/10/2023.
//

import SwiftUI
import Foundation
import SVGShape

struct Lattice: Shape {
    var shape: SVGShape
    
    func path(in rect: CGRect) -> Path {
        return shape.path(in: rect)
    }
        
    init() throws {
        let svgString
            = """
                <svg xmlns="http://www.w3.org/2000/svg" version="1.0" width="999.9998" height="1000.0" >
                <!-- X Coordinate transform: fx(x)=(x+2.6115084)*86.024284-->
                <!-- Y Coordinate transform: fy(y)=(8.54302-y)*86.024284 -->
                <!-- Flac geometry view -->
                <g style="opacity:1.0;fill:#5a5aff;fill-opacity:1;stroke:#000000;stroke-width:2.0;stroke-opacity:1.00;"> <!-- group <Default> -->
                <!--
                <polygon points=" 439.171,707.681 353.147,707.681 396.159,633.182"/>
                <polygon points=" 292.319,768.509 292.319,854.533 217.82,811.521"/>
                <polygon points=" 353.147,915.362 396.159,840.863 439.171,915.362"/>
                <polygon points=" 500,854.534 500,768.509 574.499,811.522"/>
                <polygon points=" 500,646.853 500,560.828 574.499,603.841"/>
                <polygon points=" 439.172,500 353.147,500 396.16,425.501"/>
                <polygon points=" 292.319,560.828 292.319,646.853 217.82,603.84"/>
                <polygon points=" 439.171,707.681 396.159,782.18 353.147,707.681"/>
                <polygon points=" 145.466,707.681 231.491,707.681 188.478,782.18"/>
                <polygon points=" 84.638,560.828 159.137,603.84 84.638,646.852"/>
                <polygon points=" 560.828,707.681 646.852,707.681 603.84,782.18"/>
                <polygon points=" 707.681,646.853 707.681,560.828 782.18,603.841"/>
                <polygon points=" 646.852,500 560.828,500 603.84,425.501"/>
                <polygon points=" 500,646.853 425.501,603.84 500,560.828"/>
                <polygon points=" 439.172,500 396.159,574.499 353.147,500"/>
                <polygon points=" 292.319,353.147 292.319,439.172 217.82,396.159"/>
                <polygon points=" 439.172,292.319 353.147,292.319 396.16,217.82"/>
                <polygon points=" 500,439.172 500,353.147 574.499,396.16"/>
                <polygon points=" 292.319,560.828 366.818,603.84 292.319,646.853"/>
                <polygon points=" 231.491,500 145.466,500 188.479,425.501"/>
                <polygon points=" 500,439.172 425.501,396.159 500,353.147"/>
                <polygon points=" 646.853,292.319 560.828,292.319 603.841,217.82"/>
                <polygon points=" 707.681,439.172 707.681,353.148 782.18,396.16"/>
                <polygon points=" 646.852,500 603.84,574.499 560.828,500"/>
                <polygon points=" 439.172,292.319 396.16,366.818 353.147,292.319"/>
                <polygon points=" 292.319,231.491 217.82,188.478 292.319,145.466"/>
                <polygon points=" 439.172,84.638 396.16,159.137 353.147,84.638"/>
                <polygon points=" 500,231.491 500,145.466 574.499,188.479"/>
                <polygon points=" 231.491,292.319 188.479,366.818 145.466,292.319"/>
                <polygon points=" 84.638,231.49 84.638,145.466 159.137,188.478"/>
                <polygon points=" 231.491,84.638 188.479,159.137 145.467,84.638"/>
                <polygon points=" 292.319,231.491 292.319,145.466 366.818,188.479"/>
                <polygon points=" 231.491,292.319 145.466,292.319 188.479,217.82"/>
                <polygon points=" 292.319,353.147 366.818,396.159 292.319,439.172"/>
                <polygon points=" 231.491,500 188.478,574.499 145.466,500"/>
                <polygon points=" 84.638,353.147 159.137,396.159 84.638,439.171"/>
                <polygon points=" 560.828,915.362 603.84,840.863 646.852,915.362"/>
                <polygon points=" 707.681,854.534 707.681,768.509 782.18,811.522"/>
                <polygon points=" 560.828,707.681 603.84,633.182 646.852,707.681"/>
                <polygon points=" 500,854.534 425.5,811.521 500,768.509"/>
                <polygon points=" 707.681,646.853 633.182,603.841 707.681,560.828"/>
                <polygon points=" 768.509,500 811.521,425.501 854.534,500"/>
                <polygon points=" 915.362,646.853 840.863,603.841 915.362,560.829"/>
                <polygon points=" 768.509,707.681 854.533,707.681 811.521,782.18"/>
                <polygon points=" 145.466,707.681 188.478,633.182 231.491,707.681"/>
                <polygon points=" 84.638,768.509 159.137,811.521 84.638,854.534"/>
                <polygon points=" 292.319,768.509 366.818,811.521 292.319,854.533"/>
                <polygon points=" 145.466,915.362 188.478,840.863 231.491,915.362"/>
                <polygon points=" 915.362,439.172 840.863,396.16 915.362,353.148"/>
                <polygon points=" 768.509,292.319 811.521,217.82 854.534,292.319"/>
                <polygon points=" 707.681,439.172 633.182,396.16 707.681,353.148"/>
                <polygon points=" 768.509,500 854.534,500 811.521,574.5"/>
                <polygon points=" 646.853,292.319 603.841,366.818 560.828,292.319"/>
                <polygon points=" 500,231.491 425.501,188.479 500,145.466"/>
                <polygon points=" 646.853,84.638 603.841,159.137 560.828,84.638"/>
                <polygon points=" 707.681,231.491 707.681,145.466 782.18,188.479"/>
                <polygon points=" 707.681,854.534 633.181,811.522 707.681,768.509"/>
                <polygon points=" 768.509,707.681 811.521,633.182 854.533,707.681"/>
                <polygon points=" 915.362,854.534 840.862,811.522 915.362,768.509"/>
                <polygon points=" 768.509,915.362 811.521,840.863 854.533,915.362"/>
                <polygon points=" 915.362,231.491 840.863,188.479 915.362,145.466"/>
                <polygon points=" 768.509,84.638 854.533,84.638 811.521,159.137"/>
                <polygon points=" 707.681,231.491 633.182,188.479 707.681,145.466"/>
                <polygon points=" 768.509,292.319 854.534,292.319 811.521,366.818"/>
                -->
                </g>
                <g style="opacity:1.0;fill:#5abf5a;fill-opacity:1;stroke:#000000;stroke-width:2.0;stroke-opacity:1.00;"> <!-- group Area0.9999988 -->
                <!--
                <polygon points=" 439.171,707.681 500,646.853 560.828,707.681 500,768.509"/>
                <polygon points=" 353.147,707.681 292.319,768.509 231.491,707.681 292.319,646.853"/>
                <polygon points=" 292.319,854.533 353.147,915.362 292.319,976.19 231.491,915.362"/>
                <polygon points=" 439.171,915.362 500,854.534 560.828,915.362 500,976.19"/>
                <polygon points=" 500,560.828 439.172,500 500,439.172 560.828,500"/>
                <polygon points=" 353.147,500 292.319,560.828 231.491,500 292.319,439.172"/>
                <polygon points=" 84.638,646.852 145.466,707.681 84.638,768.509 23.81,707.681"/>
                <polygon points=" 145.466,500 84.638,560.828 23.81,500 84.638,439.171"/>
                <polygon points=" 646.852,707.681 707.681,646.853 768.509,707.681 707.681,768.509"/>
                <polygon points=" 707.681,560.828 646.852,500 707.681,439.172 768.509,500"/>
                <polygon points=" 353.147,292.319 292.319,353.147 231.491,292.319 292.319,231.491"/>
                <polygon points=" 500,353.147 439.172,292.319 500,231.491 560.828,292.319"/>
                <polygon points=" 707.681,353.148 646.853,292.319 707.681,231.491 768.509,292.319"/>
                <polygon points=" 292.319,145.466 231.491,84.638 292.319,23.81 353.147,84.638"/>
                <polygon points=" 500,145.466 439.172,84.638 500,23.81 560.828,84.638"/>
                <polygon points=" 145.466,292.319 84.638,353.147 23.81,292.319 84.638,231.49"/>
                <polygon points=" 145.467,84.638 84.638,145.466 23.81,84.638 84.638,23.809"/>
                <polygon points=" 646.852,915.362 707.681,854.534 768.509,915.362 707.681,976.19"/>
                <polygon points=" 854.534,500 915.362,439.172 976.19,500 915.362,560.829"/>
                <polygon points=" 854.533,707.681 915.362,646.853 976.19,707.681 915.362,768.509"/>
                <polygon points=" 84.638,854.534 145.466,915.362 84.638,976.19 23.81,915.362"/>
                <polygon points=" 915.362,353.148 854.534,292.319 915.362,231.491 976.19,292.319"/>
                <polygon points=" 707.681,145.466 646.853,84.638 707.681,23.81 768.509,84.638"/>
                <polygon points=" 854.533,915.362 915.362,854.534 976.19,915.362 915.362,976.19"/>
                <polygon points=" 915.362,145.466 854.533,84.638 915.361,23.81 976.19,84.638"/>
                -->
                </g>
                <g style="opacity:1.0;fill:#5abfbf;fill-opacity:1;stroke:#000000;stroke-width:2.0;stroke-opacity:1.00;"> <!-- group Area1.3643249 -->
                <!--
                <polygon points=" 439.171,707.681 396.159,633.182 353.147,707.681 375.412,624.588 292.319,646.853 366.818,603.84 292.319,560.828 375.412,583.093 353.147,500 396.159,574.499 439.172,500 416.907,583.093 500,560.828 425.501,603.84 500,646.853 416.907,624.588"/>
                <polygon points=" 292.319,768.509 217.82,811.521 292.319,854.533 209.226,832.269 231.491,915.362 188.478,840.863 145.466,915.362 167.731,832.269 84.638,854.534 159.137,811.521 84.638,768.509 167.731,790.774 145.466,707.681 188.478,782.18 231.491,707.681 209.226,790.774"/>
                <polygon points=" 439.171,707.681 416.907,790.774 500,768.509 425.5,811.521 500,854.534 416.907,832.269 439.171,915.362 396.159,840.863 353.147,915.362 375.412,832.269 292.319,854.533 366.818,811.521 292.319,768.509 375.412,790.774 353.147,707.681 396.159,782.18"/>
                <polygon points=" 560.828,707.681 603.84,782.18 646.852,707.681 624.588,790.774 707.681,768.509 633.181,811.522 707.681,854.534 624.588,832.269 646.852,915.362 603.84,840.863 560.828,915.362 583.093,832.269 500,854.534 574.499,811.522 500,768.509 583.093,790.774"/>
                <polygon points=" 500,646.853 574.499,603.841 500,560.828 583.093,583.093 560.828,500 603.84,574.499 646.852,500 624.588,583.093 707.681,560.828 633.182,603.841 707.681,646.853 624.588,624.588 646.852,707.681 603.84,633.182 560.828,707.681 583.093,624.588"/>
                <polygon points=" 439.172,500 396.16,425.501 353.147,500 375.412,416.907 292.319,439.172 366.818,396.159 292.319,353.147 375.412,375.412 353.147,292.319 396.16,366.818 439.172,292.319 416.907,375.412 500,353.147 425.501,396.159 500,439.172 416.907,416.907"/>
                <polygon points=" 292.319,560.828 217.82,603.84 292.319,646.853 209.226,624.588 231.491,707.681 188.478,633.182 145.466,707.681 167.731,624.588 84.638,646.852 159.137,603.84 84.638,560.828 167.731,583.093 145.466,500 188.478,574.499 231.491,500 209.226,583.093"/>
                <polygon points=" 707.681,646.853 782.18,603.841 707.681,560.828 790.774,583.093 768.509,500 811.521,574.5 854.534,500 832.269,583.093 915.362,560.829 840.863,603.841 915.362,646.853 832.269,624.588 854.533,707.681 811.521,633.182 768.509,707.681 790.774,624.588"/>
                <polygon points=" 500,439.172 574.499,396.16 500,353.147 583.093,375.412 560.828,292.319 603.841,366.818 646.853,292.319 624.588,375.412 707.681,353.148 633.182,396.16 707.681,439.172 624.588,416.907 646.852,500 603.84,425.501 560.828,500 583.093,416.907"/>
                <polygon points=" 292.319,353.147 217.82,396.159 292.319,439.172 209.226,416.907 231.491,500 188.479,425.501 145.466,500 167.731,416.907 84.638,439.171 159.137,396.159 84.638,353.147 167.731,375.412 145.466,292.319 188.479,366.818 231.491,292.319 209.226,375.412"/>
                <polygon points=" 439.172,292.319 396.16,217.82 353.147,292.319 375.412,209.226 292.319,231.491 366.818,188.479 292.319,145.466 375.412,167.731 353.147,84.638 396.16,159.137 439.172,84.638 416.907,167.731 500,145.466 425.501,188.479 500,231.491 416.907,209.226"/>
                <polygon points=" 646.853,292.319 603.841,217.82 560.828,292.319 583.093,209.226 500,231.491 574.499,188.479 500,145.466 583.093,167.731 560.828,84.638 603.841,159.137 646.853,84.638 624.588,167.731 707.681,145.466 633.182,188.479 707.681,231.491 624.588,209.226"/>
                <polygon points=" 707.681,439.172 782.18,396.16 707.681,353.148 790.774,375.412 768.509,292.319 811.521,366.818 854.534,292.319 832.269,375.412 915.362,353.148 840.863,396.16 915.362,439.172 832.269,416.907 854.534,500 811.521,425.501 768.509,500 790.774,416.907"/>
                <polygon points=" 231.491,292.319 188.479,217.82 145.466,292.319 167.731,209.226 84.638,231.49 159.137,188.478 84.638,145.466 167.731,167.731 145.467,84.638 188.479,159.137 231.491,84.638 209.226,167.731 292.319,145.466 217.82,188.478 292.319,231.491 209.226,209.226"/>
                <polygon points=" 707.681,854.534 782.18,811.522 707.681,768.509 790.774,790.774 768.509,707.681 811.521,782.18 854.533,707.681 832.268,790.774 915.362,768.509 840.862,811.522 915.362,854.534 832.269,832.269 854.533,915.362 811.521,840.863 768.509,915.362 790.774,832.269"/>
                <polygon points=" 707.681,231.491 782.18,188.479 707.681,145.466 790.774,167.731 768.509,84.638 811.521,159.137 854.533,84.638 832.269,167.731 915.362,145.466 840.863,188.479 915.362,231.491 832.269,209.226 854.534,292.319 811.521,217.82 768.509,292.319 790.774,209.226"/>
                -->
                </g>
                <g style="opacity:1.0;fill:#bf5a5a;fill-opacity:1;stroke:#000000;stroke-width:2.0;stroke-opacity:1.00;"> <!-- group <Default> -->
                <polygon points=" 439.171,707.681 353.147,707.681 396.159,633.182"/>
                <polygon points=" 292.319,768.509 292.319,854.533 217.82,811.521"/>
                <polygon points=" 353.147,915.362 396.159,840.863 439.171,915.362"/>
                <polygon points=" 500,854.534 500,768.509 574.499,811.522"/>
                <polygon points=" 500,646.853 500,560.828 574.499,603.841"/>
                <polygon points=" 439.172,500 353.147,500 396.16,425.501"/>
                <polygon points=" 292.319,560.828 292.319,646.853 217.82,603.84"/>
                <polygon points=" 439.171,707.681 396.159,782.18 353.147,707.681"/>
                <polygon points=" 145.466,707.681 231.491,707.681 188.478,782.18"/>
                <polygon points=" 84.638,560.828 159.137,603.84 84.638,646.852"/>
                <polygon points=" 560.828,707.681 646.852,707.681 603.84,782.18"/>
                <polygon points=" 707.681,646.853 707.681,560.828 782.18,603.841"/>
                <polygon points=" 646.852,500 560.828,500 603.84,425.501"/>
                <polygon points=" 500,646.853 425.501,603.84 500,560.828"/>
                <polygon points=" 439.172,500 396.159,574.499 353.147,500"/>
                <polygon points=" 292.319,353.147 292.319,439.172 217.82,396.159"/>
                <polygon points=" 439.172,292.319 353.147,292.319 396.16,217.82"/>
                <polygon points=" 500,439.172 500,353.147 574.499,396.16"/>
                <polygon points=" 292.319,560.828 366.818,603.84 292.319,646.853"/>
                <polygon points=" 231.491,500 145.466,500 188.479,425.501"/>
                <polygon points=" 500,439.172 425.501,396.159 500,353.147"/>
                <polygon points=" 646.853,292.319 560.828,292.319 603.841,217.82"/>
                <polygon points=" 707.681,439.172 707.681,353.148 782.18,396.16"/>
                <polygon points=" 646.852,500 603.84,574.499 560.828,500"/>
                <polygon points=" 439.172,292.319 396.16,366.818 353.147,292.319"/>
                <polygon points=" 292.319,231.491 217.82,188.478 292.319,145.466"/>
                <polygon points=" 439.172,84.638 396.16,159.137 353.147,84.638"/>
                <polygon points=" 500,231.491 500,145.466 574.499,188.479"/>
                <polygon points=" 231.491,292.319 188.479,366.818 145.466,292.319"/>
                <polygon points=" 84.638,231.49 84.638,145.466 159.137,188.478"/>
                <polygon points=" 231.491,84.638 188.479,159.137 145.467,84.638"/>
                <polygon points=" 292.319,231.491 292.319,145.466 366.818,188.479"/>
                <polygon points=" 231.491,292.319 145.466,292.319 188.479,217.82"/>
                <polygon points=" 292.319,353.147 366.818,396.159 292.319,439.172"/>
                <polygon points=" 231.491,500 188.478,574.499 145.466,500"/>
                <polygon points=" 84.638,353.147 159.137,396.159 84.638,439.171"/>
                <polygon points=" 560.828,915.362 603.84,840.863 646.852,915.362"/>
                <polygon points=" 707.681,854.534 707.681,768.509 782.18,811.522"/>
                <polygon points=" 560.828,707.681 603.84,633.182 646.852,707.681"/>
                <polygon points=" 500,854.534 425.5,811.521 500,768.509"/>
                <polygon points=" 707.681,646.853 633.182,603.841 707.681,560.828"/>
                <polygon points=" 768.509,500 811.521,425.501 854.534,500"/>
                <polygon points=" 915.362,646.853 840.863,603.841 915.362,560.829"/>
                <polygon points=" 768.509,707.681 854.533,707.681 811.521,782.18"/>
                <polygon points=" 145.466,707.681 188.478,633.182 231.491,707.681"/>
                <polygon points=" 84.638,768.509 159.137,811.521 84.638,854.534"/>
                <polygon points=" 292.319,768.509 366.818,811.521 292.319,854.533"/>
                <polygon points=" 145.466,915.362 188.478,840.863 231.491,915.362"/>
                <polygon points=" 915.362,439.172 840.863,396.16 915.362,353.148"/>
                <polygon points=" 768.509,292.319 811.521,217.82 854.534,292.319"/>
                <polygon points=" 707.681,439.172 633.182,396.16 707.681,353.148"/>
                <polygon points=" 768.509,500 854.534,500 811.521,574.5"/>
                <polygon points=" 646.853,292.319 603.841,366.818 560.828,292.319"/>
                <polygon points=" 500,231.491 425.501,188.479 500,145.466"/>
                <polygon points=" 646.853,84.638 603.841,159.137 560.828,84.638"/>
                <polygon points=" 707.681,231.491 707.681,145.466 782.18,188.479"/>
                <polygon points=" 707.681,854.534 633.181,811.522 707.681,768.509"/>
                <polygon points=" 768.509,707.681 811.521,633.182 854.533,707.681"/>
                <polygon points=" 915.362,854.534 840.862,811.522 915.362,768.509"/>
                <polygon points=" 768.509,915.362 811.521,840.863 854.533,915.362"/>
                <polygon points=" 915.362,231.491 840.863,188.479 915.362,145.466"/>
                <polygon points=" 768.509,84.638 854.533,84.638 811.521,159.137"/>
                <polygon points=" 707.681,231.491 633.182,188.479 707.681,145.466"/>
                <polygon points=" 768.509,292.319 854.534,292.319 811.521,366.818"/>
                </g>
                <g style="opacity:1.0;fill:#af5aaf;fill-opacity:1;stroke:#000000;stroke-width:2.0;stroke-opacity:1.00;"> <!-- group a -->
                <polygon points=" 439.171,707.681 500,768.509 416.907,790.774"/>
                <polygon points=" 353.147,707.681 375.412,790.774 292.319,768.509"/>
                <polygon points=" 292.319,854.533 375.412,832.269 353.147,915.362"/>
                <polygon points=" 439.171,915.362 416.907,832.269 500,854.534"/>
                <polygon points=" 439.171,707.681 416.907,624.588 500,646.853"/>
                <polygon points=" 500,560.828 416.907,583.093 439.172,500"/>
                <polygon points=" 353.147,500 375.412,583.093 292.319,560.828"/>
                <polygon points=" 353.147,707.681 292.319,646.853 375.412,624.588"/>
                <polygon points=" 292.319,646.853 231.491,707.681 209.226,624.588"/>
                <polygon points=" 84.638,646.852 167.731,624.588 145.466,707.681"/>
                <polygon points=" 646.852,707.681 624.588,624.588 707.681,646.853"/>
                <polygon points=" 707.681,560.828 624.588,583.093 646.852,500"/>
                <polygon points=" 500,560.828 560.828,500 583.093,583.093"/>
                <polygon points=" 500,646.853 583.093,624.588 560.828,707.681"/>
                <polygon points=" 353.147,500 292.319,439.172 375.412,416.907"/>
                <polygon points=" 353.147,292.319 375.412,375.412 292.319,353.147"/>
                <polygon points=" 500,353.147 416.907,375.412 439.172,292.319"/>
                <polygon points=" 439.172,500 416.907,416.907 500,439.172"/>
                <polygon points=" 500,439.172 583.093,416.907 560.828,500"/>
                <polygon points=" 292.319,439.172 231.491,500 209.226,416.907"/>
                <polygon points=" 292.319,560.828 209.226,583.093 231.491,500"/>
                <polygon points=" 145.466,500 167.731,583.093 84.638,560.828"/>
                <polygon points=" 500,353.147 560.828,292.319 583.093,375.412"/>
                <polygon points=" 707.681,353.148 624.588,375.412 646.853,292.319"/>
                <polygon points=" 646.852,500 624.588,416.907 707.681,439.172"/>
                <polygon points=" 353.147,292.319 292.319,231.491 375.412,209.226"/>
                <polygon points=" 292.319,145.466 353.147,84.638 375.412,167.731"/>
                <polygon points=" 500,145.466 416.907,167.731 439.172,84.638"/>
                <polygon points=" 439.172,292.319 416.907,209.226 500,231.491"/>
                <polygon points=" 145.466,292.319 84.638,231.49 167.731,209.226"/>
                <polygon points=" 145.467,84.638 167.731,167.731 84.638,145.466"/>
                <polygon points=" 292.319,145.466 209.226,167.731 231.491,84.638"/>
                <polygon points=" 231.491,292.319 209.226,209.226 292.319,231.491"/>
                <polygon points=" 292.319,353.147 209.226,375.412 231.491,292.319"/>
                <polygon points=" 145.466,292.319 167.731,375.412 84.638,353.147"/>
                <polygon points=" 145.466,500 84.638,439.171 167.731,416.907"/>
                <polygon points=" 646.852,915.362 624.588,832.269 707.681,854.534"/>
                <polygon points=" 646.852,707.681 707.681,768.509 624.588,790.774"/>
                <polygon points=" 560.828,707.681 583.093,790.774 500,768.509"/>
                <polygon points=" 500,854.534 583.093,832.269 560.828,915.362"/>
                <polygon points=" 707.681,646.853 790.774,624.588 768.509,707.681"/>
                <polygon points=" 707.681,768.509 768.509,707.681 790.774,790.774"/>
                <polygon points=" 707.681,560.828 768.509,500 790.774,583.093"/>
                <polygon points=" 854.534,500 915.362,560.829 832.269,583.093"/>
                <polygon points=" 854.533,707.681 832.269,624.588 915.362,646.853"/>
                <polygon points=" 707.681,439.172 790.774,416.907 768.509,500"/>
                <polygon points=" 292.319,768.509 209.226,790.774 231.491,707.681"/>
                <polygon points=" 145.466,707.681 167.731,790.774 84.638,768.509"/>
                <polygon points=" 292.319,854.533 231.491,915.362 209.226,832.269"/>
                <polygon points=" 84.638,854.534 167.731,832.269 145.466,915.362"/>
                <polygon points=" 915.362,353.148 832.269,375.412 854.534,292.319"/>
                <polygon points=" 707.681,353.148 768.509,292.319 790.774,375.412"/>
                <polygon points=" 854.534,500 832.269,416.907 915.362,439.172"/>
                <polygon points=" 560.828,292.319 500,231.491 583.093,209.226"/>
                <polygon points=" 500,145.466 560.828,84.638 583.093,167.731"/>
                <polygon points=" 707.681,145.466 624.588,167.731 646.853,84.638"/>
                <polygon points=" 646.853,292.319 624.588,209.226 707.681,231.491"/>
                <polygon points=" 707.681,231.491 790.774,209.226 768.509,292.319"/>
                <polygon points=" 854.533,707.681 915.362,768.509 832.268,790.774"/>
                <polygon points=" 854.533,915.362 832.269,832.269 915.362,854.534"/>
                <polygon points=" 707.681,854.534 790.774,832.269 768.509,915.362"/>
                <polygon points=" 915.362,145.466 832.269,167.731 854.533,84.638"/>
                <polygon points=" 707.681,145.466 768.509,84.638 790.774,167.731"/>
                <polygon points=" 854.534,292.319 832.269,209.226 915.362,231.491"/>
                </g>
                </svg>
            """
        shape = try! SVGShape.init(string: svgString)
    }
}

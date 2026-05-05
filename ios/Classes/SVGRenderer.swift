import Foundation
import SVGKit
import UIKit

/// Helper class for rendering SVG strings or files into UIImages using SVGKit
class SVGRenderer {
    static func render(svgString: String, size: CGSize? = nil, tintColor: UIColor? = nil) -> UIImage? {
        guard let data = svgString.data(using: .utf8) else { return nil }
        let svgImage = SVGKImage(data: data)
        
        if let size = size {
            svgImage?.size = size
        }
        
        var image = svgImage?.uiImage
        
        if let tintColor = tintColor {
            image = image?.withRenderingMode(.alwaysTemplate)
        }
        
        return image
    }
    
    static func render(named name: String, size: CGSize? = nil, tintColor: UIColor? = nil) -> UIImage? {
        let svgImage = SVGKImage(named: name)
        
        if let size = size {
            svgImage?.size = size
        }
        
        var image = svgImage?.uiImage
        
        if let tintColor = tintColor {
            image = image?.withRenderingMode(.alwaysTemplate)
        }
        
        return image
    }
}

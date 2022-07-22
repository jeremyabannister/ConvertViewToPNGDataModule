//
//  convert_view_to_png_data.swift
//  
//
//  Created by Jeremy Bannister on 7/23/22.
//

///
#if os(macOS)
public extension View {
    
    ///
    func convertToPNGData (size: CGSize) -> Data? {
        let controller = NSHostingController(rootView: self)
        let view = controller.view
        view.frame.size = size
        return view.convertToPNGData()
    }
}
#endif

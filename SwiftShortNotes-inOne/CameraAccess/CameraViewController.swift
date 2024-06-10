//
//  CameraViewController.swift
//  SwiftShortNotes-inOne
//
//  Created by Dogu on 11.06.2024.
//
import SwiftUI
import UIKit

struct CameraView: View {
    @Binding var showCamera: Bool
    @Binding var capturedImage: UIImage?
    
    var body: some View {
        CameraViewController(showCamera: $showCamera, capturedImage: $capturedImage)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CameraViewController: UIViewControllerRepresentable {
    @Binding var showCamera: Bool
    @Binding var capturedImage: UIImage?
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: CameraViewController
        
        init(parent: CameraViewController) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.capturedImage = image
            }
            parent.showCamera = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.showCamera = false
        }
    }
}

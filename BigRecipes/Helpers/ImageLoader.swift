//
//  ImageLoader.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation
import Foundation
import SwiftUI
import Combine
import Foundation

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private let url: URL
    
    private var cancellable: AnyCancellable?
    
    deinit {
        cancellable?.cancel()
    }

    init(url: URL) {
        self.url = url
    }
    
    func load() {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
        .map { UIImage(data: $0.data) }
        .replaceError(with: nil)
        .receive(on: DispatchQueue.main)
        .assign(to: \.image, on: self)
    }

    func cancel() {
        cancellable?.cancel()
    }
}

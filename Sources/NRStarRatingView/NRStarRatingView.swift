// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI

public struct NRStarRatingView: View {
    @Binding public var rating: Int
    public let maxRating: Int

    public init(rating: Binding<Int>, maxRating: Int) {
        self._rating = rating
        self.maxRating = maxRating
    }

    private func starImage(for index: Int) -> Image {
        return index < rating ? Image(systemName: "star.fill") : Image(systemName: "star")
    }

    public var body: some View {
        HStack {
            ForEach(0..<maxRating, id: \.self) { index in
                starImage(for: index)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .onTapGesture {
                        rating = index + 1
                    }
            }
        }
        .foregroundColor(.yellow)
    }
}

# NRStarRatingView

A SwiftUI component for displaying and interacting with star ratings. This package provides a customizable view to display star ratings and allows users to select a rating by tapping on the stars.

## Features

- Customizable number of stars
- Interactive star selection
- Easy integration with SwiftUI projects

## Installation

### Using Swift Package Manager

You can add `NRStarRatingView` to your SwiftUI project using Swift Package Manager.

1. Open your Xcode project.
2. Go to `File` > `Add Packages...`.
3. Enter the repository URL for the `NRStarRatingView` package, or if it's local, use the path to your package directory.
4. Select the package and add it to your project.

### Manual Installation

If you prefer to integrate the package manually, follow these steps:

1. Download or clone the repository from GitHub.
2. Drag the `Sources` folder into your Xcode project.
3. Import the `NRStarRatingView` module where needed.

## Usage

To use `NRStarRatingView`, follow these steps:

1. **Import the package:**

    ```swift
    import SwiftUI
    import NRStarRatingView
    ```

2. **Add the `NRStarRatingView` to your SwiftUI view:**

    ```swift
    struct ContentView: View {
        @State private var rating: Int = 0

        var body: some View {
            VStack {
                NRStarRatingView(rating: $rating, maxRating: 5)
                Text("Rating: \(rating)")
                    .font(.headline)
                    .padding()
            }
            .padding()
        }
    }
    ```

3. **Customize the view as needed:**

    - Adjust `maxRating` to change the number of stars.
    - Customize the appearance of the stars through SwiftUI modifiers.

## Example

Here's a complete example of using `NRStarRatingView` in a SwiftUI application:

```swift
import SwiftUI
import NRStarRatingView

struct ContentView: View {
    @State private var rating: Int = 0

    var body: some View {
        VStack {
            NRStarRatingView(rating: $rating, maxRating: 5)
            Text("Rating: \(rating)")
                .font(.headline)
                .padding()
        }
        .padding()
    }
}

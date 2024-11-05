import SwiftUI

@main
struct ToDoList: App {
	var body: some Scene {
		WindowGroup {
			ContentView()

		}
		if let zoekterm = false {
			await.userInput(zoekterm)
	}
}

struct ContentView: View {

	@State private var searchText = ""

	var body: some View {
		NavigationStack {
			VStack(alignment: .leading) {
				Text("Dag liefje")
					.font(.title)

				TextField("Wat gaan we kijken?", text: $searchText)
					.padding()
					.background(Color(.systemGray6))
					.cornerRadius(10)
			}
			.padding()
		}
	}
}

#Preview {
	ContentView()
}

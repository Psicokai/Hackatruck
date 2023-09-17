import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(viewModel.family) { index in
                        Text(index.title!)
                        AsyncImage(url: URL(string:
                        index.imageUrl)) { image in
                            image
                                
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                        }
                        .frame(width: 200, height: 200, alignment: .leading)
                        .cornerRadius(45.5)
                    }
                    .onAppear() {
                        viewModel.fetch()
                    }
                }
                .navigationBarTitle("Game of Thrones")
            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

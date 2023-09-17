import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("ESTACIONAMENTO")
                ForEach(viewModel.chars , id: \._id){esta in
                    VStack{
                        Text(esta.nome!)
                        Text(esta.endereco!)
                        Text(esta.vaga!)
                    }
                }
            }
        }
        .onAppear() {
            viewModel.fetch()
        }
        
    }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

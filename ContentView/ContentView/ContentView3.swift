import SwiftUI

struct ContentView3: View {
    @State private var nome: String = ""
    @State private var showingAlert = false
    var body: some View {
        
        
        ZStack {
            
            Spacer()
            
            Image("camiao")
                .resizable()
                .frame(width: 650.0)
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                Text("Bem Vindo, \(nome)")
                    .font(.title)
                    .fontWeight(.bold)
                
                TextField("Digite seu nome aqui ", text: $nome)
                    .padding(.leading, 230.0)
                    
               
                Spacer()
                
                Image("logo")
                    .resizable()
                    .frame(width: 200.0, height: 100.0)
                Image("truck")
                    .resizable()
                    .frame(width: 200.0, height: 100.0)
                
                Spacer()
                
                
                Button("Entrar") {
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("ALERTA"), message: Text("Você irá iniciar o desafio aula agora."), dismissButton: .default(Text("Vamos lá")))
                }
            }
        }
        
        
    }
    
    struct ContentView3_Previews: PreviewProvider {
        static var previews: some View {
            ContentView3()
        }
    }
}

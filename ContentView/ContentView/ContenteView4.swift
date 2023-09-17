import SwiftUI
    
struct ContentView4: View {
    @State private var altura = ""
    @State private var peso = ""
    @State private var resultado = ""
    @State private var IMC = ""
    @State private var classificacao = ""
    @State private var colores = ""
    var body: some View {
        
        
        
        ZStack {
            
            Color(colores) .ignoresSafeArea()
            
            VStack {
                Text("CALCULADORA DE IMC")
                    .font(.title)
                    .fontWeight(.bold)
                
                TextField("Digite sua altura aqui ", text: $altura)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                TextField("Digite seu nome aqui ", text: $peso)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    if let pesoDouble = Double(peso), let alturaDouble = Double(altura), alturaDouble > 0 {
                        let imc = pesoDouble / (alturaDouble  * alturaDouble);
                        resultado = String(format: "Seu IMC é %.2f", imc)
                        
                        if imc < 18.5 {                        classificacao = "Baixo Peso"
                            colores = "baixo"
                            
                        } else if imc < 18.5 && imc <= 24.99 {                        classificacao = "Normal"
                            colores = "normal"
                            
                        } else if imc < 25 && imc <= 29.99 {                        classificacao = "Sobrepeso"; colores = "sobrepeso"
                            
                        } else {
                            classificacao = "Obesidade"                    }
                            colores = "obesidade"
                       } else {
                       
                        resultado = "Preencha os valores corretamente."}}) {
                            Text("Calcular IMC")                    .font(.headline)           }            .padding().foregroundColor(.black).accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/);                        Text(resultado)                .font(.subheadline)                .padding();                        Text(classificacao)
                
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Spacer()
                Image("tabela") .resizable()
                    .scaledToFit()
                
            }
        }
        
        Image("tabela").resizable().scaledToFit().scaledToFill()
        
    }
    
    struct ContentView3_Previews: PreviewProvider {
        static var previews: some View {
            ContentView4()
        }
    }
    
}

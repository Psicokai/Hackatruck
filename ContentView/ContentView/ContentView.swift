import SwiftUI

struct ContentView: View {
    // var
    var body: some View {
        VStack {
            Image("camiao") .resizable() .scaledToFit()
            
            Text("Hacktruck").fontWeight(.bold).foregroundColor(Color.blue)
            
            HStack {
                
                Text("Maker").foregroundColor(Color.yellow)
                Text("Spacer").foregroundColor(Color.red)
            }
    
        }
        
        .padding()
    }
}

// joga pro preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

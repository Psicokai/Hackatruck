import SwiftUI

struct ContentView1: View {
    var body: some View {
        NavigationView{
            List(1...50, id: \.self){
                Text("Lista \($0)")
            }
        }
        
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}

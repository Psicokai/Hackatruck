import SwiftUI

struct ContentView2: View {
    let icones = ["hare.fill","tortoise.fill","pawprint.fill","ant.fill","ladybug.fill"]
    var body: some View {
        ScrollView{
            VStack{
                ForEach(icones,id: \.self){ index in
                    Image(systemName: "\(index)").font(.system(size:150))
                        .padding()
                }
            }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

import SwiftUI

struct ContentView2: View {
    var body: some View {
        VStack {
            Image("camiao") .resizable() .scaledToFit()
            Spacer()
            Image("camiao") .resizable() .scaledToFit() .clipShape(Circle()).overlay(Text("Hackatruck")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-55.0/*@END_MENU_TOKEN@*/))
            Spacer()
            HStack {
                Text("Maker")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.yellow)
                    .background(Color.black)
                    .padding(.bottom, 50)
                
                Text("Spacer")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                    .padding(.bottom, 50)
                
            }
            .frame(width: 200, height: 120)

            .background(Color.black)
            }
        }
        }

struct D2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

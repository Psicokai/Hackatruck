
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContentView1().font(.system(size: 30,weight: .regular,design: .rounded))
                .tabItem{
                    Image(systemName: "person.line.dotted.person.fill")
                    Text("home")
                }.badge(2)
            ContentView2().font(.system(size: 30,weight: .regular,design: .rounded))
                .tabItem{
                    Image(systemName: "photo")
                }
            ContentView4().font(.system(size: 30,weight: .regular,design: .rounded))
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            ContentView4().font(.system(size: 30,weight: .regular,design: .rounded))
                .tabItem{
                    Image(systemName: "person.crop.circle")
                }
            ContentView4().font(.system(size: 30,weight: .regular,design: .rounded))
                .tabItem{
                    Image(systemName: "person.crop.circle")
                }
            

        }
        .padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

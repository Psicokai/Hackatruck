import SwiftUI
import MapKit

struct ContentView: View {
    struct Location: Identifiable {
        let id = UUID()
        let nome: String
        let coordinate: CLLocationCoordinate2D
        let desc: String
        
    }

    @State var sheet = false;
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -23.550453, longitude: -46.633911), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    let locations = [
        Location(nome: " Centro ", coordinate: CLLocationCoordinate2D(latitude: -23.550453, longitude: -46.633911), desc: " Zona Sul, a melhor zona de  "),
        
        Location(nome: " Zona Sul ", coordinate: CLLocationCoordinate2D(latitude: -23.654167, longitude: -46.659167),desc: " bla bla bla"),
        
        Location(nome: "Zona Norte ", coordinate: CLLocationCoordinate2D(latitude: -23.480780, longitude: -46.668723),desc: " bla bla bla"),
        
        Location(nome: " Zona Leste", coordinate: CLLocationCoordinate2D(latitude: -23.561483, longitude: -46.560666),desc: "bla bla bla"),
        
        Location(nome: " Zona Oeste ", coordinate: CLLocationCoordinate2D(latitude: -23.563487, longitude: -46.721010),desc: " bla bla bla "),
        
        
    ]
    
@State var aux = Location(nome: "Centro ", coordinate: CLLocationCoordinate2D(latitude: -23.550453, longitude: -46.633911),desc: " bla bla bla")

    
    var body: some View {
        VStack(alignment: .center) {
            
            Text(" Regiões do Estado de São Paulo ")
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
       
            Text(aux.nome)
                Map(coordinateRegion: $region, annotationItems: locations) {  location in
                    
                    MapAnnotation(coordinate: location.coordinate) {
                         
                        Circle() .fill(.black).background().onTapGesture  {
                                    
                                    aux = location
                                    sheet = true

                            }
                            .frame(width: 50, height: 20)
                            
                        
                        
                    }
                }.sheet(isPresented: $sheet){
                    Text(aux.desc)
                }
                
                
          
 
            ScrollView(.horizontal){
                
            
            HStack(){

                
                ForEach(locations){ btn in
                    Button(btn.nome){
                        
                        aux = btn
                        region = MKCoordinateRegion(center: btn.coordinate,span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
                    } .frame(width:100) .background(.blue) .foregroundColor(.white).cornerRadius(20.0)
                    
                }
                
                
                }.padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import Foundation

struct Estacionamento: Decodable,Hashable{
    let _id: String?
    let _rev: String?
    let nome: String?
    let endereco:String?
    let vaga:String?
    let image: String?
    let carro : Carro
}

struct Carro : Decodable,Hashable{
    let modelo: String?
    let ano: String?
    let cor: String?
    let preco : String?
    
}
class ViewModel : ObservableObject {
    
    @Published var chars : [Estacionamento] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/leoREAD" ) else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
}

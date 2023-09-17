import Foundation

struct got: Codable, Identifiable {
    let id: Int?
    let firstName: String?
    let lastName: String?
    let fullName:String?
    let title:String?
    let family: String?
    let image: String?
    let imageUrl:String
    
    let freetogame_profile_url: String?
}
class ViewModel : ObservableObject {
    @Published var family : [got] = []
    func fetch(){
        guard let url = URL(string: "https://thronesapi.com/api/v2/Characters" ) else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let parsed = try JSONDecoder().decode([got].self, from: data)
                
                DispatchQueue.main.async {
                    self?.family = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
}

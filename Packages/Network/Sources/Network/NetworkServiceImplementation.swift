import Shared

public class NetworkServiceImplementation: NetworkService {
    public init() {}

    public func fetchData(from url: URL, completion: @escaping (Data?) -> Void) {
        // Networking logic
        let data = Data() // Dummy data for example
        completion(data)
    }
}

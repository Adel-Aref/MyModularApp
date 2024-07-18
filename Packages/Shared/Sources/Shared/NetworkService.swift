public protocol NetworkService {
    func fetchData(from url: URL, completion: @escaping (Data?) -> Void)
}

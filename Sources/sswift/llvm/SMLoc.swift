
struct SMLoc {
    let value: Any?
    
    var isValid: Bool {
        value != nil
    } 
}

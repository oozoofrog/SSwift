
enum TokenKind: Int, Equatable, CaseIterable {
    case unknown
    case eof

    case kw_int
    case kw_var

    case comma      // ,
    case colon      // :
    case semi       // ;
    case equal      // =
    case l_paren    // (
    case r_paren    // )

    var numTokens: Int {
        TokenKind.allCases.count
    }
}

struct Token {
    var kind: TokenKind
    var location: SMLoc
    var text: String

    func size() -> Int {
        text.count
    }

    mutating func startToken() {
        kind = .unknown
        location = SMLoc(value: nil)
        text = ""
    }
}

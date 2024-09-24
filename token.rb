module Token

    ILLEGAL = "ILLEGAL"
    EOF = "EOF"

    IDENT = "IDENT"
    INT = "INT"

    ASSIGN = "ASSIGN"
    PLUS = "PLUS"
    MINUS = "MINUS"
    BANG = "BANG"
    ASTERISK = "ASTERISK"
    SLASH = "SLASH"

    LESSERTHAN = "LT"
    GREATERTHAN = "GT"

    EQ = "EQ"
    NOTEQ = "NOTEQ"

    COMMA = "COMMA"
    SEMICOLON = "SEMICOLON"

    LPAREN = "LPAREN"
    RPAREN = "RPAREN"
    LBRACE = "LBRACE"
    RBRACE = "RBRACE"

    FUNCTION = "FUN"
    VAR = "VAR"
    TRUE = "TRUE"
    FALSE = "FALSE"
    IF = "IF"
    ELSE = "ELSE"
    RETURN = "RETURN"

    class token
        def init(type, literal)
            @type = type
            @literal = literal
        end
    end

end 
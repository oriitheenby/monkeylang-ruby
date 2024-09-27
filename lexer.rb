require 'spec_helper'

require_relative 'Token'

module Lexer

    class Lexr
        def init(input)
            @input = input
            @position = 0
            @read_pos = 0
            @ch = ''
        end

        def read_char()
            if self.read_pos >= len(self.input) then
                self.ch = 0
            else
                self.ch = self.input[self.read_pos]
            end
            self.position = self.read_pos
            self.read_pos += 1
        end

        def next_token
            tok = Token.token

            case self.ch
            when '='
                tok = Token.token.new(Token::EQ, self.ch)
            when '+'
                tok = Token.token.new(Token::PLUS, self.ch)
            when '-'
                tok = Token.token.new(Token::MINUS, self.ch)
            when ';'
                tok = Token.token.new(Token::SEMICOLON, self.ch)
            when '('
                tok = Token.token.new(Token::LPAREN, self.ch)
            when ')'
                tok = Token.token.new(Token::RPAREN, self.ch)
            when '{'
                tok = Token.token.new(Token::LBRACE, self.ch)
            when '}'
                tok = Token.token.new(Token::RBRACE, self.ch)
            when 0
                tok = Token.token.new(Token::EOF, "")
            else
                tok = Token.token.new(Token::ILLEGAL, self.ch)
            end
            self.read_char
            return tok
        end
    end

    def new(input) *Lexr
        l = Lexr.new(input)
        l.read_char()
        return l
    end
end

RSpec.describe Lexer do
    it 'returns the right tokens' do
        l = Lexer.Lexr.new('{}();-+=')
        correct = Token.token.new(Token::LBRACE, self.ch)
        expect(Lexer.Lexr.next_token).to eq()
    end
end

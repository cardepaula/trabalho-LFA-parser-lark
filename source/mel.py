

from lark import Lark


def mel_parser(e: str):
    mel_grammar = Lark('''
        ?start: expr

        ?expr: term (("+"|"-") term)*

        ?term: factor (("*"|"/"|"//"|"%") factor)*

        ?factor: base ("^" factor)?

        ?base: ("+" | "-") base
            | number
            | "(" expr ")"

        number: digit+ "."? digit* (("E"|"e") ("+"|"-")? digit+)?

        digit: /[0-9]/

        %import common.WS

        %ignore WS
    ''')

    return mel_grammar.parse(e)
# end def mel_parse

def main():

    expressao: str = input("Digite a expressão (ou exit para sair) > ")
    while (expressao != "exit"):
        try:
            tree = mel_parser(expressao)
            print("Expressão válida!\n", tree)
        except Exception as e:
            print("Expressão inválida")
        # end try/except
        expressao: str = input("Digite a expressão ou exit para sair > ")
    # end while
# end def main


if __name__ == '__main__':
    main()
# end if

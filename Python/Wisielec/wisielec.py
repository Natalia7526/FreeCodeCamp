import sys

# liczba prób
no_of_tries = int(input("Podaj liczbę prób: "))
word = "test"

used_letters = []
user_word = []

def find_indexes(word, letter):
    indexes = []

    for index, letter_in_word in enumerate(word):
        if letter == letter_in_word:
            indexes.append(index)

    return indexes

def show_state_of_game():
    print()
    print(user_word)
    print("Pozostało prób: ", no_of_tries)
    print("Użyte litery: ", used_letters)
    print()

# inaczej for letter in word
for _ in word:
    user_word.append("_")

while True:
    letter = input("Podaj literę: ")


    found_indexes = find_indexes(word, letter)
    if letter.isalpha() == False or len(letter) > 1:
        print("Podano niedopuszczalny znak/znaki. Podaj literę!")
    else:
        if letter in used_letters:
            print("Już wykorzystano literę: ", letter)
        elif len(found_indexes) == 0:
            print("Nie ma takiej litery.")
            no_of_tries -= 1
            used_letters.append(letter)

            if no_of_tries == 0:
                print("Koniec gry")
                # kończenie programu bez występowania żadnego błędu
                sys.exit(0)


        else:
            for index in found_indexes:
                user_word[index] = letter
            used_letters.append(letter)

            # definiowanie pustego stringa "", a następnie konkatenacja liter w słowie
            if "".join(user_word) == word:
                print("Gratulacje, to jest to słowo!")
                sys.exit(0)


    show_state_of_game()
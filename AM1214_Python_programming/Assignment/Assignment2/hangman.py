
# Hangman Game
# -----------------------------------
# Helper code
# You don't need to understand this helper code,
# but you will have to know how to use the functions
# (so be sure to read the docstrings!)
import random
import string

WORDLIST_FILENAME = "words.txt"


def load_words():
    """
    Returns a list of valid words. Words are strings of lowercase letters.

    Depending on the size of the word list, this function may
    take a while to finish.
    """
    print("Loading word list from file...")
    # inFile: file
    inFile = open(WORDLIST_FILENAME, 'r')
    # line: string
    line = inFile.readline()
    # wordlist: list of strings
    wordlist = line.split()
    print("  ", len(wordlist), "words loaded.")
    return wordlist


def choose_word(wordlist):
    """
    wordlist (list): list of words (strings)

    Returns a word from wordlist at random
    """
    return random.choice(wordlist)

# end of helper code

# -----------------------------------


# Load the list of words into the variable wordlist
# so that it can be accessed from anywhere in the program
wordlist = load_words()
#random_word = choose_word(wordlist)


def is_word_guessed(secret_word, letters_guessed):
    '''
    secret_word: string, the word the user is guessing; assumes all letters are
      lowercase
    letters_guessed: list (of letters), which letters have been guessed so far;
      assumes that all letters are lowercase
    returns: boolean, True if all the letters of secret_word are in letters_guessed;
      False otherwise
    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    '''
    flag variable is used to define binary true or false for each iteration
    if for any letter_guessed is not in secret_word, then the flag is 1 and the function is exited.
    if all the letters_guessed are in secret_word, then flag is 0 and returns True
    '''
    flag = 0
    for i in secret_word:
        for j in letters_guessed:
            if i == j:
                flag = 0
                break
            else:
                flag = 1
        if flag == 1:
            return False
            exit(0)
    if flag == 0:
        return True


def get_guessed_word(secret_word, letters_guessed):
    '''
    secret_word: string, the word the user is guessing
    letters_guessed: list (of letters), which letters have been guessed so far
    returns: string, comprised of letters, underscores (_), and spaces that represents
      which letters in secret_word have been guessed so far.
    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    '''
    flag variable is used to define binary true or false for each iteration
    result variable is used for storing the guessed_word
    if the letter_guessed in secret_word, then add the letter to result. if not, the value will be '_ '
    '''
    flag = 0
    result = ''
    for i in secret_word:
        for j in letters_guessed:
            if i == j:
                flag = 0
                break
            else:
                flag = 1
        if flag == 0:
            result += i
        else:
            result += '_ '
    return result


def get_available_letters(letters_guessed):
    '''
    letters_guessed: list (of letters), which letters have been guessed so far
    returns: string (of letters), comprised of letters that represents which letters have not
      yet been guessed.
    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    '''
    all_bets stores all alphabets in lowercase
    flag variable is used to define binary true or false for each iteration
    result variable is used for storing the available letters from all alphabets after comparing with letters_guessed
    if flag is 0, then the alphabet will not be stored in the result
    if flag is 1, then the alphabet will be stored in the result
    final available letters will be printed after each iteration
    '''
    allBets = string.ascii_lowercase
    flag = 0
    result = ''
    for i in allBets:
        for j in letters_guessed:
            if i == j:
                flag = 0
                break
            else:
                flag = 1
        if flag == 0:
            continue
        else:
            result = result + i
    return result


def hangman(secret_word):
    '''
    secret_word: string, the secret word to guess.

    Starts up an interactive game of Hangman.

    * At the start of the game, let the user know how many 
      letters the secret_word contains and how many guesses s/he starts with.

    * The user should start with 6 guesses

    * Before each round, you should display to the user how many guesses
      s/he has left and the letters that the user has not yet guessed.

    * Ask the user to supply one guess per round. Remember to make
      sure that the user puts in a letter!

    * The user should receive feedback immediately after each guess 
      about whether their guess appears in the computer's word.

    * After each guess, you should display to the user the 
      partially guessed word so far.

    Follows the other limitations detailed in the problem write-up.
    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    '''
    all the guessed letters will be stored in letters_guessed
    letter_check is specifically used to check if the letter is alphabet or not and also for calculating total score
    flag variable is used to define binary true or false for each iteration
    '''
    letters_guessed = ' '
    letter_check = ''
    flag = 0
    # uniqueLetter function is defined for calculating total score

    def uniqueLetter(letter_check):
        uniq_list = []
        for i in letter_check:
            if i not in uniq_list:
                uniq_list.append(i)
        return len(uniq_list)
    print("Welcome to the game Hangman!")
    print(f"I am thinking of a word that is {len(secret_word)} letters long")
    print("-----------------------------------------")
    rnge = 6
    warnings = 3
    while range(rnge):
        print(f'You have {warnings} warnings left')
        print(f'You have {rnge} guesses left')
        print(f'Available Letters:{get_available_letters(letters_guessed)}')
        letter = input('Please guess a letter:')
        letters_guessed += letter
        for j in secret_word:
            if not letter.isalpha():
                flag = 3
                break
            elif j != letter:
                flag = 1
                continue
            elif j in letter_check:
                flag = 2
                break
            else:
                flag = 0
                break
        letter_check += letter
        if flag == 1:
            print(
                f'Oops! That letter is not in my word: {get_guessed_word(secret_word, letters_guessed)}')
            print("----------------------------------------------------")
            rnge -= 1
            continue
        elif flag == 2:
            if warnings == 0:
                rnge -= 1
                exit
            warnings -= 1
            print(
                f"Oops! You've already guessed that letter. You now have {warnings} warnings:{get_guessed_word(secret_word, letters_guessed)} ")
        elif flag == 3:
            if warnings == 0:
                rnge -= 1
                exit
            warnings -= 1
            print(
                f"Oops! That is not a valid letter. You have {warnings} warnings left ")
            print("----------------------------------------------------")
        else:
            print(
                f"Good guess: {get_guessed_word(secret_word, letters_guessed)}")
            print("----------------------------------------------------")
            rnge = rnge
            if is_word_guessed(secret_word, letters_guessed) == True:
                total_score = rnge * uniqueLetter(letter_check)
                print('Congratulations. You won!!!')
                print(f'Your total score for this game is: {total_score}')
                exit(0)
    print(f'Sorry, you ran out of guesses. The word was {secret_word}')


# When you've completed your hangman function, scroll down to the bottom
# of the file and uncomment the first two lines to test
# (hint: you might want to pick your own
# secret_word while you're doing your own testing)


# -----------------------------------


def match_with_gaps(my_word, other_word):
    '''
    my_word: string with _ characters, current guess of secret word
    other_word: string, regular English word
    returns: boolean, True if all the actual letters of my_word match the 
        corresponding letters of other_word, or the letter is the special symbol
        _ , and my_word and other_word are of the same length;
        False otherwise: 
    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    '''
    replace empty spaces with empty string using replace method
    flag variable is used to define binary true or false for each iteration
    '''
    my_word = my_word.replace(' ', '')
    flag = 0
    '''
    if length of the other_word is not equal to my_word, then exit
    if value at index of my_word is same as value at index of other_word, then flag is 0
    if value at index of my_word is '_' and value at index of other_word is alphabet, then flag is 0
    for all th rest of conditions, the flag is 1
    if flag is 0, then return true, else return false
    '''
    if len(my_word) != len(other_word):
        return False
        exit(0)
    for i in range(len(my_word)):
        if my_word[i] == other_word[i]:
            flag = 0
        elif my_word[i] == '_' and other_word[i].isalpha():
            flag = 0
        else:
            flag = 1
    if flag == 0:
        return True
    else:
        return False


def show_possible_matches(my_word):
    '''
    my_word: string with _ characters, current guess of secret word
    returns: nothing, but should print out every word in wordlist that matches my_word
             Keep in mind that in hangman when a letter is guessed, all the positions
             at which that letter occurs in the secret word are revealed.
             Therefore, the hidden letter(_ ) cannot be one of the letters in the word
             that has already been revealed.

    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    '''
    replace empty spaces with empty string using replace method
    res list is used for storing the final result
    flag variable is used to define binary true or false for each iteration
    '''
    my_word = my_word.replace(' ', '')
    res = []
    flag = 0
    '''
    for each word in word list, if the length of the word is not equal to my_word, then dont store the word in res list.
    if each index value matches with index of my_word ,then store word in the res list
    also if index value of my_word is '_' and the index value of word is alphabet, then store the word in the list
    if for other conditions, flag is 1, then do not store in the list
    '''
    for word in wordlist:
        if len(word) != len(my_word):
            flag = 1
            continue
        for i in range(len(my_word)):
            if my_word[i] == word[i]:
                flag = 0
            elif my_word[i] == '_' and word[i].isalpha():
                flag = 0
            else:
                flag = 1
                break
        if flag == 0:
            res.append(word)

    return res


def hangman_with_hints(secret_word):
    '''
    secret_word: string, the secret word to guess.

    Starts up an interactive game of Hangman.

    * At the start of the game, let the user know how many 
      letters the secret_word contains and how many guesses s/he starts with.

    * The user should start with 6 guesses

    * Before each round, you should display to the user how many guesses
      s/he has left and the letters that the user has not yet guessed.

    * Ask the user to supply one guess per round. Make sure to check that the user guesses a letter

    * The user should receive feedback immediately after each guess 
      about whether their guess appears in the computer's word.

    * After each guess, you should display to the user the 
      partially guessed word so far.

    * If the guess is the symbol *, print out all words in wordlist that
      matches the current guessed word. 

    Follows the other limitations detailed in the problem write-up.
    '''
    # FILL IN YOUR CODE HERE AND DELETE "pass"
    '''
    all the guessed letters will be stored in letters_guessed
    letter_check is specifically used to check if the letter is alphabet or not and also for calculating total score
    flag variable is used to define binary true or false for each iteration
    '''
    letters_guessed = ' '
    letter_check = ''
    flag = 0
    # uniqueLetter function is defined for calculating total score

    def uniqueLetter(letter_check):
        uniq_list = []
        for i in letter_check:
            if i not in uniq_list:
                uniq_list.append(i)
        return len(uniq_list)

    print("Welcome to the game Hangman!")
    print(f"I am thinking of a word that is {len(secret_word)} letters long")
    print("-----------------------------------------")
    rnge = 6
    warnings = 3
    while range(rnge):
        print(f'You have {warnings} warnings left')
        print(f'You have {rnge} guesses left')
        print(f'Available Letters:{get_available_letters(letters_guessed)}')
        letter = input('Please guess a letter:')
        letters_guessed += letter
        for j in secret_word:
            if j != letter:
                flag = 1
                continue
            elif j in letter_check:
                flag = 2
                break
            elif not letter.isalpha():
                flag = 3
                break
            else:
                flag = 0
                break
        letter_check += letter
        if flag == 1:
            if letter == '*':  # '*' gives you list of hints that matches your letters_guessed
                print("Possible word matches are:")
                print(show_possible_matches(
                    get_guessed_word(secret_word, letters_guessed)))
                print('-----------------------------------')
                continue
            print(
                f'Oops! That letter is not in my word: {get_guessed_word(secret_word, letters_guessed)}')
            print("----------------------------------------------------")
            rnge -= 1
            continue
        elif flag == 2:
            if warnings == 0:
                rnge -= 1
                exit
            warnings -= 1
            print(
                f"Oops! You've already guessed that letter. You now have {warnings} warnings:{get_guessed_word(secret_word, letters_guessed)} ")
        elif flag == 3:
            if warnings == 0:
                rnge -= 1
                exit
            warnings -= 1
            print(
                f"Oops! That is not a valid letter. You have {warnings} warnings left ")
            print("----------------------------------------------------")
        else:
            print(
                f"Good guess: {get_guessed_word(secret_word, letters_guessed)}")
            print("----------------------------------------------------")
            rnge = rnge
            if is_word_guessed(secret_word, letters_guessed) == True:
                total_score = rnge * uniqueLetter(letter_check)
                print('Congratulations. You won!!!')
                print(f'Your total score for this game is: {total_score}')
                exit(0)
    print(f'Sorry, you ran out of guesses. The word was {secret_word}')


# When you've completed your hangman_with_hint function, comment the two similar
# lines above that were used to run the hangman function, and then uncomment
# these two lines and run this file to test!
# Hint: You might want to pick your own secret_word while you're testing.

if __name__ == "__main__":
    # pass

    # To test part 2, comment out the pass line above and
    # uncomment the following two lines.

    #secret_word = choose_word(wordlist)
    # hangman(secret_word)

    ###############

    # To test part 3 re-comment out the above lines and
    # uncomment the following two lines.

    secret_word = choose_word(wordlist)
    hangman_with_hints(secret_word)

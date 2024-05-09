import sys

print("Welcome to our little Bioinformatics Trivia game!")

while True: 
    play_or_nah = input("Do you dare to enter? ").upper() 
    if play_or_nah == "NO":
        sys.exit() 
    elif play_or_nah == "YES":
        break
    else:
        print("Sorry, I didn't catch that.\nPlease print 'yes' or 'no'.")

print("Riveting! Manifesting you good memory while recalling information...")

        

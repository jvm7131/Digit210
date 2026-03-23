import nltk
import matplotlib
import matplotlib.pyplot as plt

with open("avatarSpeeches.txt", 'r', encoding='utf-8') as file:
    text=file.read() 
    textTokens=text.split() 
 
    lowerCaseTokens = [w.lower() for w in textTokens]
    
    print(set(lowerCaseTokens))

   
    avatarTextObject = nltk.Text(lowerCaseTokens)

    print(f"Avatar as NLTK Text Object = {avatarTextObject}")
  
    avatarTextObject.dispersion_plot(["avatar", "know", "run", "ran", "fly", "flying", "flew"])
    plt.show()
# Lexical diversity
lex_div = len(set(lowerCaseTokens)) / len(lowerCaseTokens)
print("Lexical Diversity:", lex_div)

# Most common words
fdist = nltk.FreqDist(lowerCaseTokens)
print("Most Common Words:", fdist.most_common(10))
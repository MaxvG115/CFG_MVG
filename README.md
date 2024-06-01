# CFG_MVG

This is a simple chatbot program implemented using lex and yacc. The chatbot can recognize certain patterns in the input and respond accordingly. This README file explains the changes made to extend the functionality of the chatbot to handle more types of user queries.

## Changes Made

### 1. Updated chatbot.l

The lexer file (chatbot.l) was updated to recognize new patterns related to asking the chatbot's name, inquiring about the weather, and asking how the chatbot is doing. The following patterns were added:

- what is your name
- what is the weather
- how are you

### 2. Updated chatbot.y

The parser file (chatbot.y) was updated to define new tokens and add corresponding rules to handle the new patterns recognized by the lexer. The following tokens and rules were added:

- Token NAME to handle "what is your name"
- Token WEATHER to handle "what is the weather"
- Token HOWAREYOU to handle "how are you"

### Run it with ./chatbot in the project's directory

%{
#include <stdio.h>
#include <time.h>

void yyerror(const char *s);
int yylex(void);
%}

%token HELLO GOODBYE TIME NAME WEATHER HOWAREYOU

%%

chatbot : greeting
        | farewell
        | query
        ;

greeting : HELLO { printf("Chatbot: Hello! How can I help you today?\n"); }
         ;

farewell : GOODBYE { printf("Chatbot: Goodbye! Have a great day!\n"); }
         ;

query : TIME { 
            time_t now = time(NULL);
            struct tm *local = localtime(&now);
            printf("Chatbot: The current time is %02d:%02d.\n", local->tm_hour, local->tm_min);
         }
       | NAME {
            printf("Chatbot: My name is Maximilian Jr.\n");
         }
       | WEATHER {
            printf("Chatbot: I'm unable to check the weather right now, try visiting specialized weather websites or using a weather app.\n");
         }
       | HOWAREYOU {
            printf("Chatbot: I'm just a bunch of code, so I don't have feelings, but I can still help!:)\n");
         }
       ;

%%

int main() {
    printf("Chatbot: Hi! You can greet me, ask for the time, ask for my name, inquire about the weather, ask how I am, or say goodbye.\n");
    while (yyparse() == 0) {
        // Loop until end of input
    }
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Chatbot: I didn't understand that.\n");
}
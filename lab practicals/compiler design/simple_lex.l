%{
int word_count = 0;
int space_count = 0;
int line_count = 0;
int char_count = 0;
int tab_count = 0;
%}

%%
[a-zA-Z]+   { word_count++; }
[ \t]       { space_count++; }
\n          { line_count++; }
.           { char_count++; }
\t          { tab_count++; }
%%

int main() {

  printf("Enter the Sentence : ");
    yylex();
    
    printf("Words: %d\n", word_count);
    printf("Spaces: %d\n", space_count);
    printf("Lines: %d\n", line_count);
    printf("Characters: %d\n", char_count);
    printf("Tabs: %d\n", tab_count);

    return 0;
}

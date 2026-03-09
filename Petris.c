// Petris.c
// Tanish Gheewala - Spring 2024
// Petris is Tetris with Pentominoes

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <conio.h>
#include <time.h>
#include <stdbool.h>
#include <windows.h>

#define boardHeight 14
#define boardWidth 13
#define true 1
#define false 0

char Board[boardHeight][boardWidth] = {0}, GameOn = true;
unsigned long timer = 500, startTime, endTime, timePlayed;
int decrease = 1000, score = 0, linesCleared = 0;

void clearScreen()
{
#ifdef _WIN32
    system("cls");
#else
    system("clear");
#endif
}

/*
void resetGameState() {
    // Reset the board
    for (int i = 0; i < boardHeight; i++) {
        for (int j = 0; j < boardWidth; j++) {
            Board[i][j] = 0;
        }
    }
    score = 0;
    linesCleared = 0;
    GameOn = true;
}
*/

void updateScore(int linesCleared)
{
    score += linesCleared * 100;
}
void displayStatistics()
{
    endTime = GetTickCount();
    timePlayed = (endTime - startTime) / 1000;
    printf("\nFinal Score: %d\n", score);
    printf("Time Played: %lus\n", timePlayed);
    printf("\n");
}

typedef struct
{
    char **array;
    int width, row, col;
} Pentomino;
Pentomino current;

void boardPrinter()
{
    int i, j;
    for (i = 0; i < current.width; i++)
    {
        for (j = 0; j < current.width; j++)
        {
            if (current.array[i][j])
                Board[current.row + i][current.col + j] = current.array[i][j];
        }
    }
}

const Pentomino globalPieceArray[11] = {
    {(char *[]){(char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}}, 5}, // I Shape
    {(char *[]){(char[]){0, 1, 1, 0, 0}, (char[]){0, 1, 0, 0, 0}, (char[]){0, 1, 1, 0, 0}, (char[]){0, 0, 0, 0, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // U Shape
    {(char *[]){(char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 1, 1, 1, 0}, (char[]){0, 0, 0, 0, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // T Shape
    {(char *[]){(char[]){0, 0, 1, 1, 0}, (char[]){0, 1, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 0, 0, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // F Shape
    {(char *[]){(char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 1, 0}, (char[]){0, 0, 0, 0, 0}}, 4}, // L Shape
    {(char *[]){(char[]){0, 1, 1, 0, 0}, (char[]){0, 1, 1, 0, 0}, (char[]){0, 1, 0, 0, 0}, (char[]){0, 0, 0, 0, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // P Shape
    {(char *[]){(char[]){0, 0, 0, 0, 0}, (char[]){0, 1, 0, 0, 0}, (char[]){0, 1, 0, 0, 0}, (char[]){0, 1, 1, 1, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // V Shape
    {(char *[]){(char[]){0, 0, 0, 0, 0}, (char[]){0, 1, 0, 0, 0}, (char[]){0, 1, 1, 0, 0}, (char[]){0, 0, 1, 1, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // W Shape
    {(char *[]){(char[]){0, 0, 0, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 1, 1, 1, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // X Shape
    {(char *[]){(char[]){0, 0, 0, 0, 0}, (char[]){0, 0, 0, 0, 0}, (char[]){0, 0, 0, 1, 0}, (char[]){0, 1, 1, 1, 1}, (char[]){0, 0, 0, 0, 0}}, 5}, // Y Shape
    {(char *[]){(char[]){0, 0, 0, 0, 0}, (char[]){0, 1, 1, 0, 0}, (char[]){0, 0, 1, 0, 0}, (char[]){0, 0, 1, 1, 0}, (char[]){0, 0, 0, 0, 0}}, 5}, // Z Shape

};

Pentomino pieceCopier(Pentomino piece)
{
    Pentomino new_piece = piece;
    char **pieceCopier = piece.array;
    new_piece.array = (char **)malloc(new_piece.width * sizeof(char *));
    int i, j;
    for (i = 0; i < new_piece.width; i++)
    {
        new_piece.array[i] = (char *)malloc(new_piece.width * sizeof(char));
        for (j = 0; j < new_piece.width; j++)
        {
            new_piece.array[i][j] = pieceCopier[i][j];
        }
    }
    return new_piece;
}

void pieceRemover(Pentomino piece)
{
    int i;
    for (i = 0; i < piece.width; i++)
    {
        free(piece.array[i]);
    }
    free(piece.array);
}

int pieceChecker(Pentomino piece)
{
    char **array = piece.array;
    int i, j;
    for (i = 0; i < piece.width; i++)
    {
        for (j = 0; j < piece.width; j++)
        {
            if ((piece.col + j < 0 || piece.col + j >= boardWidth || piece.row + i >= boardHeight))
            {
                if (array[i][j])
                    return false;
            }
            else if (Board[piece.row + i][piece.col + j] && array[i][j])
                return false;
        }
    }
    return true;
}

void newSpawner()
{
    int pieceIndex = rand() % 11;
    Pentomino new_piece = pieceCopier(globalPieceArray[pieceIndex]);
    // new_piece.col = rand() % 11;
    new_piece.col = rand() % (boardWidth - new_piece.width + 1);
    new_piece.row = 0;
    pieceRemover(current);
    current = new_piece;
    if (!pieceChecker(current))
    {
        GameOn = false;
    }
}

void pieceRotator(Pentomino piece)
{
    Pentomino temp = pieceCopier(piece);
    int i, j, k, width;
    width = piece.width;
    for (i = 0; i < width; i++)
    {
        for (j = 0, k = width - 1; j < width; j++, k--)
        {
            piece.array[i][j] = temp.array[k][i];
        }
    }
    pieceRemover(temp);
}

void boardClearer()
{
    int i, j, sum, linesCleared = 0;
    for (i = 0; i < boardHeight; i++)
    {
        sum = 0;
        for (j = 0; j < boardWidth; j++)
        {
            sum += Board[i][j];
        }
        if (sum == boardWidth)
        {
            linesCleared++;
            for (int k = i; k >= 1; k--)
            {
                for (int l = 0; l < boardWidth; l++)
                {
                    Board[k][l] = Board[k - 1][l];
                }
            }
            for (int l = 0; l < boardWidth; l++)
            {
                Board[0][l] = 0;
            }
        }
    }
    updateScore(linesCleared);
}

void PrintBoard()
{
    char Buffer[boardHeight][boardWidth] = {0};
    int i, j;
    for (i = 0; i < current.width; i++)
    {
        for (j = 0; j < current.width; j++)
        {
            if (current.array[i][j])
                Buffer[current.row + i][current.col + j] = current.array[i][j];
        }
    }

    clearScreen();
    for (i = 0; i < boardWidth + 2; i++)
        printf("+");
    printf("\n");

    for (i = 0; i < boardHeight; i++)
    {
        printf("+");
        for (j = 0; j < boardWidth; j++)
        {
            if (Board[i][j] || Buffer[i][j])
                printf("#");
            else
                printf(" ");
        }
        printf("+\n");
    }
    for (i = 0; i < boardWidth + 2; i++)
        printf("+");
    printf("\n");
    printf("\n");
    printf("Score: %d      ", score);
}

void globalMover(int move)
{
    Pentomino temp = pieceCopier(current);
    switch (move)
    {
    case 's':
        temp.row++;
        if (pieceChecker(temp))
            current.row++;
        else
        {
            boardPrinter();
            boardClearer();
            newSpawner();
        }
        break;
    case 'd':
        temp.col++;
        if (pieceChecker(temp))
            current.col++;
        break;
    case 'a':
        temp.col--;
        if (pieceChecker(temp))
            current.col--;
        break;
    case 'w':
        pieceRotator(temp);
        if (pieceChecker(temp))
            pieceRotator(current);
        break;
    }
    pieceRemover(temp);
    PrintBoard();
}

int updateChecker(unsigned long before_now)
{
    unsigned long now = GetTickCount();
    return (now - before_now) > timer;
}
int main()
{
    srand(time(0));
    clearScreen();
    printf("Please expand your Terminal Window.");
    sleep(2);
    clearScreen();
    printf("  ____      _        _     \n");
    printf(" |  _ \\ ___| |_ _ __(_)___ \n");
    printf(" | |_) / _ \\ __| '__| / __|\n");
    printf(" |  __/  __/ |_| |  | \\__ \\ \n");
    printf(" |_|   \\___|\\__|_|  |_|___/\n");
    printf("\n\n");
    printf(" _______________________\n");
    printf("|                       |\n");
    printf("|  a = left  d = right  |\n");
    printf("|  s = sdrop w = rotate |\n");
    printf("|_______________________|\n\n");
    printf("Press Enter To Play... ");
    while (getchar() != '\n')
        ;

    int move;
    unsigned long before_now = GetTickCount();
    startTime = before_now;
    newSpawner();
    PrintBoard();
    while (GameOn)
    {
        if (_kbhit())
        {
            move = _getch();
            if (move >= 'A' && move <= 'Z')
                move += 32;
            globalMover(move);
        }
        unsigned long now = GetTickCount();
        if (updateChecker(before_now))
        {
            globalMover('s');
            before_now = GetTickCount();
        }
        boardClearer();
    }
    pieceRemover(current);
    int i, j;
    sleep(2);
    clearScreen();
    printf("");
    printf("_________________________________________________________\n");
    printf("   ____    _    __  __ _____    _____     _______ ____  \n");
    printf("  / ___|  / \\  |  \\/  | ____|  / _ \\ \\   / | ____|  _ \\ \n");
    printf(" | |  _  / _ \\ | |\\/| |  _|   | | | \\ \\ / /|  _| | |_) |\n");
    printf(" | |_| |/ ___ \\| |  | | |___  | |_| |\\ V / | |___|  _ < \n");
    printf("  \\____/_/   \\_|_|  |_|_____|  \\___/  \\_/  |_____|_| \\_\\\n");
    printf("_________________________________________________________\n");
    sleep(1);
    displayStatistics();
    printf("Final Board State: ");
    for (i = 0; i < boardHeight; i++)
    {
        for (j = 0; j < boardWidth; j++)
        {
            printf("%c ", Board[i][j] ? '#' : ' ');
        }
        printf("\n");
    }
    printf("\n");

    printf("Press Enter To Exit...");
    getchar();

    /*
    sleep(2);
    printf("\n");
    printf("Press Enter To Replay");
    while (getchar() != '\n');
        resetGameState();

    main();
    return 0;
    */
}
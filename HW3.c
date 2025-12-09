/*
    Name:   Gio Anthony Lagura
    Class:  CMSC 313
*/
#include <stdio.h>

//Matrix multiplicaiton function
void matmult(int result[3][3], int first[3][3], int second[3][3]) {
    //Iterate through the two arrays
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            result[i][j] = 0;
            //Multiply row of first and column of second
            for (int k = 0; k < 3; k++) {
                result[i][j] += first[i][k] * second[k][j];
            }
        }
    }
}

//Matrix addition function
void matadd(int result[3][3], int first[3][3], int second[3][3]) {
    //Iterate through the two arrays and add
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            result[i][j] = first[i][j] + second[i][j];
        }
    }
}

//Printing the matrix
void printMatrix(char label, int M[3][3]) {
    printf("%c = [%d %d %d]\n", label, M[0][0], M[0][1], M[0][2]);
    printf("    |%d %d %d|\n",      M[1][0], M[1][1], M[1][2]);
    printf("    [%d %d %d]\n\n",    M[2][0], M[2][1], M[2][2]);
}

//Printing result of the operation
void printResult(int M[3][3]) {
    printf("        [%d %d %d]\n", M[0][0], M[0][1], M[0][2]);
    printf("A*B+A = |%d %d %d|\n",  M[1][0], M[1][1], M[1][2]);
    printf("        [%d %d %d]\n", M[2][0], M[2][1], M[2][2]);
}

int main() {
    int A[3][3] = {{1,2,3},{4,5,6},{7,8,9}};
    int B[3][3] = {{1,2,0},{3,4,5},{0,6,7}};

    int AB[3][3];
    int result[3][3];

    matmult(AB, A, B);
    matadd(result, AB, A);

    printMatrix('A', A);
    printMatrix('B', B);
    printResult(result);

    return 0;
}

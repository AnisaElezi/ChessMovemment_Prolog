# ChessMovemment_Prolog
This Prolog program implements the problem of finding a path for a knight on a chessboard. 
The program defines a relation "path/2" to find a path between two squares on the chessboard, represented as a 1-dimensional list of integers from 0 to 63. 
The program also defines the relation "levizje/2" which implements the 8 possible moves a knight can make on a chessboard.

The program uses a depth-first search algorithm to search for a path between two squares on the chessboard. 
The search is implemented using a recursive predicate "path/3", which takes the current square, the destination square, and the path so far as arguments. 
The base case for the recursion is when the current square is equal to the destination square, at which point the path is printed using the "printoList"predicate. 
The recursive step involves calling "levizje/2" to generate a new square to move to, and then calling "path/3" with the new square and the updated path. 
The predicate "not(anetar(Z,L))" is used to avoid visiting squares that have already been visited in the current path, in order to prevent infinite loops.

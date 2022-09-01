// ignore_for_file: unrelated_type_equality_checks, avoid_print

import 'dart:io';

List game = [
  ['1', '2', '3'],
  ['4', '5', '6'],
  ['7', '8', '9']
];
String player = 'X';
//for drawing the structure of the tic tac toe
void draw() {
  print('${game[0][0]}  |  ${game[0][1]}  |  ${game[0][2]}');
  print('${game[1][0]}  |  ${game[1][1]}  |  ${game[1][2]}');
  print('${game[2][0]}  |  ${game[2][1]}  |  ${game[2][2]}');
}

//to input the x
void input() {
  String? numberOfField;

  numberOfField = stdin.readLineSync();

//00 01 02
//10 11 12
//20 21 22

//enter player's turn

  if (numberOfField == '1') {
    game[0][0] = player;
  } else if (numberOfField == '2') {
    game[0][1] = player;
  } else if (numberOfField == '3') {
    game[0][2] = player;
  } else if (numberOfField == '4') {
    game[1][0] = player;
  } else if (numberOfField == '5') {
    game[1][1] = player;
  } else if (numberOfField == '6') {
    game[1][2] = player;
  } else if (numberOfField == '7') {
    game[2][0] = player;
  } else if (numberOfField == '8') {
    game[2][1] = player;
  } else if (numberOfField == '9') {
    game[2][2] = player;
  }
}

//to switch between players
void togglePlayer() {
  if (player == 'X') {
    print(' player (O),Press the number of the field:');
    player = 'O';
  } else {
    print(' player (X),Press the number of the field:');
    player = 'X';
  }
}

//we will call this method every turn
String winner() {
  //first player
//row
  if (game[0][0] == 'X' && game[0][1] == 'X' && game[0][2] == 'X') {
    //X  X  X
    //10 11 12
    //20 21 22
    return 'X';
  }
  if (game[1][0] == 'X' && game[1][1] == 'X' && game[1][2] == 'X') {
    //00 01 02
    //X  X  X
    //20 21 22
    return 'X';
  }
  if (game[2][0] == 'X' && game[2][1] == 'X' && game[2][2] == 'X') {
    //00 01 02
    //10 11 12
    //X  X  X
    return 'X';
  }
  //column
  if (game[0][0] == 'X' && game[1][0] == 'X' && game[2][0] == 'X') {
    //00 01 02
    //10 11 12
    //20 21 22
    return 'X';
  }
  if (game[0][1] == 'X' && game[1][1] == 'X' && game[2][1] == 'X') {
    return 'X';
  }
  if (game[0][2] == 'X' && game[1][2] == 'X' && game[2][2] == 'X') {
    return 'X';
  }
  //diagnal
  if (game[0][0] == 'X' && game[1][1] == 'X' && game[2][2] == 'X') {
    return 'X';
  }
  if (game[2][0] == 'X' && game[1][1] == 'X' && game[0][2] == 'X') {
    //00 01 02
    //10 11 12
    //20 21 22
    return 'X';
  }

  //second player
  //row
  if (game[0][0] == 'O' && game[0][1] == 'O' && game[0][2] == 'O') {
    return 'O';
  }
  if (game[1][0] == 'O' && game[1][1] == 'O' && game[1][2] == 'O') {
    return 'O';
  }
  if (game[2][0] == 'O' && game[2][1] == 'O' && game[2][2] == 'O') {
    return 'O';
  }
//column
  if (game[0][0] == 'O' && game[1][0] == 'O' && game[2][0] == 'O') {
    return 'O';
  }
  if (game[0][1] == 'O' && game[1][1] == 'O' && game[2][1] == 'O') {
    return 'O';
  }
  if (game[0][2] == 'O' && game[1][2] == 'O' && game[2][2] == 'O') {
    return 'O';
  }

  if (game[0][0] == 'O' && game[1][1] == 'O' && game[2][2] == 'O') {
    return 'O';
  }
  if (game[2][0] == 'O' && game[1][1] == 'O' && game[0][2] == 'O') {
    return 'O';
  }

  return '/';
}

int main(List<String> args) {
  print('player (X),Press the number of the field:');
  //present the structure
  draw();
//to loop the turn
  while (true) {
    //take the turn of each player
    input();
    //present the structure
    draw();
    //To find out who is the winner
    if (winner() == 'X') {
      print('');
      print("Player (X) wins!");
      break;
    } else if (winner() == 'O') {
      print("Player (O) wins!");
      break;
    }
    togglePlayer();
  }

  return 0;
}

public class Piece {
  
  int[] pieceRotationCheck = {0, 1, -1};
  int[][] tempBoard = new int[20][10];
  boolean[][] activeTempBoard = new boolean[20][10];
  int type;
  int[] rotationPos = new int[2];
  boolean boardIsRight = false;
  
  public Piece(int t, Board b) {
    type = t;
    switch (type) {
      case 1:
        if (b.board[1][3] == 0 &&
          b.board[1][4] == 0 &&
          b.board[1][5] == 0 &&
          b.board[1][6] == 0) {
            
          rotationPos[0] = 1;
          rotationPos[1] = 4;
            
          b.board[1][3] = type;
          b.activeBoard[1][3] = true;
          b.board[1][4] = type;
          b.activeBoard[1][4] = true;
          b.board[1][5] = type;
          b.activeBoard[1][5] = true;
          b.board[1][6] = type;
          b.activeBoard[1][6] = true;
        } else {
          tint(255, 255);
          image(laughing, 0, 0, 800, 800);
          if (lineClearAnimationToggle) image(image1, 0, 0, 800, 800);
          exit();
          pieceHeld = 0; 
        }
        break;
        
      case  2:
        if (b.board[0][3] == 0 &&
          b.board[1][3] == 0 &&
          b.board[1][4] == 0 &&
          b.board[1][5] == 0) {
            
          rotationPos[0] = 1;
          rotationPos[1] = 4;
          
          b.board[0][3] = type;
          b.activeBoard[0][3] = true;
          b.board[1][3] = type;
          b.activeBoard[1][3] = true;
          b.board[1][4] = type;
          b.activeBoard[1][4] = true;
          b.board[1][5] = type;
          b.activeBoard[1][5] = true;
        } else {
          tint(255, 255);
          image(laughing, 0, 0, 800, 800);
          if (lineClearAnimationToggle) image(image2, 0, 0, 800, 800);
          exit();
          pieceHeld = 0; 
        }
        break;
        
      case 3:
        if (b.board[0][5] == 0 &&
          b.board[1][3] == 0 &&
          b.board[1][4] == 0 &&
          b.board[1][5] == 0) {
            
          rotationPos[0] = 1;
          rotationPos[1] = 4;
          
          b.board[0][5] = type;
          b.activeBoard[0][5] = true;
          b.board[1][3] = type;
          b.activeBoard[1][3] = true;
          b.board[1][4] = type;
          b.activeBoard[1][4] = true;
          b.board[1][5] = type;
          b.activeBoard[1][5] = true;
        } else {
          tint(255, 255);
          image(laughing, 0, 0, 800, 800);
          if (lineClearAnimationToggle) image(image3, 0, 0, 800, 800);
          exit();
          pieceHeld = 0; 
        }
        break;
        
      case 4:
        if (b.board[0][4] == 0 &&
          b.board[0][5] == 0 &&
          b.board[1][4] == 0 &&
          b.board[1][5] == 0) {
            
          rotationPos[0] = 1;
          rotationPos[1] = 4;
          
          b.board[0][4] = type;
          b.activeBoard[0][4] = true;
          b.board[0][5] = type;
          b.activeBoard[0][5] = true;
          b.board[1][4] = type;
          b.activeBoard[1][4] = true;
          b.board[1][5] = type;
          b.activeBoard[1][5] = true;
        } else {
          tint(255, 255);
          image(laughing, 0, 0, 800, 800);
          if (lineClearAnimationToggle) image(image4, 0, 0, 800, 800);
          exit();
          pieceHeld = 0; 
        }
        break;
      
      case 5:
        if (b.board[0][4] == 0 &&
          b.board[0][5] == 0 &&
          b.board[1][3] == 0 &&
          b.board[1][4] == 0) {
            
          rotationPos[0] = 1;
          rotationPos[1] = 4;
          
          b.board[0][4] = type;
          b.activeBoard[0][4] = true;
          b.board[0][5] = type;
          b.activeBoard[0][5] = true;
          b.board[1][3] = type;
          b.activeBoard[1][3] = true;
          b.board[1][4] = type;
          b.activeBoard[1][4] = true;
        } else {
          tint(255, 255);
          image(laughing, 0, 0, 800, 800);
          if (lineClearAnimationToggle) image(image5, 0, 0, 800, 800);
          exit();
          pieceHeld = 0; 
        }
        break;
        
      case 6:
        if (b.board[0][4] == 0 &&
          b.board[1][3] == 0 &&
          b.board[1][4] == 0 &&
          b.board[1][5] == 0) {
            
          rotationPos[0] = 1;
          rotationPos[1] = 4;
          
          b.board[0][4] = type;
          b.activeBoard[0][4] = true;
          b.board[1][3] = type;
          b.activeBoard[1][3] = true;
          b.board[1][4] = type;
          b.activeBoard[1][4] = true;
          b.board[1][5] = type;
          b.activeBoard[1][5] = true;
        } else {
          tint(255, 255);
          image(laughing, 0, 0, 800, 800);
          if (lineClearAnimationToggle) image(image1, 0, 0, 800, 800);
          exit();
          pieceHeld = 0; 
        }
        break;
        
      case 7:
        if (b.board[0][4] == 0 &&
          b.board[0][5] == 0 &&
          b.board[1][5] == 0 &&
          b.board[1][6] == 0) {
            
          rotationPos[0] = 1;
          rotationPos[1] = 5;
          
          b.board[0][4] = type;
          b.activeBoard[0][4] = true;
          b.board[0][5] = type;
          b.activeBoard[0][5] = true;
          b.board[1][5] = type;
          b.activeBoard[1][5] = true;
          b.board[1][6] = type;
          b.activeBoard[1][6] = true;
        } else {
          tint(255, 255);
          image(laughing, 0, 0, 800, 800);
          if (lineClearAnimationToggle) image(image2, 0, 0, 800, 800);
          exit();
          pieceHeld = 0; 
        }
        break;
    }
  }
  
  public boolean hasLanded() {
    for (int x = 0; x < 10; x++) {
      for (int y = 19; y >= 0; y--) {
        if (b.activeBoard[y][x]) {
          if (y == 19 || (b.board[y + 1][x] != 0 && !b.activeBoard[y + 1][x]) ) {
            return true;
          }
        }
      }
    }
    return false;
  }
  
  public void movePiece(char k, int pNum) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        k = 'a';
      } else if (keyCode == RIGHT) {
        k = 'd';
      } else if (keyCode == DOWN) {
        k = 's';
      }
    }
    switch (k) {
      case 'z':
        rotate(pNum, -1);
        break;
      case 'x':
        rotate(pNum, 1);
        break;
      case 'a':
      //case :
        for (int x = 0; x < 10; x++) {
          for (int y = 0; y < 20; y ++) {
            if (b.activeBoard[y][x]) {
              
              if (x - 1 == -1 || (b.board[y][x - 1] != 0 && !b.activeBoard[y][x - 1])) return;
            }
          }
        }
                
        for (int x = 0; x < 10; x++) {
          for (int y = 0; y < 20; y ++) {
            if (b.activeBoard[y][x]) {
              b.board[y][x - 1] = b.board[y][x];
              b.board[y][x] = 0;
              b.activeBoard[y][x - 1] = true;
              b.activeBoard[y][x] = false;
            }
          }
        }
        rotationPos[1] -= 1;
        break;
        
        
      case 'd':
      case '→':      
      // checks if can go right
        for (int x = 0; x < 10; x++) {
          for (int y = 0; y < 20; y ++) {
            if (b.activeBoard[y][x]) {
              
              if (x + 1 == 10 || (b.board[y][x + 1] != 0 && !b.activeBoard[y][x + 1])) return;
            }
          }
        }
        
        for (int x = 9; x >= 0; x--) {
          for (int y = 0; y < 20; y ++) {
            if (b.activeBoard[y][x]) {
              b.board[y][x + 1] = b.board[y][x];
              b.board[y][x] = 0;
              b.activeBoard[y][x + 1] = true;
              b.activeBoard[y][x] = false;
            }
          }
        }
        rotationPos[1] += 1;
        break;
      case 's':
      case '↓':
        decrementPos();
        break;
      case ' ':
      while (!hasLanded()) {
        decrementPos();
      }
      for (int x = 0; x < 10; x++) {
        for (int y = 0; y < 20; y ++) {
          if (b.activeBoard[y][x]) {
            hardDropOpacity[x] = 100;
          }
        }
      }
      landBuffer = 49;
      break;
      case 'c':
      case '␏':
        if (holdCounter > 0) return;
        holdCounter++;
        for (int x = 0; x < 10; x++) {
          for (int y = 0; y < 20; y ++) {
            if (b.activeBoard[y][x]) {
              b.board[y][x] = 0;
              b.activeBoard[y][x] = false;
            }
          }
        }
        if (pieceHeld != 0) {
          p = new Piece(pieceHeld, b);
        } else {
          p = new Piece(pieceBag1[pieceBagTemp], b);
          if (pieceBagTemp > 5) {
            pieceBagTemp = 0;
            shuffleArray(pieceBag1);
          } else {
            pieceBagTemp++;
            showNextTemp++;
          }
        }
        pieceHeld = type;
        swapAnimateTemp = 255;
        break;
      case 'j':
        laughToggle = !laughToggle;
        break;
      case 'J':
        lineClearAnimationToggle = !lineClearAnimationToggle;
        distance = 2000;
        break;
    }
  }
  public void rotate(int p, int d) {
    for (int x = 0; x < 10; x++) {
      for (int y = 0; y < 20; y++) {
        tempBoard[y][x] = b.board[y][x];
      }
    }
    for (int x = 0; x < 10; x++) {
      for (int y = 0; y < 20; y++) {
        activeTempBoard[y][x] = b.activeBoard[y][x];
      }
    }
    if (p == 1) {
      if (d == 1) {
        // inside square
        b.board[rotationPos[0]][rotationPos[1]] = tempBoard[rotationPos[0] + 1][rotationPos[1]];
        b.board[rotationPos[0] + 1][rotationPos[1]] = tempBoard[rotationPos[0] + 1][rotationPos[1] + 1];
        b.board[rotationPos[0] + 1][rotationPos[1] + 1] = tempBoard[rotationPos[0]][rotationPos[1] + 1];
        b.board[rotationPos[0]][rotationPos[1] + 1] = tempBoard[rotationPos[0]][rotationPos[1]];
              
        // top left
        b.board[rotationPos[0] - 1][rotationPos[1]] = tempBoard[rotationPos[0] + 1][rotationPos[1] - 1];
        b.board[rotationPos[0] + 1][rotationPos[1] - 1] = tempBoard[rotationPos[0] + 2][rotationPos[1] + 1];
        b.board[rotationPos[0] + 2][rotationPos[1] + 1] = tempBoard[rotationPos[0]][rotationPos[1] + 2];
        b.board[rotationPos[0]][rotationPos[1] + 2] = tempBoard[rotationPos[0] - 1][rotationPos[1]];
              
        // top right
        b.board[rotationPos[0] - 1][rotationPos[1] + 1] = tempBoard[rotationPos[0]][rotationPos[1] - 1];
        b.board[rotationPos[0]][rotationPos[1] - 1] = tempBoard[rotationPos[0] + 2][rotationPos[1]];
        b.board[rotationPos[0] + 2][rotationPos[1]] = tempBoard[rotationPos[0] + 1][rotationPos[1] + 2];
        b.board[rotationPos[0] + 1][rotationPos[1] + 2] = tempBoard[rotationPos[0] - 1][rotationPos[1] + 1];
              
        // active inside square
        b.activeBoard[rotationPos[0]][rotationPos[1]] = activeTempBoard[rotationPos[0] + 1][rotationPos[1]];
        b.activeBoard[rotationPos[0] + 1][rotationPos[1]] = activeTempBoard[rotationPos[0] + 1][rotationPos[1] + 1];
        b.activeBoard[rotationPos[0] + 1][rotationPos[1] + 1] = activeTempBoard[rotationPos[0]][rotationPos[1] + 1];
        b.activeBoard[rotationPos[0]][rotationPos[1] + 1] = activeTempBoard[rotationPos[0]][rotationPos[1]];
              
        // active top left
        b.activeBoard[rotationPos[0] - 1][rotationPos[1]] = activeTempBoard[rotationPos[0] + 1][rotationPos[1] - 1];
        b.activeBoard[rotationPos[0] + 1][rotationPos[1] - 1] = activeTempBoard[rotationPos[0] + 2][rotationPos[1] + 1];
        b.activeBoard[rotationPos[0] + 2][rotationPos[1] + 1] = activeTempBoard[rotationPos[0]][rotationPos[1] + 2];
        b.activeBoard[rotationPos[0]][rotationPos[1] + 2] = activeTempBoard[rotationPos[0] - 1][rotationPos[1]];
              
        // active top right
        b.activeBoard[rotationPos[0] - 1][rotationPos[1] + 1] = activeTempBoard[rotationPos[0]][rotationPos[1] - 1];
        b.activeBoard[rotationPos[0]][rotationPos[1] - 1] = activeTempBoard[rotationPos[0] + 2][rotationPos[1]];
        b.activeBoard[rotationPos[0] + 2][rotationPos[1]] = activeTempBoard[rotationPos[0] + 1][rotationPos[1] + 2];
        b.activeBoard[rotationPos[0] + 1][rotationPos[1] + 2] = activeTempBoard[rotationPos[0] - 1][rotationPos[1] + 1];
      }
      for (int x = 0; x < 10; x++) {
        for (int y = 0; y < 20; y++) {
          if (b.activeBoard[y][x] || activeTempBoard[y][x]) continue;
          if (b.board[y][x] != tempBoard[y][x]) {
            b.board[y][x] = tempBoard[y][x];
            boardIsRight = false;
          }
        }
      }          
      boardIsRight = true;
    } else {
      rotateIndicies(d);
    }
  }
  
  public void decrementPos() {
    if (landBuffer != 0) return;
    for (int x = 0; x < 10; x++) {
      for (int y = 19; y >= 0; y--) {
        if (b.activeBoard[y][x]) {
          
          if (y == 19) return;
          
          b.activeBoard[y + 1][x] = true;
          b.activeBoard[y][x] = false;
          
          b.board[y + 1][x] = b.board[y][x];
          b.board[y][x] = 0;
          
        }
      }
    }
    rotationPos[0] += 1;
  }
  
  public void showHeld() {
    b.showSmallPiece(100, 200, pieceHeld);
  }
  
  public void rotateIndicies(int d) {
    for (int xIncriment : pieceRotationCheck) {
      for (int yIncriment : pieceRotationCheck) {
        if (!boardIsRight) {
          try {
            boardIsRight = true;
            b.board[rotationPos[0] + yIncriment][rotationPos[1] + 1 + xIncriment] = tempBoard[rotationPos[0] - d  + yIncriment][rotationPos[1] + xIncriment];
            b.board[rotationPos[0] - d  + yIncriment][rotationPos[1] + xIncriment] = tempBoard[rotationPos[0]  + yIncriment][rotationPos[1] - 1 + xIncriment];
            b.board[rotationPos[0]  + yIncriment][rotationPos[1] - 1 + xIncriment] = tempBoard[rotationPos[0] + d  + yIncriment][rotationPos[1] + xIncriment];
            b.board[rotationPos[0] + d  + yIncriment][rotationPos[1] + xIncriment] = tempBoard[rotationPos[0]  + yIncriment][rotationPos[1] + 1 + xIncriment];
            
            // corners
            b.board[rotationPos[0] + 1  + yIncriment][rotationPos[1] + 1 + xIncriment] = tempBoard[rotationPos[0] - d  + yIncriment][rotationPos[1] + d + xIncriment];
            b.board[rotationPos[0] - d  + yIncriment][rotationPos[1] + d + xIncriment] = tempBoard[rotationPos[0] - 1  + yIncriment][rotationPos[1] - 1 + xIncriment];
            b.board[rotationPos[0] - 1  + yIncriment][rotationPos[1] - 1 + xIncriment] = tempBoard[rotationPos[0] + d  + yIncriment][rotationPos[1] - d + xIncriment];
            b.board[rotationPos[0] + d  + yIncriment][rotationPos[1] - d + xIncriment] = tempBoard[rotationPos[0] + 1  + yIncriment][rotationPos[1] + 1 + xIncriment];
            
            // active edges
            b.activeBoard[rotationPos[0]  + yIncriment][rotationPos[1] + 1 + xIncriment] = activeTempBoard[rotationPos[0] - d  + yIncriment][rotationPos[1] + xIncriment];
            b.activeBoard[rotationPos[0] - d  + yIncriment][rotationPos[1] + xIncriment] = activeTempBoard[rotationPos[0]  + yIncriment][rotationPos[1] - 1 + xIncriment];
            b.activeBoard[rotationPos[0]  + yIncriment][rotationPos[1] - 1 + xIncriment] = activeTempBoard[rotationPos[0] + d  + yIncriment][rotationPos[1] + xIncriment];
            b.activeBoard[rotationPos[0] + d  + yIncriment][rotationPos[1] + xIncriment] = activeTempBoard[rotationPos[0]  + yIncriment][rotationPos[1] + 1 + xIncriment];
            
            // active corners
            b.activeBoard[rotationPos[0] + 1  + yIncriment][rotationPos[1] + 1 + xIncriment] = activeTempBoard[rotationPos[0] - d  + yIncriment][rotationPos[1] + d + xIncriment];
            b.activeBoard[rotationPos[0] - d  + yIncriment][rotationPos[1] + d + xIncriment] = activeTempBoard[rotationPos[0] - 1  + yIncriment][rotationPos[1] - 1 + xIncriment];
            b.activeBoard[rotationPos[0] - 1  + yIncriment][rotationPos[1] - 1 + xIncriment] = activeTempBoard[rotationPos[0] + d  + yIncriment][rotationPos[1] - d + xIncriment];
            b.activeBoard[rotationPos[0] + d  + yIncriment][rotationPos[1] - d + xIncriment] = activeTempBoard[rotationPos[0] + 1  + yIncriment][rotationPos[1] + 1 + xIncriment];
          } catch (Exception e){
            for (int x = 0; x < 10; x++) {
              for (int y = 0; y < 20; y++) {
                b.board[y][x] = tempBoard[y][x];
                b.activeBoard[y][x] = activeTempBoard[y][x];
              }
            }
            continue;
          }
        }
        for (int x = 0; x < 10; x++) {
          for (int y = 0; y < 20; y++) {
            if (b.activeBoard[y][x] || activeTempBoard[y][x]) continue; 
            // if (b.activeBoard[y][x]) continue; 
            if (b.board[y][x] != tempBoard[y][x]) boardIsRight = false;
          }
        }
      }
    }
    if (!boardIsRight) {
      for (int x = 0; x < 10; x++) {
        for (int y = 0; y < 20; y++) {
          b.board[y][x] = tempBoard[y][x];
          b.activeBoard[y][x] = activeTempBoard[y][x];
        }
      }
    }
    boardIsRight = false;
  }
}

class Board {
  
  int[][] board;
  boolean[][] activeBoard;
  int size = 30;
  
  
  public Board() {
    board = new int[20][10];
    activeBoard = new boolean[20][10];
    for (int x = 0; x < 10; x++) {
      for (int y = 0; y < 20; y++) {
        board[y][x] = 0;
        activeBoard[y][x] = false;
      }
    }
  }
  public void show() {
    fill(20, 100, 200);
    rect(0, 0, 800, 800);
    for (int x = 0; x < 20; x++) {
      for (int y = 0; y < 10; y++) {
        switch (board[x][y]) {
          case 0:
            fill(0);
            break;
          case 1:
            fill(0, 255, 255);
            break;
          case 2:
            fill(0, 0, 255);
            break;
          case 3:
            fill(255, 165, 0);
            break;
          case 4:
            fill(255, 255, 0);
            break;
          case 5:
            fill(0, 255, 0);
            break;
          case 6:
            fill(128, 0, 128);
            break;
          case 7:
            fill(255, 0, 0);
            break;
        }
        rect((y * size) + (height / 2) - (5 * size), (x * size) + (width / 2) - (10 * size), size, size);
        if (laughToggle) {
          tint(255, 255);
          if (board[x][y] == 0) {
            rect((y * size) + (height / 2) - (5 * size), (x * size) + (width / 2) - (10 * size), size, size);
          }
        }
      }
    }
    fill(swapAnimateTemp);
    rect(100, 200, 100, 100);
    fill(100);
    rect(600, 200, 100, 100);
    fill(0);
    textSize(20);
    text("HOLD", 123, 190);
    text("NEXT", 626, 190);
    textSize(25);
    text("SCORE: ", 600, 390);
    text(score, 680, 390);
    
    showNext();
    showHeld();
    
    fill(0);
    
    if (lineClearAnimationToggle) {
      distance--;
      text("DISTANCE: ", 600, 425);
      text(distance, 715, 425);
      if (distance == 0) {
        exit();
      }
    }
    
    if (lineClearOpacity != 0) {
      tint(255, lineClearOpacity);
      
      image(lineClearImage, 0, 0, 800, 800);
    }
  }
  
  public void clearActivity() {
    for (int x = 0; x < 10; x++) {
      for (int y = 19; y >= 0; y--) {
        if (activeBoard[y][x]) activeBoard[y][x] = false;
      }
    }
  }
  public int findRow() {
    if (p.hasLanded()) {
      for (int y = 0; y < 20; y++) {
        for (int x = 0; x < 10; x++) {
          if (b.board[y][x] == 0) break;  
          if (x == 9) return y;
        }
      }
    }
    return -1;
  }
  public void pushBoardUp (int row) {
    for (int x = 9; x >= 0; x--) {
      for (int y = row; y >= 0; y--) {
        if (b.board[y][x] != 0) {
          board[y + 1][x] = board[y][x];
          board[y][x] = 0;
        }
      }
    }
  }
  
  public void showHeld() {
    showSmallPiece(100, 200, pieceHeld);
  }
  
  public void showNext() {
    showNextTemp = pieceBagTemp;
    if (showNextToggle) {
      showSmallPiece(600, 200, pieceBag1[showNextTemp]);
    } else {
      showSmallPiece(600, 200, pieceBag2[showNextTemp]);
    }
  }
  
  public void showSmallPiece(int x, int y, int pNum) {
    switch (pNum) {
      case (0):
        break;
      case (1):
        fill(0, 255, 255);
        rect(x + 10, y + 40, 20, 20);
        rect(x + 30, y + 40, 20, 20);
        rect(x + 50, y + 40, 20, 20);
        rect(x + 70, y + 40, 20, 20);
        break; 
      case (2):
        fill(0, 0, 255);
        rect(x + 20, y + 30, 20, 20);
        rect(x + 20, y + 50, 20, 20);
        rect(x + 40, y + 50, 20, 20);
        rect(x + 60, y + 50, 20, 20);
        break; 
      case (3):
        fill(255, 165, 0);
        rect(x + 60, y + 30, 20, 20);
        rect(x + 20, y + 50, 20, 20);
        rect(x + 40, y + 50, 20, 20);
        rect(x + 60, y + 50, 20, 20);
        break; 
      case (4):
        fill(255, 255, 0);
        rect(x + 30, y + 30, 20, 20);
        rect(x + 50, y + 30, 20, 20);
        rect(x + 30, y + 50, 20, 20);
        rect(x + 50, y + 50, 20, 20);
        break; 
      case (5):
        fill(0, 255, 0);
        rect(x + 40, y + 30, 20, 20);
        rect(x + 60, y + 30, 20, 20);
        rect(x + 20, y + 50, 20, 20);
        rect(x + 40, y + 50, 20, 20);
        break; 
      case (6):
        fill(128, 0, 128);
        rect(x + 40, y + 30, 20, 20);
        rect(x + 20, y + 50, 20, 20);
        rect(x + 40, y + 50, 20, 20);
        rect(x + 60, y + 50, 20, 20);
        break; 
      case (7):
        fill(255, 0, 0);
        rect(x + 20, y + 30, 20, 20);
        rect(x + 40, y + 30, 20, 20);
        rect(x + 40, y + 50, 20, 20);
        rect(x + 60, y + 50, 20, 20);
        break; 
    }
  }
  
  public void showDropRectangles() {
    noStroke();
    for (int i = 0; i < 10; i++) {
      fill(255, hardDropOpacity[i]);
      rect(250 + 30 * i, 100, 30, 600);
      if (hardDropOpacity[i] != 0) hardDropOpacity[i] --;
    }
    stroke(0);
  }
}

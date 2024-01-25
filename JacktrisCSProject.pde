import java.util.*;
import java.util.concurrent.ThreadLocalRandom;
import processing.sound.*;

//PImage laughing;
PImage lineClearImage;
//PImage image1;
//PImage image2;
//PImage image3;
//PImage image4;
//PImage image5;
int lineClearOpacity = 0;
SoundFile file;

Board b = new Board();
Piece p;
int speed = 20;
int speedTemp = 0;
int[] pieceBag1 = {1, 2, 3, 4, 5, 6, 7};
int[] pieceBag2 = {1, 2, 3, 4, 5, 6, 7};
int landBuffer = 0;
int pieceBagTemp = 1;
boolean pieceBagToggle = true;
int showNextTemp = 1;
boolean showNextToggle = true;
int row;
int pieceHeld = 0;
int holdCounter;
int swapAnimateTemp = 100;
boolean laughToggle = false;
boolean lineClearAnimationToggle = false;
int[] hardDropOpacity = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int score = 0;
int distance;

/*
fix rotations
score counter
extra effects
optimize images
increase speed (dependent on score)
*/

void setup() {
  size(800, 800);
  background(20, 100, 200);
  strokeWeight(4);
  frameRate(120);
  shuffleArray(pieceBag1);
  shuffleArray(pieceBag2);
  p = new Piece (pieceBag1[0], b);
}

void draw() {
  b.show();
  for (int i = 0; i < 10; i++) {
    if (hardDropOpacity[i] != 0) b.showDropRectangles();
  }
  
  if (p.hasLanded()) {
    landBuffer++;
    if (landBuffer % 50 == 0) {
      for (int i = 0; i < 4; i++) {
        if (b.findRow() != -1) {
          row = b.findRow();
          for (int j = 0; j < 10; j++) {
            b.board[row][j] = 0;
          }
          b.pushBoardUp(row);
          for (int k = 0; k < row; k++) {
            score += 100;
            distance += 26;
          }
          if (lineClearAnimationToggle) {
            lineClearOpacity = 255;
          }
        }
      }
      row = 0;
      b.clearActivity();
      if (pieceBagToggle) {
        p = new Piece(pieceBag1[pieceBagTemp], b);
      } else {
        p = new Piece(pieceBag2[pieceBagTemp], b);
      }
      holdCounter = 0;
      if (pieceBagTemp > 5) {
        pieceBagTemp = 0;
        if (pieceBagToggle) {
          shuffleArray(pieceBag2);
        } else {
          shuffleArray(pieceBag1);
        }
        pieceBagToggle = !pieceBagToggle;
      }
      else {
        pieceBagTemp++;
      }
      if (showNextTemp > 5) {
        showNextToggle = !showNextToggle;
      }
    }
  }
  if (!p.hasLanded()) landBuffer = 0; 
  
  if (speedTemp % speed == 0 && landBuffer == 0){
    p.decrementPos();
    speedTemp = 0;
  }
  speedTemp++;
  if (swapAnimateTemp != 100) swapAnimateTemp -= 5;
  if (lineClearOpacity != 0) lineClearOpacity -= 15;
  score++;
}

public void keyPressed () {
  p.movePiece(key, p.type);
}

public void shuffleArray(int[] ar)
  {
    Random rnd = ThreadLocalRandom.current();
    for (int i = ar.length - 1; i > 0; i--)
    {
      int index = rnd.nextInt(i + 1);
      int a = ar[index];
      ar[index] = ar[i];
      ar[i] = a;
    }
  }

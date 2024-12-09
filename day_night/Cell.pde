class Cell {

  int size;
  PVector position;
  int cellColor;
  int newCellColor;

  Cell(int x, int y, int size, int cellColor) {
    position = new PVector(x, y);
    size = this.size;
    cellColor = this.cellColor;
  }

  void display() {
    if (cellColor == YELLOW) {
      fill(YELLOW_COLOR);
    }
    if (cellColor == PURPLE) {
      fill(PURPLE_COLOR);
    }
    square(corner.x, corner.y, size);
  }

  void updateColor(int neighborColor) {
    if (cellColor == YELLOW && neighborColor == PURPLE) {
      newCellColor = PURPLE;
    }
    else if (cellColor == PURPLE && neighborColor == YELLOW) {
      newCellColor = YELLOW;
    }
    cellColor = newCellColor;
  }
}

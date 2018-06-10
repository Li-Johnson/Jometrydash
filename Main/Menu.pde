public class Menu {

  public void menu() {
    background.draw();
    pushMatrix();

    translate(xoffset, 0);
    map.draw();
    drawGrid();

    popMatrix();
    back.draw();
    editButtons();

    textSize(18);
    fill(#000000);
    textAlign(CENTER, CENTER);
    text("current obstacle: " + currentlySelected, 120, 380);

    // Draws a button depending on whether it's being hovered or not.
    if (mouseButton == LEFT && save.isHovering() && showingText == true) {
      textSize(25);
      fill(#000000);
      textAlign(CENTER, CENTER);
      text("MAP SAVED", width / 2, 100);
    } else if (mouseButton == LEFT && load.isHovering() && showingText == true) {
      textSize(25);
      fill(#000000);
      textAlign(CENTER, CENTER);
      text("MAP LOADED", width / 2, 100);
    }
  }
}

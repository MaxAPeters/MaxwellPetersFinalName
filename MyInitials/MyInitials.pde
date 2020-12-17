// Setting initial x y points for where I want letters to start
// x1 y1 is for letter 1, x2 y2 for letter 2, etc.
float x1 = 100;
float y1 = 100;
float x2 = 150;
float y2 = 100;
float x3 = 195;
// The length of the A and the M is different, so I found minussing 5 made it look more even
float y3 = 100;
float angle = 0;
float i = 0;
// i counts the number of times void draw has been repeated

void setup () {
  fill(0);
  size(310, 310);
  
}

void draw() {
  // This will add 1 to i everytime void draw repeats, allowing me to count time essentially
  i += 1;
  
  // This is where the Letter M starts
  
  // These if statements, which are repeated for the rest of my code, and tell the balls where to move within the certain time (i) paarameters
  if (i < 20) {
  ellipse(x1,y1,4,4);
    y1 += -1;
  }
    if (20 <= i && i < 40) {
  ellipse(x1,y1,4,4);
    x1 += 0.7;
    y1 += 1;
}
    if (40 <= i && i < 60) {
  ellipse(x1,y1,4,4);
    x1 += 0.7;
    y1 += -1;
}
    if (60 <= i && i < 80) {
  ellipse(x1,y1,4,4);
    y1 += 1;
}

// This is where the A starts
if (i < 20) {
  ellipse(x2,y2,4,4);
    y2 += -1;
    x2 += 0.5;
  }
  if (20 <= i && i < 40) {
  ellipse(x2,y2,4,4);
  y2 += 1;
  x2 += 0.5;
  }
  // This sets the location of the ball when i = 40 to set the ball up for the bridge of the A
  if (40 <= i && i <= 40) {
    y2 = 95;
    x2 = 165;
  }
  
if (40 <= i && i < 60) {
  ellipse(x2,y2,4,4);
  x2 += -0.5;
}
  
  // This is where the letter P starts
  if (i < 20) {
    ellipse(x3,y3,4,4);
    y3 += -1;
}
// This is the curve of the P
// Creates a semi-circle at the top
if (angle < PI) {
angle += 0.1;
translate(198,88);
// The translate point was determined based on a mix of math and trial and error
rotate(angle);
ellipse(0,-6.5,2,2);
// This ellipse is smaller because it seems to make the semi-circle look nicer
}
}

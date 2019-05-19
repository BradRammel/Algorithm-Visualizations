float[] values; 

void setup() {
 size(1500,500);
 frameRate(30);
 values = new float[width/5];
 for(int i = 0; i < values.length; i++) {
  values[i] = random(height); 
 }
}

void draw() {
  background(0); 

  //Creates an array of rectangles
  int x = 0; 
  rectMode(CORNERS);
  for(int i = 0; i < values.length; i++) {
    stroke(255);
    fill(0);
    rect(x, height, x + 5, height - values[i]);
    x = x + 5;
  }

  bubbleSort(values);
}

void bubbleSort(float[] arr) {
  for(int i = 0; i < arr.length-1; i++) {
  float num1 = values[i];
  float num2 = values[i+1];
  if(num1 > num2) {
    //swap numbers in array
    values[i] = num2; 
    values[i + 1] = num1; 
  }
 }
}

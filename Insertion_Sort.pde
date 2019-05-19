float[] array;
int i = 1; 

void setup() {
 size(800,500);
 
 array = new float[width/10];
 for(int i = 0; i < array.length; i++) {
  array[i] = random(height);
 }
 
 frameRate(30);
}

void draw() {
  background(0); 
 
  int x = 0; 
  rectMode(CORNERS); 
  for(int i = 0; i < array.length; i++) {
    stroke(255); 
    noFill();
    rect(x, height, x + 10, height - array[i]); 
    x = x + 10;
  }
  
  insertionSort(array);
  
  if(i == array.length) {
    i--;
  }
}

// Insertion sort function
void insertionSort(float[] arr) {
  if(i > 0) {
    int j = i; 
    while(j > 0) {
      float temp1 = array[j];
      float temp2 = array[j -1]; 
      if(temp1 < temp2) {
        array[j] = temp2;
        array[j - 1] = temp1;
      }
      j--;
    }
  }
  i++; 
}

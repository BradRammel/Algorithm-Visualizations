float[] values; 

void setup() {
 size(1500,500);
 values = new float[width];
 for(int i = 0; i < values.length; i++) {
  values[i] = random(height); 
 }
}

void draw() {
 background(0); 
 
 for(int i = 0; i < values.length; i++) {
  stroke(255);
  line(i, height, i, height - values[i]);
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

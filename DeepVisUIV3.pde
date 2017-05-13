
import controlP5.*;
float[][] data;
final float MIN = 0.001;
String[] xLabels = {
"  19",
"32.5",
"37.5",
"42.5",
"47.5",
"52.5",
"57.5",
"62.5",
"67.5"

}; 
String[] yTitles;
int scale=  900;
color[] colors;
float[][] plot2data;
int category;
color[] colorsb1 = {
#61B6D1,
#E0432C,
#71E245,
#DF41DE,
#2D341E,
#CFA93A,
#CD6F9B,
#6970E1,
#59A26E,
#C9BCB0,
#825925,
#33324B,
#CE425B,
#866660,
#64DDCB,
#556D26,
#C7D88F,
#D87B35,
#CBDB49,
#BB89D5,
#63A73A,
#4F4B93,
#51221D,
#DB8779,
#5D8BD3,
#5A8B86,
#6EE28F,
#6D7090,
#82357B,
#9A3929,
#DC3A8B,
#BFA26D,
#6B2A49,
#D9ADCA,
#D153BB,
#AE5FD9,
#42634B,
#B7DEC7,
#ABBFE3
};
CheckBox cb1,cb2,cb3,cb4,cb5,cb6,cb7;

boolean[] highlight = new boolean[39];
boolean[] mouseOver = new boolean[39];
boolean  highlightMode = false;
float[][] points1, points2, points3, points4, points5, points6, points7, points8, points9;
String[] legend1, legend2, legend3, legend4, legend5, legend6, legend7, legend8, legend9;
int scale2 = 250;
  int interval = 150;
ControlP5 cp5;

/** set the labels **/
int labelX = 550,labelY = 60;
 int labelsize = 10;
  String label = "";
  String label2 = "";
  int labelCount = 0;
  int labelThres = 13;
/**   **     **    **/
  
  
  
private final color[] DEFAULT_COLORS = {//color(227, 119, 194),
  //    color(158,218,229),

  color(250, 202, 211), //light pink
  color(250, 202, 244), //light purple
  color(218, 218, 235), //darker blue
  color(198, 219, 239), //light blue
  color(246, 250, 202), //yellow
  color(219, 219, 141), //grey yellow
  color(152, 223, 138), //green
  // color(255,187,120),
  //  color(174,199,232)
};
void checkboxgroup(){

 cb1 = cp5.addCheckBox("cb1")
    .setPosition(80, 450)
      .setColorForeground(color(120))
        .setColorActive(color(255))
          .setColorLabel(color(255))
            .setSize(20, 20)
              .setItemsPerRow(1)

                .setSpacingRow(5)
   .hideLabels() ;
   for(int i = 0;i<6;i++){
   cb1.addItem(yTitles[i], i);
   }                 
  int i =-1;  
  for (Toggle t : cb1.getItems ()) {
    i++;
    color c =colorsb1[i];
   // t.setColorForeground(themeRiver.DEFAULT_COLORS[i]);
    t.setColorBackground(color(red(c),green(c),blue(c),30));
    t.setColorBackground(color(red(c),green(c),blue(c),30));
     t.setValue(1);
     t.setColorActive(colorsb1[i]);
  }cb1.hideLabels();
  
  
   cb2 = cp5.addCheckBox("cb2")
    .setPosition(80+interval, 450)
      .setColorForeground(color(120))
        .setColorActive(color(255))
          .setColorLabel(color(255))
            .setSize(20, 20)
              .setItemsPerRow(1)
                .setSpacingRow(5);
   for( i = 6;i<12;i++){
   cb2.addItem(yTitles[i], i);
   }                 
   i =5;  
  for (Toggle t : cb2.getItems ()) {
    i++;
    color c =colorsb1[i];
   // t.setColorForeground(themeRiver.DEFAULT_COLORS[i]);
    t.setColorBackground(color(red(c),green(c),blue(c),30));
    t.setColorBackground(color(red(c),green(c),blue(c),30));
     t.setValue(1);
     t.setColorActive(colorsb1[i]);
  }cb2.hideLabels();
  
cb3 = cp5.addCheckBox("cb3")
    .setPosition(80+interval*2, 450)
      .setColorForeground(color(120))
        .setColorActive(color(255))
          .setColorLabel(color(255))
            .setSize(20, 20)
              .setItemsPerRow(1)
                .setSpacingRow(5);
   for( i = 12;i<18;i++){
   cb3.addItem(yTitles[i], i);
   }                 
   i =11;  
  for (Toggle t : cb3.getItems ()) {
    i++;
    color c =colorsb1[i];
   // t.setColorForeground(themeRiver.DEFAULT_COLORS[i]);
    t.setColorBackground(color(red(c),green(c),blue(c),30));
    t.setColorBackground(color(red(c),green(c),blue(c),30));
     t.setValue(1);
     t.setColorActive(colorsb1[i]);
  }cb3.hideLabels();
cb4 = cp5.addCheckBox("cb4")
    .setPosition(80+interval*3, 450)
      .setColorForeground(color(120))
        .setColorActive(color(255))
          .setColorLabel(color(255))
            .setSize(20, 20)
              .setItemsPerRow(1)
                .setSpacingRow(5);
   for( i = 18;i<24;i++){
   cb4.addItem(yTitles[i], i);
   }                 
   i =17;  
  for (Toggle t : cb4.getItems ()) {
    i++;
    color c =colorsb1[i];
   // t.setColorForeground(themeRiver.DEFAULT_COLORS[i]);
    t.setColorBackground(color(red(c),green(c),blue(c),30));
    t.setColorBackground(color(red(c),green(c),blue(c),30));
     t.setValue(1);
     t.setColorActive(colorsb1[i]);
  }cb4.hideLabels();

cb5 = cp5.addCheckBox("cb5")
    .setPosition(80+interval*4, 450)
      .setColorForeground(color(120))
        .setColorActive(color(255))
          .setColorLabel(color(255))
            .setSize(20, 20)
              .setItemsPerRow(1)
                .setSpacingRow(5);
   for( i = 24;i<30;i++){
   cb5.addItem(yTitles[i], i);
   }                 
   i =23;  
  for (Toggle t : cb5.getItems ()) {
    i++;
    color c =colorsb1[i];
   // t.setColorForeground(themeRiver.DEFAULT_COLORS[i]);
    t.setColorBackground(color(red(c),green(c),blue(c),30));
    t.setColorBackground(color(red(c),green(c),blue(c),30));
     t.setValue(1);
     t.setColorActive(colorsb1[i]);
  }cb5.hideLabels();
cb6 = cp5.addCheckBox("cb6")
    .setPosition(80+interval*5, 450)
      .setColorForeground(color(120))
        .setColorActive(color(255))
          .setColorLabel(color(255))
            .setSize(20, 20)
              .setItemsPerRow(1)
                .setSpacingRow(5);
   for( i = 30;i<36;i++){
   cb6.addItem(yTitles[i], i);
   }                 
   i =29;  
  for (Toggle t : cb6.getItems ()) {
    i++;
    color c =colorsb1[i];
   // t.setColorForeground(themeRiver.DEFAULT_COLORS[i]);
    t.setColorBackground(color(red(c),green(c),blue(c),30));
    t.setColorBackground(color(red(c),green(c),blue(c),30));
     t.setValue(1);
     t.setColorActive(colorsb1[i]);
  }cb6.hideLabels();
cb7 = cp5.addCheckBox("cb7")
    .setPosition(80+interval*6, 450)
      .setColorForeground(color(120))
        .setColorActive(color(255))
          .setColorLabel(color(255))
            .setSize(20, 20)
              .setItemsPerRow(1)
                .setSpacingRow(5);
   for( i = 36;i<39;i++){
   cb7.addItem(yTitles[i], i);
   }                 
   i =35;  
  for (Toggle t : cb7.getItems ()) {
    i++;
    color c =colorsb1[i];
   // t.setColorForeground(themeRiver.DEFAULT_COLORS[i]);
    t.setColorBackground(color(red(c),green(c),blue(c),30));
    t.setColorBackground(color(red(c),green(c),blue(c),30));
     t.setValue(1);
     t.setColorActive(colorsb1[i]);
  }cb7.hideLabels();


}
void setup() {
  int j,i;
 points9 =   loadData("./data/0.9points.csv");
  loadLegend("alllegend.txt", legend9);
  frame.setTitle("DeepVis");
  size(1200, 600);
  background(255);
 
  colors = new color[39];
  cp5 = new ControlP5(this);
  
  cp5.addSlider("sliderTicks2")
    .setPosition(90, 50)
      .setWidth(400)
        .setRange(1, 0) // values can range from big to small as well
          .setValue(0.1)
            .setNumberOfTickMarks(11)
              .setColorValue(color(0, 0, 0))
                .setColorBackground(color(234))
                  .setSliderMode(Slider.FLEXIBLE)
                    ;


checkboxgroup();


    int scale2Y=200;//curve config
  //line config:  scale2Y = 150;
  pushMatrix();
  translate(90, 0);
  

  strokeWeight(2);
  //println(plot2data.length+" "+plot2data[0].length);
  for ( i =0; i<plot2data.length; i++) {
    stroke(colorsb1[i]);

    noFill();
    beginShape();
    curveVertex(0, plot2data[i][0]);
    for (j = 0; j<6; j++) {
      curveVertex(j*scale2Y, plot2data[i][j]);
      //line(j*scale2Y, plot2data[i][j]*(scale2), (j+1)*scale2Y, plot2data[i][j+1]*(scale2));
    }
    curveVertex((j-1)*scale2Y, plot2data[i][j-1]);
    endShape();
  }   

  popMatrix();
  legend(450);
  tick(400);
}
void mouseMoved(){

/*****   draw the label and interaction: mouse over  ******/

 
 highlightMode = false;
    if(mouseX>420&&mouseX<500){
    int i;
   label = ""; label2 = ""; labelCount = 0;
  for(i = 0;i<39;i++){
    float differ = abs(mouseY-plot2data[i][2]);
    if(differ<3){
       highlightMode = true;
       labelCount++;
       if(labelCount <labelThres)
    label+=yTitles[i]+" ";
    else
    label2+=yTitles[i]+" ";
    
    mouseOver[i] = true;
    } else
    mouseOver[i] = false;
   
  }
  ////textSize(labelsize);
 
//text(label, labelX,labelY);
  }
 else if(mouseX>670&&mouseX<720){
    int i;
   label = ""; label2 = ""; labelCount = 0;
  for(i = 0;i<39;i++){
    float differ = abs(mouseY-plot2data[i][3]);
    if(differ<3){
       highlightMode = true;
    labelCount++;
       if(labelCount <labelThres)
    label+=yTitles[i]+" ";
    else
    label2+=yTitles[i]+" ";
     mouseOver[i] = true;
    } else
    mouseOver[i] = false;
   
  }
  ////textSize(labelsize);
  
//text(label, labelX,labelY);
  }
  else  if(mouseX>890&&mouseX<940){
    int i;
   label = ""; label2 = ""; labelCount = 0;
  for(i = 0;i<39;i++){
    float differ = abs(mouseY-plot2data[i][4]);
    if(differ<3){
       highlightMode = true;
  labelCount++;
       if(labelCount <labelThres)
    label+=yTitles[i]+" ";
    else
    label2+=yTitles[i]+" ";
   mouseOver[i] = true;
    } else
    mouseOver[i] = false;
   
  }
  ////textSize(labelsize);

//text(label, labelX,labelY);
  }
   else   if(mouseX>280&&mouseX<320){
    int i;
   label = ""; label2 = ""; labelCount = 0;
  for(i = 0;i<39;i++){
    float differ = abs(mouseY-plot2data[i][1]);
    if(differ<3){
       highlightMode = true;
  labelCount++;
       if(labelCount <labelThres)
    label+=yTitles[i]+" ";
    else
    label2+=yTitles[i]+" ";
   mouseOver[i] = true;
    } else
    mouseOver[i] = false;
   
  }
  ////textSize(labelsize);
//text(label, 600,50);
 
  }
   else if(mouseX>1070&&mouseX<1130){
    int i;
   label = ""; label2 = ""; labelCount = 0;
  for(i = 0;i<39;i++){
    float differ = abs(mouseY-plot2data[i][6]);
    if(differ<3){
      highlightMode = true;
labelCount++;
       if(labelCount <labelThres)
    label+=yTitles[i]+" ";
    else
    label2+=yTitles[i]+" ";
     mouseOver[i] = true;
    }
    else
    mouseOver[i] = false;
   
  }
  
  
  }
  else{
highlightMode = false;
  }
  ////textSize(labelsize);
//text(label, labelX,labelY);
 //text(label, labelX,labelY);
  }
 
 /**********/


void draw() {
  
  
  
  background(255);
   pushMatrix();
  textSize(10);
  stroke(0);
  fill(0);
  text("similarity threshold",91,40);
  popMatrix();
 
 textSize(labelsize);
 text(label, labelX,labelY);
 text(label2, labelX,labelY+10);
  
  int scale2Y=200;//curve config
  //line config:  scale2Y = 150;
  pushMatrix();
  translate(90, 0);
  int j;

  strokeWeight(2);

  for (int i =0; i<plot2data.length; i++) {
    if(highlight[i])
      stroke(colorsb1[i]);
    else
      stroke(red(colorsb1[i]),green(colorsb1[i]),blue(colorsb1[i]),50);
      if(highlightMode){
    if(mouseOver[i])
      strokeWeight(8);
    else
      {strokeWeight(2);
     stroke(red(colorsb1[i]),green(colorsb1[i]),blue(colorsb1[i]),20);
      }
      }
      else
      {strokeWeight(2);
       stroke(colorsb1[i]);
    }
      
    noFill();
    beginShape();
    curveVertex(0, plot2data[i][0]);
    for (j = 0; j<6; j++) {
      curveVertex(j*scale2Y, plot2data[i][j]);
      //line(j*scale2Y, plot2data[i][j]*(scale2), (j+1)*scale2Y, plot2data[i][j+1]*(scale2));
    }
    curveVertex((j-1)*scale2Y, plot2data[i][j-1]);
    endShape();
  }   

  popMatrix();
 
  legend(450);
  tick(400);
}
public void tick(int posY) {
  //  println(""+xLabels[0]);

  pushMatrix();
  translate(90, posY);
  stroke(0);
  for (int i = 2; i<xLabels.length; i++) {
    int x= (i-2)*200;
    strokeWeight(1);
    line(x, 0, x, 5);
    // point(x,0);
    //point(x,5);
    // noStroke();
    textSize(12);
    text(xLabels[i], x-20, 20);
  }
  popMatrix();
}


void sliderTicks2(float thre) { 
  //println(thre);

  if (thre-0.1<MIN) {

    points1 = loadData("./data/0.1points.csv");
    plot2data = points1;
  } else if (thre-0.2<MIN) {
    points2 =  loadData("./data/0.2points.csv");
    plot2data = points2;
  } else if (thre-0.3<MIN) {
    points3 = loadData("./data/0.3points.csv");
    plot2data = points3;
  } else if (thre-0.4<MIN) {
    points4 = loadData("./data/0.4points.csv");
    plot2data = points4;
  } else if (thre-0.5<MIN) {
    points5 = loadData("./data/0.5points.csv");
    plot2data = points5;
    //yTitles = legend5;
  } else if (thre-0.6<MIN) {
    points6 =  loadData("./data/0.6points.csv");
    plot2data = points6;
    //yTitles = legend6;
  } else if (thre-0.7<MIN) {
    points7 = loadData("./data/0.7points.csv");
    plot2data = points7;
    //yTitles = legend7;
  } else if (thre-0.8<MIN) {

    points8 = loadData("./data/0.8points.csv");
    plot2data = points8;
  } else if (thre-0.9<MIN) {

    points9 = loadData("./data/0.9points.csv");
    plot2data = points9;
  }
  draw();
}
public void writeout(String name, float[][] array) {
  /* output the positions */
  float[][] bydaydata = array;
  PrintWriter output =  createWriter(name);
  for (int i = 0; i<bydaydata.length; i++)
  {
    for (int j = 0; j<bydaydata[0].length; j++) {
      output.print(bydaydata[i][j] + "," );
    }
    output.println();
  }
  output.flush(); // Writes the remaining data to the file
  output.close();

  /*output end */
}


public float[][] loadData(String path) {
  float[][] points = new float[39][7];
  String[] lines = loadStrings(path);




  float[][] values = new float[lines.length][7];
  for (int i = 0; i < lines.length; i++) {
    String[] data = splitTokens(trim(lines[i]), ",");

    for (int j = 0; j < data.length; j++) {
      values[i][j] = Float.parseFloat(data[j])*scale2+100;
      //println("v="+values[i][j]);}
    }
    points=values;

    plot2data = values;
    category = points.length;
  } 
  return points;
  
}
public void loadLegend(String path, String[] legends) {

  String[] lines = loadStrings(path);





  String[] values = new String[lines.length];
  for (int i = 0; i < lines.length; i++) {
    values[i] =  lines[i];


    yTitles = values;

    legends =values;
  }
}
public void legend(int posy) {
  int t;
  int s;

  t =12;
  s = 25;
  int thres = ceil(category/6);
  for (int i = 0; i<thres; i++) {
    pushMatrix();


    noStroke();
    translate(80, posy+s*i);
   // fill(colorsb1[i]);
   // rect(0, 0, 20, 20);
    stroke(0);
    fill(0);
    textSize(t);
    strokeWeight(4);
    //  textMode(CENTER);
    text(yTitles[i], 23, 15);
    popMatrix();
  }
  for (int i = thres; i<2*thres; i++) {
    pushMatrix();


    noStroke();
    translate(80+interval*1, posy+s*(i-thres));
   // fill(colorsb1[i]);
   // rect(0, 0, 20, 20);
    stroke(0);
    fill(0);
    textSize(t);
    strokeWeight(4);
    //  textMode(CENTER);
    text(yTitles[i], 23, 15);
    popMatrix();
  }
  for (int i = 2*thres; i<3*thres; i++) {
    pushMatrix();


    noStroke();
    translate(80+interval*2, posy+s*(i-2*thres));
  //  fill(colorsb1[i]);
    //rect(0, 0, 20, 20);
    stroke(0);
    fill(0);
    textSize(t);
    strokeWeight(4);
    //  textMode(CENTER);
    text(yTitles[i], 23, 15);
    popMatrix();
  }
  for (int i = 3*thres; i<4*thres; i++) {
    pushMatrix();


    noStroke();
    translate(80+interval*3, posy+s*(i-3*thres));
  //  fill(colorsb1[i]);
    //rect(0, 0, 20, 20);
    stroke(0);
    fill(0);
    textSize(t);
    strokeWeight(4);
    //  textMode(CENTER);
    text(yTitles[i], 23, 15);
    popMatrix();
  }
  for (int i = 4*thres; i<5*thres; i++) {
    pushMatrix();


    noStroke();
    translate(80+interval*4, posy+s*(i-4*thres));
  //  fill(colorsb1[i]);
  //  rect(0, 0, 20, 20);
    stroke(0);
    fill(0);
    textSize(t);
    strokeWeight(4);
    //  textMode(CENTER);
    text(yTitles[i], 23, 15);
    popMatrix();
  }
  for (int i = 5*thres; i<6*thres; i++) {
    pushMatrix();


    noStroke();
    translate(80+interval*5, posy+s*(i-5*thres));
   // fill(colorsb1[i]);
    //rect(0, 0, 20, 20);
    stroke(0);
    fill(0);
    textSize(t);
    strokeWeight(4);
    //  textMode(CENTER);
    text(yTitles[i], 23, 15);
    popMatrix();
  }
  for (int i = 6*thres; i<category; i++) {
    pushMatrix();


    noStroke();
    translate(80+interval*6, posy+s*(i-6*thres));
  //  fill(colorsb1[i]);
  //  rect(0, 0, 20, 20);
    stroke(0);
    fill(0);
    textSize(t);
    strokeWeight(4);
    //  textMode(CENTER);
    text(yTitles[i], 23, 15);
    popMatrix();
  }
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isFrom(cb1)) {
    // checkbox uses arrayValue to store the state of 
    // individual checkbox-items. usage:
   
    for (int i=0;i<cb1.getArrayValue().length;i++) {
      int n = (int)cb1.getArrayValue()[i];
   
      if(n==1) {
     //   println("1get from "+i);
        highlight[i] = true;
      }
      else {
       highlight[i] = false;

      }
    }
       

 
  }
  else if(theEvent.isFrom(cb2)){
for (int i=0;i<cb2.getArrayValue().length;i++) {
      int n = (int)cb2.getArrayValue()[i];
   
      if(n==1) {
  //      println("2get from "+i);
        highlight[i+6] = true;
      }
      else {
       highlight[i+6] = false;

      }
    }
  
  }
    else if(theEvent.isFrom(cb3)){
for (int i=0;i<cb3.getArrayValue().length;i++) {
      int n = (int)cb3.getArrayValue()[i];
   
      if(n==1) {
     //   println("3get from "+i);
        highlight[i+12] = true;
      }
      else {
       highlight[i+12] = false;

      }
    }
  
  }  else if(theEvent.isFrom(cb4)){
for (int i=0;i<cb4.getArrayValue().length;i++) {
      int n = (int)cb4.getArrayValue()[i];
   
      if(n==1) {
    //    println("4get from "+i);
        highlight[i+18] = true;
      }
      else {
       highlight[i+18] = false;

      }
    }
  
  }  else if(theEvent.isFrom(cb5)){
for (int i=0;i<cb5.getArrayValue().length;i++) {
      int n = (int)cb5.getArrayValue()[i];
   
      if(n==1) {
     //   println("5get from "+i);
        highlight[i+24] = true;
      }
      else {
       highlight[i+24] = false;

      }
    }
  
  }  else if(theEvent.isFrom(cb6)){
for (int i=0;i<cb6.getArrayValue().length;i++) {
      int n = (int)cb6.getArrayValue()[i];
   
      if(n==1) {
   //     println("6get from "+i);
        highlight[i+30] = true;
      }
      else {
       highlight[i+30] = false;

      }
    }
  
  }  else if(theEvent.isFrom(cb7)){
for (int i=0;i<cb7.getArrayValue().length;i++) {
      int n = (int)cb7.getArrayValue()[i];
   
      if(n==1) {
  //      println("7get from "+i);
        highlight[i+36] = true;
      }
      else {
       highlight[i+36] = false;

      }
    }
  
  }
  
}


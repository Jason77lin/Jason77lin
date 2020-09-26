var k = 0;
function setup(){
    createCanvas(windowWidth, windowHeight);
  noStroke();
  loop();
  createCanvas(800,800);
  background(0);
}

function draw(){
    fill(0);
  ellipse(width/2, height/2, mouseY, mouseY);
  fill(255);
  arc(width/2, height/2, mouseY, mouseY, PI + k, TWO_PI + (TWO_PI*(mouseX/windowWidth*3)) + k);
  k = k+0.01;
  fill(0);
  ellipse(330,300,80,80,0, PI+TWO_PI);//ears
  ellipse(450,300,80,80,0, PI+TWO_PI);
  fill(255, 255, 255);
  noStroke();
  stroke(0);
  ellipse(width/2,height/2, 230, 200);//head
  fill(255);
  stroke(153);
  noStroke();
  fill(0,0,0);
  arc(375,360,50,50,0, PI+TWO_PI);//eyes
  arc(450,360,50,50,0, PI+TWO_PI);
  ellipse(420,400,30,30,0, PI+QUARTER_PI, CHORD);//nose
  line( 30, 20, 85, 20);
    stroke(0);
  fill(255,255,255);



  arc(385,370,15,15,0, PI+TWO_PI);//pupils
  arc(460,370,15,15,0, PI+TWO_PI);



  if (mouseIsPressed) {
    fill(127, 0, 0)
         arc(385,370, 20,20,0, PI+TWO_PI);//pupils
  arc(460,370,20,20,0, PI+TWO_PI);}


}

function pieChart(diameter, data) {
  var lastAngle = 0;
  for (var i = 0; i < data.length; i++) {
    var gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
    println(lastAngle);
  }

}
}
//🟢setup Function - will run once
setup = function() {
    size(1200, 800);
    background(255,255,255,0);
    img= loadImage("https://cdn.glitch.global/a6bf6479-6e60-4154-84ab-d76bca682eeb/398032677_dfab408834_b.jpg?v=1738855514515");
    
};


//🟢draw Function - will run on repeat
draw = function(){
};

var count = 0;




//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

drawFish(random(0,1200),random(0,800));
drawBubble(random(0,1200),random(0,800));
drawBubble(random(0,1200),random(0,800));
drawCrab(random(0,1200),random(750,800));
drawShell(random(0,1200),random(750,800));

count++;
if (count>19) {

image(img,0,0,1200,800);

var audio = new Audio('https://cdn.glitch.global/a6bf6479-6e60-4154-84ab-d76bca682eeb/Scary%20Woman%20Screaming%20-%20Sound%20Effect%20(HD).mp3?v=1738940850437');
audio.volume = 1.0;
audio.play();


}


}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(random(80,200));
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

var drawBubble = function(bubbleX, bubbleY){
  fill(20,200,200,100)
  ellipse(bubbleX, bubbleY, 30, 30);
};

var drawCrab = function(crabX, crabY, crabColor){
  textSize(random(60,180));
  fill(crabColor);
  text("🦀", crabX, crabY);
};

var drawShell = function(shellX, shellY, shellColor){
  textSize(random(20,50));
  fill(shellColor);
  text("🐚", shellX, shellY);
};


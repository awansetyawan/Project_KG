 size(1000, 500);
 background(198, 61, 47); // Jingga Gelap
 
 stroke(253, 132, 31);
 fill(253, 132, 31);
 rect(0, 0, 1000, 160);
 
 stroke(225, 77, 42);
 fill(225, 77, 42);
 rect(0, 160, 1000, 190);
 
 // Rel Kereta
 stroke(0, 0, 0);
 strokeCap(SQUARE);
 strokeWeight(10);
 line(0, 455, 1000, 455);
 
 // Tanah
 stroke(130, 0, 0);
 strokeWeight(41);
 line(0, 479, 1000, 479);
 
 strokeWeight(2);
  
 // Matahari
 stroke(255, 225, 93);
 fill(255, 225, 93);
 circle(930, 30, 250);
 
 // Awan
 stroke(255, 188, 128);
 fill(255, 188, 128);
 
 circle(60, 130, 60);
 circle(90, 105, 60);
 circle(110, 135, 60);
 
 circle(300, 100, 60);
 circle(330, 75, 60);
 circle(350, 105, 60);
 
 circle(600, 50, 60);
 circle(630, 25, 60);
 circle(650, 55, 60);
 
 circle(800, 110, 60);
 circle(830, 85, 60);
 circle(850, 115, 60);
 
 circle(920, 150, 60);
 circle(950, 125, 60);
 circle(970, 155, 60);
 
 // Asap
 stroke(216, 217, 218);
 fill(216, 217, 218);
 circle(650, 220, 30);
 circle(645, 200, 40);
 circle(630, 170, 40);
 circle(610, 150, 45);
 
 stroke(0, 0, 0);

 // Ban Kepala Kereta
 fill(39, 40, 41);
 circle(540, 410, 80);
 circle(650, 410, 80);
 fill(50, 50, 50);
 circle(540, 410, 65);
 circle(650, 410, 65);
 fill(97, 103, 122);
 circle(540, 410, 35);
 circle(650, 410, 35);
 // Cerobong
 fill(97, 103, 122);
 rect(630, 250, 40, 20);
 fill(57, 54, 70);
 rect(640, 270, 30, 60);
 // Kepala Kereta
 fill(57, 54, 70);
 rect(470, 190, 140, 20);
 fill(97, 103, 122);
 square(480, 210, 120);
 fill(39, 40, 41);
 square(500, 230, 80);
 fill(57, 54, 70);
 rect(480, 330, 220, 30);
 rect(700, 310, 20, 50);
 fill(97, 103, 122);
 rect(480, 360, 240, 50);
 arc(720, 385, 60, 50, radians(-90), radians(90)); // Setengah Lingkaran
 fill(97, 103, 122);
 circle(520, 345, 20);
 circle(570, 345, 20);
 circle(620, 345, 20);
 circle(670, 345, 20);

 
 // Sambungan Ke Gerbong 1
 fill(50, 50, 50);
 rect(440, 380, 40, 20);
 
 // Ban Gerbong 1
 fill(39, 40, 41);
 circle(260, 410, 80);
 circle(370, 410, 80);
 fill(50, 50, 50);
 circle(260, 410, 65);
 circle(370, 410, 65);
 fill(97, 103, 122);
 circle(260, 410, 35);
 circle(370, 410, 35);
 // Gerbong Penumpang 1
 fill(57, 54, 70);
 rect(180, 240, 270, 20);
 fill(97, 103, 122);
 rect(190, 260, 250, 100);
 fill(57, 54, 70);
 rect(190, 360, 250, 50);
 // Jendela Gerbong 1
 fill(39, 40, 41);
 rect(205, 275, 40, 70);
 rect(265, 275, 40, 70);
 rect(325, 275, 40, 70);
 rect(385, 275, 40, 70);
 
 // Sambungan Ke Gerbong 2
 fill(50, 50, 50);
 rect(150, 380, 40, 20);
 
 // Ban Gerbong 2
 fill(39, 40, 41);
 circle(70, 410, 80);
 fill(50, 50, 50);
 circle(70, 410, 65);
 fill(97, 103, 122);
 circle(70, 410, 35);
 // Gerbong Penumpang 2
 fill(57, 54, 70);
 rect(0, 240, 160, 20);
 fill(97, 103, 122);
 rect(0, 260, 150, 100);
 fill(57, 54, 70);
 rect(0, 360, 150, 50);
 // Jendela Gerbong 2
 fill(39, 40, 41);
 rect(0, 275, 15, 70);
 rect(35, 275, 40, 70);
 rect(95, 275, 40, 70);

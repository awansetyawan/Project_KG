int numStars = 150; // Jumlah Bintang

float[] starX = new float[150];
float[] starY = new float[150];
float[] starSize = new float[150];
float[] scaleFactor = new float[150];

// Nilai awal skala atmosfir bulan
float scaleValueMoon = 1.0;

// Nilai awal skala atmosfir bumi
float scaleValueEarth = 1.0;

float earthX = 550; // Koordinat awal X bumi
float earthSpeed = 1; // Kecepatan gerak bumi

void setup(){
  size(800, 765);
  
  buatBintang(); // Memanggil fungsi membuat bintang
}

void draw(){
  // Fungsi Background
  drawBackground();
  
  // Fungsi Nama
  drawNama();
  
  // Fungsi Gambar Bulan
  drawMoon();
  
  // Fungsi Efek1 Bulan
  drawEffectMoon1();
  
  // Fungsi Efek2 Bulan
  drawEffectMoon2();
  
  // Fungsi Efek3 Bulan
  drawEffectMoon3();
  
  // Fungsi Efek Bayangan Bintik
  drawEffectShadow();
  
  // Fungsi Gambar Astronot
  drawAstronot();
  
  // Fungsi Gambar Bumi
  drawEarth();
}

void drawBackground(){
  background(40, 0, 114);
  
  // Menggambar bintang
  drawBintang();
}

void drawAstronot(){
  // Bayangan Astronot
  pushMatrix(); // Simpan Perubahan
  
  translate(195, 631); // Pusat rotasi
  rotate(radians(15)); // Rotasi
  fill(197, 116, 255);
  rect(0, 0, 80, 145, 10);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(197, 631); // Pusat rotasi
  rotate(radians(15)); // Rotasi
  strokeWeight(5);
  stroke(222, 137, 255);
  line(0, 60, 0, 110);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(277, 631); // Pusat rotasi
  rotate(radians(15)); // Rotasi
  strokeWeight(5);
  stroke(222, 137, 255);
  line(0, 75, 0, 125);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(273, 631); // Pusat rotasi
  rotate(radians(15)); // Rotasi
  strokeWeight(3);
  stroke(221, 136, 253);
  line(0, 42, 0, 60);
  
  popMatrix(); // Kembali default

  stroke(255, 243, 243);
  strokeWeight(20);
  // Sepatu
  line(245, 640, 265, 640);
  line(210, 640, 223, 640);
  
  stroke(255, 235, 236);
  strokeWeight(8);
  line(242, 646, 260, 646);
  line(207, 646, 223, 646);
  
  // Kaki
  stroke(255, 243, 243);
  strokeWeight(30);
  line(215, 570, 215, 623);
  line(250, 510, 250, 623);
  
  stroke(255, 235, 236);
  strokeWeight(7);
  line(211, 570, 211, 628);
  line(242, 510, 242, 628);
  
  // Kepala
  strokeWeight(30);
  stroke(255, 243, 243);
  fill(255, 243, 243);
  circle(237, 467, 40);
  
  // Tangan
  stroke(255, 243, 243);
  strokeWeight(25);
  line(265, 575, 265, 575);
  strokeWeight(20);
  line(265, 516, 265, 560);
  stroke(248, 194, 230);
  line(195, 575, 195, 575);
  
  // Efek ditangan
  strokeWeight(7);
  stroke(255, 235, 237);
  line(257, 516, 257, 560);
  
  strokeWeight(3);
  stroke(251, 221, 255);
  line(253, 519, 253, 560);
  
  strokeWeight(12);
  stroke(243, 215, 229);
  line(262, 575, 262, 578);
  strokeWeight(11);
  stroke(248, 194, 230);
  line(259, 575, 259, 579);
  
  // Bagian Kepala
  noStroke();
  fill(100, 32, 255);
  arc(255, 467, 36, 59, radians(-90), radians(90)); 
  fill(125, 30, 254);
  arc(264, 467, 18, 48, radians(-90), radians(90)); 
  
  fill(255, 201, 253);
  circle(241, 464, 25);
  
  fill(223, 188, 255);
  circle(244, 464, 23);
  
  fill(255, 221, 254);
  circle(247, 464, 21);
  
  stroke(254, 124, 148);
  strokeWeight(2);
  line(247, 455, 247, 472);
  
  noStroke();
  fill(254, 124, 148);
  circle(247, 464, 7);
  
  // Tabung Oksigen
  noStroke();
  fill(223, 188, 255);
  rect(200, 490, 46, 90, 10);
  fill(255, 243, 243);
  rect(185, 490, 46, 90, 10);
  fill(255, 235, 236);
  rect(190, 505, 35, 60, 15);
  
  stroke(243, 212, 228);
  strokeWeight(2);
  line(194, 498, 207, 498);
  
  stroke(96, 219, 253);
  strokeWeight(4);
  line(213, 498, 217, 498);
  
  stroke(255, 97, 182);
  line(223, 498, 226, 498);
  
  stroke(242, 214, 229);
  strokeWeight(4);
  line(194, 570, 211, 570);
  line(219, 570, 222, 570);
  
  stroke(209, 159, 255);
  strokeWeight(3);
  line(236, 502, 236, 567);
  line(242, 502, 242, 567);
}

void drawMoon(){
  noStroke();

  // Skala berdasarkan waktu
  scaleValueMoon = 1.0 + abs(sin(frameCount * 0.01)) * 0.1; // abs() berfungsi untuk mendapat nilai selalu +
  
  pushMatrix(); // Simpan perubahan
  translate(300, 870);
  scale(scaleValueMoon); // Faktor skala
  fill(45, 1, 125);
  ellipse(0, 0, 1250, 850); // Atmosfir 1
  popMatrix(); // Kembali default

  pushMatrix(); // Simpan perubahan matriks
  translate(300, 870);
  scale(scaleValueMoon); // Faktor skala
  fill(56, 0, 159);
  ellipse(0, 0, 1150, 750); // Atmosfir 2
  popMatrix(); // Kembali default
 
  strokeWeight(8);
  stroke(248, 151, 255);
  fill(222, 137, 255);
  ellipse(300, 870, 1100, 700); // Bulan
  
  noStroke();
  
  pushMatrix(); // Simpan Perubahan
  
  translate(595, 663); // Pusat rotasi
  rotate(radians(23)); // Rotasi
  
  // Bayangan Bintik 1
  fill(215, 119, 255);
  ellipse(0, 0, 120, 40);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(630, 700); // Pusat rotasi
  rotate(radians(23)); // Rotasi
  
  // Bayangan Bintik 2
  fill(215, 119, 255);
  ellipse(0, 0, 50, 20);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(600, 650); // Pusat rotasi
  rotate(radians(23)); // Rotasi
  
  // Bintik 1
  fill(153, 62, 255);
  ellipse(0, 0, 120, 40);
 
  fill(167, 88, 255);
  ellipse(0, 0, 110, 30);
  
  // Garis Bintik 1
  strokeWeight(8);
  stroke(246, 149, 255);
  arc(0, 0, 115, 40, 0, PI);
  
  popMatrix(); // Kembali default
  
  noStroke();
  
  // Bintik 2
  fill(153, 62, 255);
  ellipse(330, 700, 90, 30);
  
  fill(167, 88, 255);
  ellipse(330, 700, 80, 20);
  
  // Garis Bintik 2
  strokeWeight(8);
  stroke(246, 149, 255);
  arc(330, 700, 85, 30, 0, PI);
  
  noStroke();
    
  pushMatrix(); // Simpan Perubahan
  
  translate(400, 529); // Pusat rotasi
  rotate(radians(6)); // Rotasi
  
  // Bintik 3
  fill(153, 62, 255);
  ellipse(0, 0, 90, 14);
  
  // Garis Bintik 3
  strokeWeight(8);
  stroke(246, 149, 255);
  arc(0, 0, 90, 15, 0, PI);
  
  popMatrix(); // Kembali default
  
  noStroke();
  
  // Bayangan Bintik 4
  fill(215, 119, 255);
  ellipse(55, 630, 110, 30);
  
  // Bintik 4
  fill(153, 62, 255);
  ellipse(60, 620, 90, 30);
  
  fill(167, 88, 255);
  ellipse(60, 620, 80, 20);
  
  // Garis Bintik 4
  strokeWeight(8);
  stroke(246, 149, 255);
  arc(60, 620, 90, 22, 0, PI);
}

void drawEffectMoon1(){
  strokeWeight(25);
    
  // 1
  pushMatrix(); // Simpan Perubahan
  
  translate(470, 750); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(215, 119, 255);
  line(-50, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  // 2
  pushMatrix(); // Simpan Perubahan

  translate(505, 750); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  line(-50, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  // 3
  pushMatrix(); // Simpan Perubahan

  translate(455, 700); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(222, 137, 255);
  line(-50, 0, 30, 0);
  
  popMatrix(); // Kembali default
  
  // 4
  pushMatrix(); // Simpan Perubahan
  
  translate(520, 730); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(215, 119, 255);
  line(-35, 0, 60, 0);
  
  popMatrix(); // Kembali default
  
  strokeWeight(20);
  
  // 5
  pushMatrix(); // Simpan Perubahan

  translate(572, 750); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  line(-40, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  // 6
  pushMatrix(); // Simpan Perubahan

  translate(522, 700); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(222, 137, 255);
  line(-60, 0, 30, 0);
  
  popMatrix(); // Kembali default
  
  strokeWeight(15);
  
  // 7
  pushMatrix(); // Simpan Perubahan
  
  translate(547, 700); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(215, 119, 255);
  line(10, 0, 100, 0);
  
  popMatrix(); // Kembali default
}

void drawEffectMoon2(){
  strokeWeight(10);
    
  // 1
  pushMatrix(); // Simpan Perubahan
  
  translate(635, 750); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(215, 119, 255);
  line(-10, 0, 80, 0);
  
  popMatrix(); // Kembali default
  
  // 2
  pushMatrix(); // Simpan Perubahan

  translate(649, 750); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  line(-20, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  // 3
  pushMatrix(); // Simpan Perubahan

  translate(600, 700); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(222, 137, 255);
  line(30, 0, 60, 0);
  
  popMatrix(); // Kembali default
  
  // 4
  pushMatrix(); // Simpan Perubahan
  
  translate(640, 730); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(215, 119, 255);
  line(15, 0, 60, 0);
  
  popMatrix(); // Kembali default
  
  // 5
  pushMatrix(); // Simpan Perubahan

  translate(674, 750); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  line(-40, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  // 6
  pushMatrix(); // Simpan Perubahan

  translate(625, 700); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(222, 137, 255);
  line(30, 0, 60, 0);
  
  popMatrix(); // Kembali default
  
  strokeWeight(6);
  
  // 7
  pushMatrix(); // Simpan Perubahan
  
  translate(635, 700); // Pusat rotasi
  rotate(radians(45)); // Rotasi
  
  stroke(215, 119, 255);
  line(55, 0, 100, 0);
  
  popMatrix(); // Kembali default
}

void drawEffectMoon3(){
  strokeWeight(20);
    
  // 1
  pushMatrix(); // Simpan Perubahan
  
  translate(50, 720); // Pusat rotasi
  rotate(radians(155)); // Rotasi
  
  stroke(215, 119, 255);
  line(-10, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  strokeWeight(15);
  
  // 2
  pushMatrix(); // Simpan Perubahan

  translate(40, 705); // Pusat rotasi
  rotate(radians(155)); // Rotasi
  
  line(0, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  // 3
  pushMatrix(); // Simpan Perubahan

  translate(50, 700); // Pusat rotasi
  rotate(radians(155)); // Rotasi
  
  stroke(222, 137, 255);
  line(0, 0, 20, 0);
  
  popMatrix(); // Kembali default
  
  // 4
  pushMatrix(); // Simpan Perubahan
  
  translate(50, 685); // Pusat rotasi
  rotate(radians(155)); // Rotasi
  
  stroke(215, 119, 255);
  line(20, 0, 60, 0);
  
  popMatrix(); // Kembali default
  
  strokeWeight(10);
  
  // 5
  pushMatrix(); // Simpan Perubahan

  translate(50, 675); // Pusat rotasi
  rotate(radians(155)); // Rotasi
  
  line(40, 0, 50, 0);
  
  popMatrix(); // Kembali default
  
  // 6
  pushMatrix(); // Simpan Perubahan

  translate(40, 675); // Pusat rotasi
  rotate(radians(155)); // Rotasi
  
  stroke(222, 137, 255);
  line(10, 0, 30, 0);
  
  popMatrix(); // Kembali default
  
  strokeWeight(8);
  
  // 7
  pushMatrix(); // Simpan Perubahan
  
  translate(50, 665); // Pusat rotasi
  rotate(radians(155)); // Rotasi
  
  stroke(215, 119, 255);
  line(40, 0, 100, 0);
  
  popMatrix(); // Kembali default
}

void drawEffectShadow(){
  noStroke();
  
  pushMatrix(); // Simpan Perubahan
  
  translate(470, 565); // Pusat rotasi
  rotate(radians(15)); // Rotasi
  
  // Bayangan 1
  fill(197, 116, 255);
  ellipse(0, 0, 30, 10);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(480, 583); // Pusat rotasi
  rotate(radians(18)); // Rotasi
  
  // Bayangan 2
  fill(197, 116, 255);
  ellipse(0, 0, 30, 10);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(320, 550); // Pusat rotasi
  rotate(radians(3)); // Rotasi
  
  // Bayangan 3
  fill(197, 116, 255);
  ellipse(0, 0, 50, 15);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(300, 565); // Pusat rotasi
  rotate(radians(5)); // Rotasi
  
  // Bayangan 4
  fill(190, 137, 255);
  ellipse(0, 0, 20, 10);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(690, 690); // Pusat rotasi
  rotate(radians(30)); // Rotasi
  
  // Bayangan 5
  fill(190, 137, 255);
  ellipse(0, 0, 20, 5);
  
  popMatrix(); // Kembali default
  
  pushMatrix(); // Simpan Perubahan
  
  translate(440, 680); // Pusat rotasi
  rotate(radians(30)); // Rotasi
  
  // Bayangan 6
  fill(190, 137, 255);
  ellipse(0, 0, 40, 15);
  
  popMatrix(); // Kembali default
  
  // Bayangan 7
  fill(215, 119, 255);
  ellipse(360, 630, 50, 15);
  
  // Bayangan 8
  fill(215, 119, 255);
  ellipse(300, 610, 100, 30);
  
  // Bayangan 8
  fill(197, 116, 255);
  ellipse(150, 640, 50, 15);
  
  // Bayangan 9
  fill(190, 137, 255);
  ellipse(60, 660, 45, 15);
  
  // Bayangan 10
  fill(215, 119, 255);
  ellipse(110, 565, 45, 15);
}

void drawEarth(){
  noStroke();
  
  // Skala berdasarkan waktu
  scaleValueEarth = 1.0 + abs(sin(frameCount * 0.03)) * 0.1; // abs() berfungsi untuk mendapat nilai selalu +
  
 // Menggerakkan bumi ke kiri dan ke kanan
  earthX += earthSpeed;
  
  // Jika bumi mencapai batas kiri atau kanan layar, balik arah geraknya
  if (earthX < 120 || earthX > width - 120) {
    earthSpeed *= -1;
  }
  
  pushMatrix(); // Simpan perubahan
  translate(earthX, 250);
  scale(scaleValueEarth); // Faktor skala
  fill(45, 1, 125);
  ellipse(0, 0, 210, 210); // Atmosfir 1
  popMatrix(); // Kembali default

  pushMatrix(); // Simpan perubahan
  translate(earthX, 250);
  scale(scaleValueEarth); // Faktor skala
  fill(54, 0, 150);
  ellipse(0, 0, 160, 160); // Atmosfir 2
  popMatrix(); // Kembali  default
  
  fill(0, 216, 255);
  circle(earthX, 250, 120); // Bumi
  
  pushMatrix(); // Simpan transformasi

  // Mengatur posisi roket berdasarkan roketMove
  translate(earthX-550, 0);
  
  // Pulau
  stroke(0, 177, 171);
  
  strokeWeight(10);
  line(520, 250, 540, 250);
  line(530, 258, 540, 258);
  
  strokeWeight(15);
  line(580, 250, 601, 250);
  line(570, 258, 601, 258);
  line(590, 265, 598, 265);
  
  strokeWeight(20);
  line(527, 205, 573, 205);
  line(513, 215, 550, 215);
  
  strokeWeight(8);
  line(580, 230, 600, 230);
  line(510, 280, 530, 280);
  
  strokeWeight(15);
  line(520, 290, 540, 290);
  
  // Awan
  strokeWeight(6);
  stroke(255, 255, 255);
  line(530, 285, 550, 285);
  line(510, 245, 530, 245);
  line(500, 265, 510, 265);
  line(580, 285, 593, 285);
  strokeWeight(10);
  line(540, 215, 570, 215);
  line(530, 223, 545, 223);
  line(570, 290, 583, 290);
  
  popMatrix();
}

void buatBintang() {
  for (int i = 0; i < numStars; i++) {
    starX[i] = random(width);
    starY[i] = random(height);
    starSize[i] = random(2, 4);
    scaleFactor[i] = random(0.5, 1.0);
  }
}

void drawBintang() {
 for (int i = 0; i < numStars; i++) {
   
    // Faktor skala mengatur kelap-kelip
    float scaleValue = sin(frameCount * 0.05) * 0.5 + 1.0;
    
    pushMatrix();
    
    translate(starX[i], starY[i]);
    scale(scaleFactor[i] * scaleValue); // Skala yang berubah
    
    fill(255, 221, 254);
    noStroke();
    ellipse(0, 0, starSize[i], starSize[i]);
    
    popMatrix();
  }
}

void drawNama(){
  // Nama
  textSize(20);
  fill(255, 255, 255);
  text("NIM     : 2109106002", 40, 60); 
  text("Nama : Alif Maulana Setyawan", 40, 80); 
}

void setup() {
  // LED on lähtönä
  pinMode(13,OUTPUT);
  // Alustetaan kytkin tuloksi
  pinMode(7,INPUT);
}

void loop() {
  /* Tutkitaan onko kytkintä painettu ja jos on niin 
     sytytetään LED. Muussa tapauksessa sammutetaan se.*/
     if(digitalRead(7) == HIGH)
     {
       digitalWrite(13,HIGH);
     }
     else
     {
       digitalWrite(13,LOW);
     }
     
     /* Tutkitaan tuleeko varjo LDR-vastuksen eteen. 
        Kokeile peittää anturi sormella! 
     */
     int analogLDR = analogRead(0);
     if(analogLDR > 900) //muutettiin arvo isommaksi, ettei valo pala koko ajan
     {
       digitalWrite(13,HIGH);
     }
     else
     {
       digitalWrite(13,LOW);
     }
}

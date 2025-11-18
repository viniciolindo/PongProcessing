class Player {
  // --- Attributi ---
  float x, y;      // Posizione
  float w, h;      // Dimensioni (width, height)
  float speed;     // Velocità di movimento
  int score;       // Punteggio del giocatore

  // --- Costruttore ---
  // Qui decidiamo se il player è a sinistra o a destra
  // passando la coordinata X come argomento.
  Player(float startX) {
    x = startX;
    y = height / 2; // Parte sempre al centro verticale
    
    w = 20;         // Larghezza racchetta
    h = 100;        // Altezza racchetta
    speed = 7;      // Velocità pixel per frame
    score = 0;      // Si parte da zero
  }

  // --- Metodi ---

  // Disegna la racchetta
  void show() {
    fill(255);
    noStroke();
    rectMode(CENTER); // Importante: disegniamo dal centro per facilitare i calcoli
    rect(x, y, w, h);
  }

  // Metodi specifici per il movimento
  // Invece di controllare i tasti QUI, creiamo funzioni che il main chiamerà
  void moveUp() {
    y -= speed;
    // Blocca se tocca il bordo alto
    y = constrain(y, h/2, height - h/2);
  }

  void moveDown() {
    y += speed;
    // Blocca se tocca il bordo basso
    y = constrain(y, h/2, height - h/2);
  }
}

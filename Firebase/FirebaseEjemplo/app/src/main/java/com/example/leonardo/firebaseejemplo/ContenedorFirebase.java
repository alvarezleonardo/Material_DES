package com.example.leonardo.firebaseejemplo;

import java.util.List;

/**
 * Created by leona on 15/11/2016.
 */

public class ContenedorFirebase  {
    private String Comida, Pelicula;

    private List<Timeline> timeline;

    public String getComida() {
        return Comida;
    }

    public void setComida(String comida) {
        Comida = comida;
    }

    public String getPelicula() {
        return Pelicula;
    }

    public void setPelicula(String pelicula) {
        Pelicula = pelicula;
    }
}

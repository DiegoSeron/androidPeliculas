package com.example.peliculas_api.entities;


import com.google.gson.annotations.SerializedName;

import java.util.ArrayList;

public class Index {
/*    @SerializedName("cines")
    private ArrayList<Cines> cines;*/

    @SerializedName("peliculas")
    private ArrayList<Peliculas> peliculas;

    public ArrayList<Peliculas> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(ArrayList<Peliculas> peliculas) {
        this.peliculas = peliculas;
    }

   @SerializedName("peliculasDrama")
    private ArrayList<Peliculas> peliculasdrama;

    public ArrayList<Peliculas> getPeliculasDrama() {
        return peliculasdrama;
    }

    public void setPeliculasDrama(ArrayList<Peliculas> peliculasdrama) {
        this.peliculasdrama = peliculasdrama;
    }

    @SerializedName("peliculasDeporte")
    private ArrayList<Peliculas> peliculasdeporte;

    public ArrayList<Peliculas> getPeliculasDeporte() {
        return peliculasdeporte;
    }

    @SerializedName("peliculasBiografica")
    private ArrayList<Peliculas> peliculasbiografica;

    public ArrayList<Peliculas> getPeliculasBiografica() {
        return peliculasbiografica;
    }

    public void setPeliculasBiografica(ArrayList<Peliculas> peliculasbiografica) {
        this.peliculasbiografica = peliculasbiografica;
    }

    @SerializedName("peliculasEpica")
    private ArrayList<Peliculas> peliculasepica;

    public ArrayList<Peliculas> getPeliculasEpica() {
        return peliculasepica;
    }

    public void setPeliculasEpica(ArrayList<Peliculas> peliculasepica) {
        this.peliculasepica = peliculasepica;
    }

    @SerializedName("peliculasBelica")
    private ArrayList<Peliculas> peliculasbelica;

    public ArrayList<Peliculas> getPeliculasBelica() {
        return peliculasbelica;
    }

    public void setPeliculasBelica(ArrayList<Peliculas> peliculasbelica) {
        this.peliculasbelica = peliculasbelica;
    }

    @SerializedName("peliculasComedia")
    private ArrayList<Peliculas> peliculascomedia;

    public ArrayList<Peliculas> getPeliculasComedia() {
        return peliculascomedia;
    }

    public void setPeliculasComedia(ArrayList<Peliculas> peliculascomedia) {
        this.peliculascomedia = peliculascomedia;
    }

    @SerializedName("peliculasAcion")
    private ArrayList<Peliculas> peliculasaccion;

    public ArrayList<Peliculas> getPeliculasAccion() {
        return peliculasaccion;
    }

    public void setPeliculasAccion(ArrayList<Peliculas> peliculasaccion) {
        this.peliculasaccion = peliculasaccion;
    }

    @SerializedName("peliculasMasvotadas")
    private ArrayList<Peliculas> peliculasMasvotadas;

    public ArrayList<Peliculas> getPeliculasMasvotadas() {
        return peliculasMasvotadas;
    }

    public void setPeliculasMasvotadas(ArrayList<Peliculas> peliculasMasvotadas) {
        this.peliculasMasvotadas = peliculasMasvotadas;
    }

    @SerializedName("fichatecnica")
    private ArrayList<Peliculas> peliculasFicha;

    public ArrayList<Peliculas> getPeliculasFicha() {
        return peliculasFicha;
    }

    public void setPeliculasFicha(ArrayList<Peliculas> peliculasFicha) {
        this.peliculasFicha = peliculasFicha;
    }
}

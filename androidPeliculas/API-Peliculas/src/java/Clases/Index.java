/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;

/**
 *
 * @author S1-PC52
 */
public class Index {

    ArrayList<Peliculas> peliculas = new ArrayList<Peliculas>();
    ArrayList<Cines>cines = new ArrayList<Cines>();
    ArrayList<Peliculas> peliculasDrama = new ArrayList<Peliculas>();
    ArrayList<Peliculas> peliculasDeporte = new ArrayList<Peliculas>();
    ArrayList<Peliculas> peliculasBiografica = new ArrayList<Peliculas>();
    ArrayList<Peliculas> peliculasEpica = new ArrayList<Peliculas>();
    ArrayList<Peliculas> peliculasBelica = new ArrayList<Peliculas>();
    ArrayList<Peliculas> peliculasComedia = new ArrayList<Peliculas>();
    ArrayList<Peliculas> peliculasAcion = new ArrayList<Peliculas>();
    ArrayList<Peliculas> peliculasMasvotadas = new ArrayList<Peliculas>();
    ArrayList<Peliculas> fichatecnica = new ArrayList<Peliculas>();

    public Index() {
    }

    public ArrayList<Peliculas> getFichatecnica() {
        return fichatecnica;
    }

    public void setFichatecnica(ArrayList<Peliculas> fichatecnica) {
        this.fichatecnica = fichatecnica;
    }

    public ArrayList<Peliculas> getPeliculasDrama() {
        return peliculasDrama;
    }

    public void setPeliculasDrama(ArrayList<Peliculas> peliculasDrama) {
        this.peliculasDrama = peliculasDrama;
    }

    public ArrayList<Peliculas> getPeliculasDeporte() {
        return peliculasDeporte;
    }

    public void setPeliculasDeporte(ArrayList<Peliculas> peliculasDeporte) {
        this.peliculasDeporte = peliculasDeporte;
    }

    public ArrayList<Peliculas> getPeliculasBiografica() {
        return peliculasBiografica;
    }

    public void setPeliculasBiografica(ArrayList<Peliculas> peliculasBiografica) {
        this.peliculasBiografica = peliculasBiografica;
    }

    public ArrayList<Peliculas> getPeliculasEpica() {
        return peliculasEpica;
    }

    public void setPeliculasEpica(ArrayList<Peliculas> peliculasEpica) {
        this.peliculasEpica = peliculasEpica;
    }

    public ArrayList<Peliculas> getPeliculasBelica() {
        return peliculasBelica;
    }

    public void setPeliculasBelica(ArrayList<Peliculas> peliculasBelica) {
        this.peliculasBelica = peliculasBelica;
    }

    public ArrayList<Peliculas> getPeliculasComedia() {
        return peliculasComedia;
    }

    public void setPeliculasComedia(ArrayList<Peliculas> peliculasComedia) {
        this.peliculasComedia = peliculasComedia;
    }

    
    
    public ArrayList<Peliculas> getPeliculasAcion() {
        return peliculasAcion;
    }

    public void setPeliculasAcion(ArrayList<Peliculas> peliculasAcion) {
        this.peliculasAcion = peliculasAcion;
    }

    public ArrayList<Peliculas> getPeliculasMasvotadas() {
        return peliculasMasvotadas;
    }

    public void setPeliculasMasvotadas(ArrayList<Peliculas> peliculasMasvotadas) {
        this.peliculasMasvotadas = peliculasMasvotadas;
    }

    public ArrayList<Peliculas> getPeliculas() {
        return peliculas;
    }

    public void setPeliculas(ArrayList<Peliculas> peliculas) {
        this.peliculas = peliculas;
    }

    public ArrayList<Cines> getCines() {
        return cines;
    }

    public void setCines(ArrayList<Cines> cines) {
        this.cines = cines;
    }
    
    

    public static String toArrayJSon(ArrayList<Index> index) {
        GsonBuilder builder = new GsonBuilder();
        builder.setPrettyPrinting();

        Gson gson = builder.create();
        String resp = gson.toJson(index);

        return resp;
    }

}

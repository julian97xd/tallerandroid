package com.julian.parcial;

import android.os.Parcel;
import android.os.Parcelable;

public class Equipo implements Parcelable {
    private String nombre, director, ciudad, campeonatosWin;

    public Equipo(String nombre, String director, String ciudad, String campeonatosWin) {
        this.nombre = nombre;
        this.director = director;
        this.ciudad = ciudad;
        this.campeonatosWin = campeonatosWin;
    }

    protected Equipo(Parcel in) {
        nombre = in.readString();
        director = in.readString();
        ciudad = in.readString();
        campeonatosWin = in.readString();
    }

    public static final Creator<Equipo> CREATOR = new Creator<Equipo>() {
        @Override
        public Equipo createFromParcel(Parcel in) {
            return new Equipo(in);
        }

        @Override
        public Equipo[] newArray(int size) {
            return new Equipo[size];
        }
    };

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getCampeonatosWin() {
        return campeonatosWin;
    }

    public void setCampeonatosWin(String campeonatosWin) {
        this.campeonatosWin = campeonatosWin;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(nombre);
        dest.writeString(director);
        dest.writeString(ciudad);
        dest.writeString(campeonatosWin);
    }
}

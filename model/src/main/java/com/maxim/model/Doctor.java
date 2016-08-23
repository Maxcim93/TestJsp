package com.maxim.model;

/**
 * Created by Максим on 22.08.2016.
 */
public class Doctor {
    public static enum Specialization {SURGEON,OCULIST, THERAPIST}

    private String name;
    private Specialization specialization;
    public Doctor(String name, Specialization specialization){
        this.name=name;
        this.specialization=specialization;
    }

    public String getName(){return name;}
    public Specialization getSpecialization(){return specialization;}
}

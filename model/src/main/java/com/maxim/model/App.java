package com.maxim.model;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        Registry registry =new Registry();
        registry.addDoctor(new Doctor("doctor#1",Doctor.Specialization.OCULIST));
        registry.writeToAcceptPatient(new Patient("patient#1"),Doctor.Specialization.OCULIST);

    }
}

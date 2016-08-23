package com.maxim.model;

import javax.print.Doc;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by Максим on 22.08.2016.
 */
public class Registry {
    private static Registry registry = new Registry();
    private  Map<Doctor,LinkedList<Patient>> schedule=
            new HashMap<Doctor,LinkedList<Patient>>();

    public void addDoctor(Doctor doctor){
        registry.schedule.put(doctor,new LinkedList<Patient>());
    }

    public void writeToAcceptPatient(Patient patient, Doctor.Specialization specialization){
        for(Map.Entry<Doctor,LinkedList<Patient>> doctor: registry.schedule.entrySet())
            if(doctor.getKey().getSpecialization().equals(specialization))
                doctor.getValue().add(patient);
    }

    public Map<Doctor,LinkedList<Patient>> getSchedule(){return registry.schedule;}
    public static Registry getInstance(){return registry;}
}

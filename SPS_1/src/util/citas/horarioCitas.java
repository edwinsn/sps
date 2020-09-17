package util.citas;

import java.util.ArrayList;

public class horarioCitas {

	ArrayList<ArrayList<ArrayList<cita>>> citas=new ArrayList<ArrayList<ArrayList<cita>>>();
	
	
	public horarioCitas() {
		for(int i=0;i<5;i++) {
			citas.add(new ArrayList<ArrayList<cita>>());
		
			for(int j=0;j<6;j++) {
				citas.get(i).add(new ArrayList<cita>());
			}
		}
	}
	
	public String toString() {
		String lista="";
		for(int i=0;i<5;i++) {
			lista+="Semana: "+i+"\n";
			for(int j=0;j<citas.get(i).size();j++) {
				lista+="Día: "+j+"\n";
				for(int k=0;k<citas.get(i).get(j).size();k++) {
				lista+=citas.get(i).get(j).get(k).toString()+"\n";
				}
			}
		}
		
		return lista;
	}
	public cita get(int i,int j,int k) {
		try {
		return citas.get(i).get(j).get(k);
		}
		catch(java.lang.IndexOutOfBoundsException e) {
			System.out.println("Vacio!");
			return null;	
		}
	}
	public void add(cita c,int semana,int dia) {
		citas.get(semana).get(dia).add(c);
	}
}

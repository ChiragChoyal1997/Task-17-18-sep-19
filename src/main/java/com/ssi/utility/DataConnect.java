package com.ssi.utility;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DataConnect {
	
	private static DataConnect dataconnect = null;
	private static SessionFactory sf = null;
	
	private DataConnect() {
		Configuration config=new Configuration().configure();
		sf = config.buildSessionFactory();
	}
	
	public static DataConnect getInstance() 
    { 
        if (dataconnect == null) 
            dataconnect = new DataConnect(); 
  
        return dataconnect; 
    }

	public SessionFactory getSf() {
		return sf;
	}

}

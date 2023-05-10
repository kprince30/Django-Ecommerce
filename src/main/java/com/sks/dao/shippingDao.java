/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sks.dao;

import com.sks.entities.shippingDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author HP
 */
public class shippingDao {

    private Connection con;

    public shippingDao(Connection con) {
        this.con = con;
    }
    
    //method to insert category to database
    
    public boolean saveShippingDetails(shippingDetails sh){
    boolean f=false;
        try{
            //category-->database
            String query="INSERT INTO shipping(username,address,contact) VALUES (?,?,?)";
            PreparedStatement pstmt= con.prepareStatement(query);

            pstmt.setString(1,sh.getUserName());
            pstmt.setString(2,sh.getAddress());
            pstmt.setString(3,sh.getContact() );
            
            
            pstmt.executeUpdate();
            f=true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
}


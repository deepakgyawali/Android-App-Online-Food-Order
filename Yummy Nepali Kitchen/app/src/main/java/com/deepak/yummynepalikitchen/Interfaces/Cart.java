package com.deepak.yummynepalikitchen.Interfaces;



import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

/*
 * Created by www.deepakgyawali.com.np on 28/11/2017.
 */

public class Cart implements Serializable {

    @SerializedName("id")
    public int id;

    @SerializedName("name")
    public String orderName;

    @SerializedName("description")
    public String description;

    @SerializedName("quantity")
    public int quantity;

    @SerializedName("price")
    public double price;

    @SerializedName("img_url")
    public String img_url;

    @SerializedName("customer")
    public String customer;

}

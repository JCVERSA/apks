package com.transsion.playercommon.data;

import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;

public class OrderCancelCallbackRequest extends TypeBean {

    @SerializedName("order_status")
    private int orderStatus;

    @SerializedName("visha_order_no")
    private String vishaOrderNo;

    public OrderCancelCallbackRequest(String str, int i) {
        this.vishaOrderNo = str;
        this.orderStatus = i;
    }
}

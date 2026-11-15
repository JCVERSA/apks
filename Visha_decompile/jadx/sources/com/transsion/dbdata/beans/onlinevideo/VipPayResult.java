package com.transsion.dbdata.beans.onlinevideo;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
public class VipPayResult extends TypeBean {

    @SerializedName("type")
    private int type;

    public int getType() {
        return this.type;
    }
}

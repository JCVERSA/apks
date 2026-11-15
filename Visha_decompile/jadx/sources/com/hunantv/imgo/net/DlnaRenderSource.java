package com.hunantv.imgo.net;

import com.hunantv.imgo.entity.JsonInterface;
import java.io.Serializable;

public class DlnaRenderSource implements JsonInterface, Serializable {
    private String info;
    private int isothercdn;
    private String status;
    private String svrip;

    public String getInfo() {
        return this.info;
    }

    public int getIsothercdn() {
        return this.isothercdn;
    }

    public String getStatus() {
        return this.status;
    }

    public String getSvrip() {
        return this.svrip;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setIsothercdn(int i) {
        this.isothercdn = i;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setSvrip(String str) {
        this.svrip = str;
    }
}

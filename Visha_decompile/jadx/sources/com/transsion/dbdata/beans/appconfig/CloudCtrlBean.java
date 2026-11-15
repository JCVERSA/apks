package com.transsion.dbdata.beans.appconfig;

public class CloudCtrlBean {
    private int onlineStatus;
    private int type;

    public int getOnlineStatus() {
        return this.onlineStatus;
    }

    public int getType() {
        return this.type;
    }

    public void setOnlineStatus(int i) {
        this.onlineStatus = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "CloudCtrl{type=" + this.type + ", onlineStatus=" + this.onlineStatus + '}';
    }
}

package com.transsion.dbdata.beans.sniff;

public class BtConfigBean {
    public static final int CLOSE = 0;
    public static final int OPEN = 1;
    public int switch_status;

    public int getSwitch_status() {
        return this.switch_status;
    }

    public boolean isOpen() {
        return this.switch_status == 1;
    }

    public void setSwitch_status(int i) {
        this.switch_status = i;
    }
}

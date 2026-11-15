package com.transsion.vishatransfer.socket;

import java.io.Serializable;

public class TransferHead implements Serializable {
    private static final long serialVersionUID = 1;
    private int phase;
    private int type;

    public int getPhase() {
        return this.phase;
    }

    public int getType() {
        return this.type;
    }

    public void setPhase(int i) {
        this.phase = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "TransferHead{phase=" + this.phase + ", type=" + this.type + '}';
    }
}

package com.mgadplus.permission;

public enum b {
    GRANT(0),
    DENIED(-1),
    IGNORE(-2);

    private int type;

    b(int i) {
        this.type = i;
    }

    public int getValue() {
        return this.type;
    }
}

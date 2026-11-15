package com.transsion.data;

public enum Repository {
    INSTANCE;


    @Deprecated
    private int listFlag;
    public int mainTab = 0;
    public boolean isLrcMode = false;

    Repository() {
    }

    public int getListFlag() {
        return this.listFlag;
    }

    public void setListFlag(int i) {
        this.listFlag = i;
    }
}

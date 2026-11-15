package com.cloud.tmc.miniapp.offlineapps;

public enum ScanType {
    LEVEL_0(0),
    LEVEL_1(1);

    private int type;

    ScanType(int i10) {
        this.type = i10;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i10) {
        this.type = i10;
    }
}

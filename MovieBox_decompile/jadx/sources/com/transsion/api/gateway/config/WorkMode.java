package com.transsion.api.gateway.config;

public enum WorkMode {
    MODE_TEST(1),
    MODE_ONLINE(3);

    private int mode;

    WorkMode(int i10) {
        this.mode = i10;
    }

    public int getMode() {
        return this.mode;
    }
}

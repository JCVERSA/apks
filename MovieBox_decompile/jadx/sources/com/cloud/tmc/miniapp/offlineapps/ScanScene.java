package com.cloud.tmc.miniapp.offlineapps;

public enum ScanScene {
    SCAN_DELETE_USED_APP(1),
    SCAN_DELETE_OFFLINEDOWNLOAD_APP(2),
    SCAN_BRIDGEAPI(3),
    SCAN_PINFORLATER(4),
    SCAN_OPEN_APP(5),
    SCAN_OFFLINEDOWNLOAD_APP(6);

    private int type;

    ScanScene(int i10) {
        this.type = i10;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i10) {
        this.type = i10;
    }
}

package com.cloud.tmc.miniapp.offlineapps;

public enum OfflineAppType {
    OFFLINE_DOWNLOAD(1),
    USED(2);

    private int type;

    OfflineAppType(int i10) {
        this.type = i10;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i10) {
        this.type = i10;
    }
}

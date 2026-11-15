package com.cloud.tmc.miniapp.base;

public enum ShowPageStatus {
    SHOULDOVERRIDEURKLOADING(1),
    PAGE_START(2),
    PAGE_PROGRESS100(3),
    PAGE_FINISHED(4);

    private int type;

    ShowPageStatus(int i10) {
        this.type = i10;
    }

    public final int getType() {
        return this.type;
    }

    public final void setType(int i10) {
        this.type = i10;
    }
}

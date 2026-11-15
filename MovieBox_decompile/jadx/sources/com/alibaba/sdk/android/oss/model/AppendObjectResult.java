package com.alibaba.sdk.android.oss.model;

public class AppendObjectResult extends OSSResult {
    private long nextPosition;
    private String objectCRC64;

    public long getNextPosition() {
        return this.nextPosition;
    }

    public String getObjectCRC64() {
        return this.objectCRC64;
    }

    public void setNextPosition(Long l10) {
        this.nextPosition = l10.longValue();
    }

    public void setObjectCRC64(String str) {
        this.objectCRC64 = str;
    }
}

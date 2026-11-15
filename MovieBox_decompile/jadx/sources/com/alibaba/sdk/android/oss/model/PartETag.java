package com.alibaba.sdk.android.oss.model;

public class PartETag {
    private long crc64;
    private String eTag;
    private int partNumber;
    private long partSize;

    public PartETag(int i10, String str) {
        setPartNumber(i10);
        setETag(str);
    }

    public long getCRC64() {
        return this.crc64;
    }

    public String getETag() {
        return this.eTag;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getPartSize() {
        return this.partSize;
    }

    public void setCRC64(long j10) {
        this.crc64 = j10;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setPartNumber(int i10) {
        this.partNumber = i10;
    }

    public void setPartSize(long j10) {
        this.partSize = j10;
    }
}

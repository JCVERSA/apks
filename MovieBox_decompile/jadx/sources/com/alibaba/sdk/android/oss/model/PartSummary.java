package com.alibaba.sdk.android.oss.model;

import java.util.Date;

public class PartSummary {
    private String eTag;
    private Date lastModified;
    private int partNumber;
    private long size;

    public String getETag() {
        return this.eTag;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getSize() {
        return this.size;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setLastModified(Date date) {
        this.lastModified = date;
    }

    public void setPartNumber(int i10) {
        this.partNumber = i10;
    }

    public void setSize(long j10) {
        this.size = j10;
    }
}

package com.wandoujia.download.model;

import java.io.Serializable;

public class SegmentInfo implements Serializable {
    private static final long serialVersionUID = 2833776197684679160L;
    private String crc;
    private String md5;
    private long seq;

    public String getCrc() {
        return this.crc;
    }

    public String getMd5() {
        return this.md5;
    }

    public long getSeq() {
        return this.seq;
    }
}

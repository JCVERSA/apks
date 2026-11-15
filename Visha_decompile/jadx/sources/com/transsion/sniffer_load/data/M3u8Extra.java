package com.transsion.sniffer_load.data;

public class M3u8Extra {
    private boolean bAudioOnly;
    private String img;
    private String resolution;
    private long size;

    public String getImg() {
        return this.img;
    }

    public String getResolution() {
        return this.resolution;
    }

    public long getSize() {
        return this.size;
    }

    public boolean isAudioOnly() {
        return this.bAudioOnly;
    }

    public void setAudioOnly(boolean z) {
        this.bAudioOnly = z;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setResolution(String str) {
        this.resolution = str;
    }

    public void setSize(long j) {
        this.size = j;
    }
}

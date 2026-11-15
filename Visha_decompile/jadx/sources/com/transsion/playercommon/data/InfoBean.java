package com.transsion.playercommon.data;

public class InfoBean {
    private String content;
    private long duration;
    private boolean multiLines;
    private int nameId;

    public InfoBean(int i, String str, long j) {
        this.nameId = i;
        this.content = str;
        this.duration = j;
    }

    public String getContent() {
        return this.content;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getNameId() {
        return this.nameId;
    }

    public boolean isMultiLines() {
        return this.multiLines;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setFileName(int i) {
        this.nameId = i;
    }

    public void setMultiLines(boolean z) {
        this.multiLines = z;
    }

    public String toString() {
        return "InfoBean{nameId='" + this.nameId + "', content='" + this.content + "', duration='" + this.duration + "'}";
    }
}

package com.wandoujia.download.model.segments;

import java.io.Serializable;

public class DownloadBlockInfo implements Serializable {
    private static final String WDJ_CDN_HOST = "dservice.wdjcdn.com";
    private static final long serialVersionUID = -5352617512880199531L;
    private int blockId;
    private long currentSize;
    private long endPos;
    private long startPos;
    private int usedUrlIndex;

    private DownloadBlockInfo() {
    }

    public DownloadBlockInfo(int i, long j, long j2, long j3, int i2) {
        this.blockId = i;
        this.startPos = j;
        this.endPos = j2;
        this.currentSize = j3;
        this.usedUrlIndex = i2;
    }

    public int getBlockId() {
        return this.blockId;
    }

    public long getCurrentSize() {
        return this.currentSize;
    }

    public long getEndPos() {
        return this.endPos;
    }

    public long getStartPos() {
        return this.startPos;
    }

    public int getUsedUrlIndex() {
        return this.usedUrlIndex;
    }

    public void setCurrentSize(long j) {
        this.currentSize = j;
    }

    public void setEndPos(long j) {
        this.endPos = j;
    }

    public void setUsedUrlIndex(int i) {
        this.usedUrlIndex = i;
    }
}

package com.aliyun.private_service;

public class TbDrmDemuxerInfo {
    private long contextAddr;
    private long createAddr;
    private long releaseAddr;

    private void setContextAddr(long j10) {
        this.contextAddr = j10;
    }

    private void setCreateAddr(long j10) {
        this.createAddr = j10;
    }

    private void setReleaseAddr(long j10) {
        this.releaseAddr = j10;
    }

    public long getContextAddr() {
        return this.contextAddr;
    }

    public long getCreateAddr() {
        return this.createAddr;
    }

    public long getReleaseAddr() {
        return this.releaseAddr;
    }
}

package com.transsion.vishatransfer.socket;

import com.transsion.socket.pkgdata.SocketData;

public abstract class TransferMessage {
    private boolean isListenProgress;
    private SocketData mData;
    private int mPhase;
    private int mType;

    public abstract void beforeSend();

    public abstract void complete();

    public SocketData getData() {
        return this.mData;
    }

    public int getPhase() {
        return this.mPhase;
    }

    public int getType() {
        return this.mType;
    }

    public boolean isListenProgress() {
        return this.isListenProgress;
    }

    public abstract void progress(long j);

    public void setData(SocketData socketData) {
        this.mData = socketData;
    }

    public void setIsListenProgress(boolean z) {
        this.isListenProgress = z;
    }

    public void setPhase(int i) {
        this.mPhase = i;
    }

    public void setType(int i) {
        this.mType = i;
    }

    public String toString() {
        return "TransferMessage{mPhase=" + this.mPhase + ", isListenProgress=" + this.isListenProgress + ", mType=" + this.mType + ", mData=" + this.mData + '}';
    }
}

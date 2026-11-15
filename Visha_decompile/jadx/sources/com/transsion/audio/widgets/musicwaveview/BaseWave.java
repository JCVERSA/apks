package com.transsion.audio.widgets.musicwaveview;

public abstract class BaseWave implements Wave {
    protected int height;
    protected volatile boolean isStop;
    protected volatile boolean pauseDraw;
    protected int width;
    protected int fCount = 512;
    protected int maxF = 10000;

    public int getFCount() {
        return this.fCount;
    }

    public int getMaxF() {
        return this.maxF;
    }

    @Override
    public void onSurfaceSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public void setFCount(int i) {
        this.fCount = i;
    }

    public void setMaxF(int i) {
        this.maxF = i;
    }

    public void setPauseDraw(boolean z) {
        this.pauseDraw = z;
    }

    public void setStop(boolean z) {
        this.isStop = z;
    }
}

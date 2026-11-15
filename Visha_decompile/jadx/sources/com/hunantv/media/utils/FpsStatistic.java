package com.hunantv.media.utils;

public class FpsStatistic {
    private static final int FPS_CALCULATE_TIME_S = 3;
    private volatile boolean mFpsStar;
    private volatile long mFpsStartTimeMs;
    private volatile int mFpsCounter = 0;
    private volatile int mFps = -1;

    private void resetFpsTimeAndCounter() {
        this.mFpsStartTimeMs = 0L;
        this.mFpsCounter = 0;
    }

    public int getFps() {
        return this.mFps;
    }

    public void onFrame() {
        if (this.mFpsStar) {
            if (this.mFpsStartTimeMs <= 0) {
                this.mFpsStartTimeMs = System.currentTimeMillis();
            }
            int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - this.mFpsStartTimeMs) / 1000);
            if (this.mFpsStartTimeMs <= 0 || iCurrentTimeMillis <= 0) {
                return;
            }
            this.mFpsCounter++;
            if (iCurrentTimeMillis <= 3) {
                return;
            } else {
                this.mFps = this.mFpsCounter / iCurrentTimeMillis;
            }
        }
        resetFpsTimeAndCounter();
    }

    public void resetFps() {
        this.mFps = -1;
        resetFpsTimeAndCounter();
    }

    public void startFps() {
        this.mFpsStar = true;
    }

    public void stopFps() {
        this.mFpsStar = false;
        resetFpsTimeAndCounter();
    }
}

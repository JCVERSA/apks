package com.hunantv.media.player.utils;

public class SyncStateMachine {
    private Object lock = new Object();
    private boolean mEnable = false;
    private int mInitState;
    private volatile int mState;

    public SyncStateMachine(int i) {
        this.mInitState = i;
        this.mState = i;
    }

    public void changeState(int i) {
        synchronized (this.lock) {
            this.mState = i;
        }
    }

    public int getState() {
        return this.mState;
    }

    public boolean isEnable() {
        return this.mEnable;
    }

    public void reset() {
        changeState(this.mInitState);
    }

    public SyncStateMachine setEnable(boolean z) {
        this.mEnable = z;
        return this;
    }

    public void changeState(int i, int i2) {
        synchronized (this.lock) {
            try {
                if (this.mState != i) {
                    return;
                }
                this.mState = i2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

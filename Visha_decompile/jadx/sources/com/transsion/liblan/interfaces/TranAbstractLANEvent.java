package com.transsion.liblan.interfaces;

import androidx.annotation.Nullable;

public abstract class TranAbstractLANEvent {
    protected final long arg1;
    protected final long arg2;
    protected final float argf1;
    protected final String args1;
    public final int type;

    public interface Listener<T extends TranAbstractLANEvent> {
        void onEvent(T t);
    }

    public TranAbstractLANEvent(int i) {
        this.type = i;
        this.arg2 = 0L;
        this.arg1 = 0L;
        this.argf1 = 0.0f;
        this.args1 = null;
    }

    public void release() {
    }

    public TranAbstractLANEvent(int i, long j) {
        this.type = i;
        this.arg1 = j;
        this.arg2 = 0L;
        this.argf1 = 0.0f;
        this.args1 = null;
    }

    public TranAbstractLANEvent(int i, long j, long j2) {
        this.type = i;
        this.arg1 = j;
        this.arg2 = j2;
        this.argf1 = 0.0f;
        this.args1 = null;
    }

    public TranAbstractLANEvent(int i, float f) {
        this.type = i;
        this.arg2 = 0L;
        this.arg1 = 0L;
        this.argf1 = f;
        this.args1 = null;
    }

    public TranAbstractLANEvent(int i, long j, @Nullable String str) {
        this.type = i;
        this.arg1 = j;
        this.arg2 = 0L;
        this.argf1 = 0.0f;
        this.args1 = str;
    }
}

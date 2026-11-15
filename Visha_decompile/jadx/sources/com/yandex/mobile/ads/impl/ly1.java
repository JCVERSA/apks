package com.yandex.mobile.ads.impl;

import android.os.ConditionVariable;

final class ly1 extends Thread {
    final ConditionVariable b;
    final my1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ly1(my1 my1Var, ConditionVariable conditionVariable) {
        super("ExoPlayer:SimpleCacheInit");
        this.c = my1Var;
        this.b = conditionVariable;
    }

    @Override
    public final void run() {
        synchronized (this.c) {
            this.b.open();
            this.c.b();
            this.c.b.getClass();
        }
    }
}

package com.tn.lib.thread;

import kotlin.jvm.internal.Intrinsics;

public final class e implements a {

    private final Runnable f39909b;

    public e(Runnable mRunnable) {
        Intrinsics.h(mRunnable, "mRunnable");
        this.f39909b = mRunnable;
    }

    @Override
    public boolean queueIdle() {
        this.f39909b.run();
        a.f39897a.a().remove(this);
        return false;
    }
}

package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;

public final class dz1 {
    private final Object a = new Object();
    private boolean b;

    public final void a(Runnable runnable) {
        y45.j(runnable, "runnable");
        synchronized (this.a) {
            if (this.b) {
                return;
            }
            this.b = true;
            zfb zfbVar = zfb.a;
            runnable.run();
        }
    }
}

package com.yandex.mobile.ads.impl;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import defpackage.y45;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class we0 implements ServiceConnection {
    private final LinkedBlockingQueue a = new LinkedBlockingQueue();

    public final IBinder a() throws InterruptedException {
        return (IBinder) this.a.poll(5L, TimeUnit.SECONDS);
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        y45.j(componentName, "componentName");
        y45.j(iBinder, "binder");
        try {
            this.a.put(iBinder);
        } catch (InterruptedException unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        y45.j(componentName, "componentName");
        try {
            this.a.clear();
        } catch (UnsupportedOperationException unused) {
            sp0.c(new Object[0]);
        }
    }
}

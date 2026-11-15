package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import defpackage.pzh;
import defpackage.wd8;

public final class zzbt {
    public HandlerThread a = null;
    public Handler b = null;
    public int c = 0;
    public final Object d = new Object();

    public final Handler zza() {
        return this.b;
    }

    public final Looper zzb() {
        Looper looper;
        Object obj = this.d;
        synchronized (obj) {
            try {
                if (this.c != 0) {
                    wd8.m(this.a, "Invalid state: handlerThread should already been initialized.");
                } else if (this.a == null) {
                    zze.zza("Starting the looper thread.");
                    HandlerThread handlerThread = new HandlerThread("LooperProvider");
                    this.a = handlerThread;
                    handlerThread.start();
                    this.b = new pzh(this.a.getLooper());
                    zze.zza("Looper thread started.");
                } else {
                    zze.zza("Resuming the looper thread");
                    obj.notifyAll();
                }
                this.c++;
                looper = this.a.getLooper();
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }
}

package com.journeyapps.barcodescanner.camera;

import android.os.Handler;
import android.os.HandlerThread;

class k {

    private static k f33166e;

    private Handler f33167a;

    private HandlerThread f33168b;

    private int f33169c = 0;

    private final Object f33170d = new Object();

    private k() {
    }

    private void a() {
        synchronized (this.f33170d) {
            try {
                if (this.f33167a == null) {
                    if (this.f33169c <= 0) {
                        throw new IllegalStateException("CameraThread is not open");
                    }
                    HandlerThread handlerThread = new HandlerThread("CameraThread");
                    this.f33168b = handlerThread;
                    handlerThread.start();
                    this.f33167a = new Handler(this.f33168b.getLooper());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static k d() {
        if (f33166e == null) {
            f33166e = new k();
        }
        return f33166e;
    }

    private void f() {
        synchronized (this.f33170d) {
            this.f33168b.quit();
            this.f33168b = null;
            this.f33167a = null;
        }
    }

    protected void b() {
        synchronized (this.f33170d) {
            try {
                int i10 = this.f33169c - 1;
                this.f33169c = i10;
                if (i10 == 0) {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void c(Runnable runnable) {
        synchronized (this.f33170d) {
            a();
            this.f33167a.post(runnable);
        }
    }

    protected void e(Runnable runnable) {
        synchronized (this.f33170d) {
            this.f33169c++;
            c(runnable);
        }
    }
}

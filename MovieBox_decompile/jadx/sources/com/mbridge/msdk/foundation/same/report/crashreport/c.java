package com.mbridge.msdk.foundation.same.report.crashreport;

import android.annotation.TargetApi;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;

public class c extends Thread {

    private static volatile c f34692e;

    private final Handler f34693a;

    private volatile b f34694b;

    private com.mbridge.msdk.foundation.same.report.crashreport.a f34695c;

    private int f34696d;

    private class b implements Runnable {

        private long f34697a;

        private boolean f34698b;

        private long f34699c;

        private b() {
            this.f34697a = SystemClock.uptimeMillis();
        }

        void b() {
            this.f34698b = false;
            this.f34699c = SystemClock.uptimeMillis();
            c.this.f34693a.postAtFrontOfQueue(this);
        }

        @Override
        public void run() {
            synchronized (c.this) {
                this.f34698b = true;
                this.f34697a = SystemClock.uptimeMillis();
            }
        }

        boolean a() {
            return !this.f34698b || this.f34697a - this.f34699c >= ((long) c.this.f34696d);
        }
    }

    private c() {
        super("AnrMonitor-Thread");
        this.f34693a = new Handler(Looper.getMainLooper());
        this.f34696d = 5000;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0025 */
    @Override
    @TargetApi(16)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            if (isInterrupted() || !(this.f34694b == null || this.f34694b.f34698b)) {
                try {
                    Thread.sleep(this.f34696d);
                } catch (Exception unused) {
                }
            } else {
                synchronized (this) {
                    if (this.f34694b == null) {
                        this.f34694b = new b();
                    }
                    this.f34694b.b();
                    long jUptimeMillis = this.f34696d;
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    while (jUptimeMillis > 0) {
                        try {
                            wait(jUptimeMillis);
                        } catch (InterruptedException e10) {
                            Log.w("AnrMonitor", e10.toString());
                        }
                        jUptimeMillis = ((long) this.f34696d) - (SystemClock.uptimeMillis() - jUptimeMillis2);
                    }
                    if (!this.f34694b.a()) {
                        com.mbridge.msdk.foundation.same.report.crashreport.a aVar = this.f34695c;
                        if (aVar != null) {
                            aVar.a();
                        }
                    } else if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger() && this.f34695c != null) {
                        StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                        this.f34695c.a(d.b(stackTrace), stackTrace);
                    }
                }
            }
        }
    }

    public static c a() {
        if (f34692e == null) {
            synchronized (c.class) {
                try {
                    if (f34692e == null) {
                        f34692e = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34692e;
    }

    public c a(int i10, com.mbridge.msdk.foundation.same.report.crashreport.a aVar) {
        this.f34696d = i10;
        this.f34695c = aVar;
        return this;
    }
}

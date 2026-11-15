package com.pgl.ssdk;

import android.os.HandlerThread;

public class x0 {

    private final a1<y0> f39396a;

    private b1 f39397b;

    private static class b {

        private static final x0 f39398a = new x0();
    }

    public static x0 a() {
        return b.f39398a;
    }

    public b1 b() {
        if (this.f39397b == null) {
            synchronized (x0.class) {
                try {
                    if (this.f39397b == null) {
                        this.f39397b = a("ssdk_net_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f39397b;
    }

    public b1 c() {
        if (this.f39397b == null) {
            synchronized (x0.class) {
                try {
                    if (this.f39397b == null) {
                        this.f39397b = a("ssdk_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f39397b;
    }

    private x0() {
        this.f39396a = a1.a(2);
    }

    public b1 a(String str) {
        return b(null, str);
    }

    private y0 a(b1.a aVar, String str) {
        try {
            HandlerThread handlerThread = new HandlerThread(str);
            handlerThread.start();
            return new y0(handlerThread, aVar);
        } catch (Throwable unused) {
            return null;
        }
    }

    public b1 b(b1.a aVar, String str) {
        y0 y0Var = (y0) this.f39396a.a();
        if (y0Var != null) {
            y0Var.a(aVar);
            y0Var.a(str);
            return y0Var;
        }
        return a(aVar, str);
    }
}

package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;

public class m {

    private static volatile p f19209a;

    private static volatile Handler f19210b;

    public static p a() {
        if (f19209a == null) {
            b();
        }
        return f19209a;
    }

    private static HandlerThread b() {
        if (f19209a == null) {
            synchronized (m.class) {
                try {
                    if (f19209a == null) {
                        p pVar = new p("default_npth_thread");
                        f19209a = pVar;
                        pVar.b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19209a.c();
    }
}

package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import java.util.logging.Logger;
import okhttp3.internal.http2.Http2Connection;

public final class i42 {
    public static final void b(h42 h42Var, k42 k42Var, String str) {
        l42 l42Var = l42.h;
        Logger loggerA = l42.b.a();
        String strF = k42Var.f();
        hz9 hz9Var = hz9.a;
        loggerA.fine(strF + " " + z0.a(new Object[]{str}, 1, "%-22s", "format(...)") + ": " + h42Var.b());
    }

    public static final String a(long j) {
        String str;
        if (j <= -999500000) {
            str = ((j - ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        } else if (j <= -999500) {
            str = ((j - ((long) 500000)) / ((long) 1000000)) + " ms";
        } else if (j <= 0) {
            str = ((j - ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j < 999500) {
            str = ((j + ((long) 500)) / ((long) 1000)) + " µs";
        } else if (j < 999500000) {
            str = ((j + ((long) 500000)) / ((long) 1000000)) + " ms";
        } else {
            str = ((j + ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        }
        hz9 hz9Var = hz9.a;
        return z0.a(new Object[]{str}, 1, "%6s", "format(...)");
    }
}

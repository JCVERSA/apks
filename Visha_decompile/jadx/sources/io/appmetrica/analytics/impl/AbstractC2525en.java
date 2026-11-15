package io.appmetrica.analytics.impl;

import java.util.ArrayList;

public abstract class AbstractC2525en {
    /* JADX WARN: Code duplicated, block: B:16:0x0042  */
    public static C2500dn a(Throwable th, int i, int i2) {
        StackTraceElement[] stackTrace;
        C2500dn c2500dnA;
        ArrayList arrayList;
        String name = th.getClass().getName();
        String message = th.getMessage();
        try {
            stackTrace = th.getStackTrace();
        } catch (Throwable unused) {
            stackTrace = new StackTraceElement[0];
        }
        ArrayList arrayList2 = new ArrayList(stackTrace.length);
        for (StackTraceElement stackTraceElement : stackTrace) {
            arrayList2.add(new C2548fl(stackTraceElement));
        }
        Throwable cause = th.getCause();
        if (cause == null) {
            c2500dnA = null;
        } else {
            if (i2 >= i) {
                cause = null;
            }
            if (cause != null) {
                c2500dnA = a(cause, 30, i2 + 1);
            } else {
                c2500dnA = null;
            }
        }
        if (i2 < i) {
            Throwable[] suppressed = th.getSuppressed();
            arrayList = new ArrayList(suppressed.length);
            for (Throwable th2 : suppressed) {
                arrayList.add(a(th2, 1, i2));
            }
        } else {
            arrayList = null;
        }
        return new C2500dn(name, message, arrayList2, c2500dnA, arrayList);
    }
}

package io.appmetrica.analytics.impl;

import java.util.HashMap;

public final class C2743nh {
    public final C2408a6 a;
    public final boolean b;
    public final int c;
    public final HashMap d;
    public final C2992xh e;

    public C2743nh(C2408a6 c2408a6, boolean z, int i, HashMap map, C2992xh c2992xh) {
        this.a = c2408a6;
        this.b = z;
        this.c = i;
        this.d = map;
        this.e = c2992xh;
    }

    public final String toString() {
        return "ReportToSend(report=" + this.a + ", serviceDataReporterType=" + this.c + ", environment=" + this.e + ", isCrashReport=" + this.b + ", trimmedFields=" + this.d + ')';
    }
}

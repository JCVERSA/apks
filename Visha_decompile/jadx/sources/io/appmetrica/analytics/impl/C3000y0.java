package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;

public final class C3000y0 {
    public final NativeCrashSource a;
    public final String b;
    public final String c;
    public final String d;
    public final long e;
    public final C3025z0 f;

    public C3000y0(NativeCrashSource nativeCrashSource, String str, String str2, String str3, long j, C3025z0 c3025z0) {
        this.a = nativeCrashSource;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = j;
        this.f = c3025z0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3000y0)) {
            return false;
        }
        C3000y0 c3000y0 = (C3000y0) obj;
        return this.a == c3000y0.a && y45.e(this.b, c3000y0.b) && y45.e(this.c, c3000y0.c) && y45.e(this.d, c3000y0.d) && this.e == c3000y0.e && y45.e(this.f, c3000y0.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + ((Long.hashCode(this.e) + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AppMetricaNativeCrash(source=" + this.a + ", handlerVersion=" + this.b + ", uuid=" + this.c + ", dumpFile=" + this.d + ", creationTime=" + this.e + ", metadata=" + this.f + ')';
    }
}

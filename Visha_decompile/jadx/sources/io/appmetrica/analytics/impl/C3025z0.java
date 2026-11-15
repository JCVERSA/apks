package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

public final class C3025z0 {
    public final String a;
    public final String b;
    public final CounterConfigurationReporterType c;
    public final int d;
    public final String e;
    public final String f;

    public C3025z0(String str, String str2, CounterConfigurationReporterType counterConfigurationReporterType, int i, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = counterConfigurationReporterType;
        this.d = i;
        this.e = str3;
        this.f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3025z0)) {
            return false;
        }
        C3025z0 c3025z0 = (C3025z0) obj;
        return y45.e(this.a, c3025z0.a) && y45.e(this.b, c3025z0.b) && this.c == c3025z0.c && this.d == c3025z0.d && y45.e(this.e, c3025z0.e) && y45.e(this.f, c3025z0.f);
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + ((Integer.hashCode(this.d) + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.f;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "AppMetricaNativeCrashMetadata(apiKey=" + this.a + ", packageName=" + this.b + ", reporterType=" + this.c + ", processID=" + this.d + ", processSessionID=" + this.e + ", errorEnvironment=" + this.f + ')';
    }
}

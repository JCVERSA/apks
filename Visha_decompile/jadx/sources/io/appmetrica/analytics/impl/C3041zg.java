package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo;

public final class C3041zg implements RemoteConfigMetaInfo {
    public final long a;
    public final long b;

    public C3041zg(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final C3041zg a(long j, long j2) {
        return new C3041zg(j, j2);
    }

    public final long b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3041zg)) {
            return false;
        }
        C3041zg c3041zg = (C3041zg) obj;
        return this.a == c3041zg.a && this.b == c3041zg.b;
    }

    @Override
    public final long getFirstSendTime() {
        return this.a;
    }

    @Override
    public final long getLastUpdateTime() {
        return this.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "RemoteConfigMetaInfoModel(firstSendTime=" + this.a + ", lastUpdateTime=" + this.b + ')';
    }

    public final long a() {
        return this.a;
    }

    public static C3041zg a(C3041zg c3041zg, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = c3041zg.a;
        }
        if ((i & 2) != 0) {
            j2 = c3041zg.b;
        }
        c3041zg.getClass();
        return new C3041zg(j, j2);
    }
}

package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public final class C2468cg {
    public final String a;
    public final long b;
    public final long c;
    public final EnumC2443bg d;

    public C2468cg(byte[] bArr) throws InvalidProtocolBufferNanoException {
        C2493dg c2493dgA = C2493dg.a(bArr);
        this.a = c2493dgA.a;
        this.b = c2493dgA.c;
        this.c = c2493dgA.b;
        this.d = a(c2493dgA.d);
    }

    public final byte[] a() {
        C2493dg c2493dg = new C2493dg();
        c2493dg.a = this.a;
        c2493dg.c = this.b;
        c2493dg.b = this.c;
        int iOrdinal = this.d.ordinal();
        int i = 1;
        if (iOrdinal != 1) {
            i = 2;
            if (iOrdinal != 2) {
                i = 0;
            }
        }
        c2493dg.d = i;
        return MessageNano.toByteArray(c2493dg);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2468cg.class != obj.getClass()) {
            return false;
        }
        C2468cg c2468cg = (C2468cg) obj;
        return this.b == c2468cg.b && this.c == c2468cg.c && this.a.equals(c2468cg.a) && this.d == c2468cg.d;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        long j = this.b;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.c;
        return this.d.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public final String toString() {
        return "ReferrerInfo{installReferrer='" + this.a + "', referrerClickTimestampSeconds=" + this.b + ", installBeginTimestampSeconds=" + this.c + ", source=" + this.d + '}';
    }

    public C2468cg(String str, long j, long j2, EnumC2443bg enumC2443bg) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = enumC2443bg;
    }

    public static EnumC2443bg a(int i) {
        if (i == 1) {
            return EnumC2443bg.c;
        }
        if (i != 2) {
            return EnumC2443bg.b;
        }
        return EnumC2443bg.d;
    }
}

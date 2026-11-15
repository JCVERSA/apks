package com.facebook.ads.redexgen.core;

public final class C1217Rp {
    public final long A00;
    public final EnumC1216Ro A01;
    public final String A02;
    public final boolean A03;

    public C1217Rp(String str, boolean z, EnumC1216Ro enumC1216Ro) {
        this(str, z, enumC1216Ro, System.currentTimeMillis());
    }

    public C1217Rp(String str, boolean z, EnumC1216Ro enumC1216Ro, long j) {
        this.A02 = str;
        this.A03 = z;
        this.A01 = enumC1216Ro;
        this.A00 = j;
    }

    public static C1217Rp A00() {
        return new C1217Rp("", true, EnumC1216Ro.A05, -1L);
    }

    public final long A01() {
        return this.A00;
    }

    public final EnumC1216Ro A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}

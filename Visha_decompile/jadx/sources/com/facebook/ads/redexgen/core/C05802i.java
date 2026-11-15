package com.facebook.ads.redexgen.core;

import java.io.IOException;

public class C05802i extends IOException {
    public int A00;
    public boolean A01;

    @Deprecated
    public C05802i() {
    }

    @Deprecated
    public C05802i(String str) {
        super(str);
    }

    public C05802i(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.A01 = z;
        this.A00 = i;
    }

    public static C05802i A00(String str) {
        return new C05802i(str, null, false, 1);
    }

    public static C05802i A01(String str, Throwable th) {
        return new C05802i(str, th, true, 1);
    }

    public static C05802i A02(String str, Throwable th) {
        return new C05802i(str, th, true, 0);
    }
}

package com.google.android.exoplayer2;

import android.os.Bundle;

public final class s1 extends w2 {

    public static final k.a f24983d = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return s1.e(bundle);
        }
    };

    private final boolean f24984b;

    private final boolean f24985c;

    public s1() {
        this.f24984b = false;
        this.f24985c = false;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static s1 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 0);
        return bundle.getBoolean(c(1), false) ? new s1(bundle.getBoolean(c(2), false)) : new s1();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s1)) {
            return false;
        }
        s1 s1Var = (s1) obj;
        return this.f24985c == s1Var.f24985c && this.f24984b == s1Var.f24984b;
    }

    public int hashCode() {
        return com.google.common.base.j.b(Boolean.valueOf(this.f24984b), Boolean.valueOf(this.f24985c));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 0);
        bundle.putBoolean(c(1), this.f24984b);
        bundle.putBoolean(c(2), this.f24985c);
        return bundle;
    }

    public s1(boolean z10) {
        this.f24984b = true;
        this.f24985c = z10;
    }
}

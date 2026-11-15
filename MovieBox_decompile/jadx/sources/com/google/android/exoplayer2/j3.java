package com.google.android.exoplayer2;

import android.os.Bundle;

public final class j3 extends w2 {

    public static final k.a f24505d = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return j3.e(bundle);
        }
    };

    private final boolean f24506b;

    private final boolean f24507c;

    public j3() {
        this.f24506b = false;
        this.f24507c = false;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static j3 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 3);
        return bundle.getBoolean(c(1), false) ? new j3(bundle.getBoolean(c(2), false)) : new j3();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j3)) {
            return false;
        }
        j3 j3Var = (j3) obj;
        return this.f24507c == j3Var.f24507c && this.f24506b == j3Var.f24506b;
    }

    public int hashCode() {
        return com.google.common.base.j.b(Boolean.valueOf(this.f24506b), Boolean.valueOf(this.f24507c));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 3);
        bundle.putBoolean(c(1), this.f24506b);
        bundle.putBoolean(c(2), this.f24507c);
        return bundle;
    }

    public j3(boolean z10) {
        this.f24506b = true;
        this.f24507c = z10;
    }
}

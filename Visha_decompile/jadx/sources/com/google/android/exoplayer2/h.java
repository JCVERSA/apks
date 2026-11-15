package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.h;

public final class h implements e {
    public static final h e = new h(0, 0, 0);
    public static final e.a f = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return h.c(bundle);
        }
    };
    public final int b;
    public final int c;
    public final int d;

    public h(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    public static h c(Bundle bundle) {
        return new h(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.b == hVar.b && this.c == hVar.c && this.d == hVar.d;
    }

    public int hashCode() {
        return ((((527 + this.b) * 31) + this.c) * 31) + this.d;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.b);
        bundle.putInt(b(1), this.c);
        bundle.putInt(b(2), this.d);
        return bundle;
    }
}

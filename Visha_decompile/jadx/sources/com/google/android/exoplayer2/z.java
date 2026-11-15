package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.z;
import defpackage.kc7;
import defpackage.zi;

public final class z extends v {
    public static final e.a e = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return z.e(bundle);
        }
    };
    public final boolean c;
    public final boolean d;

    public z() {
        this.c = false;
        this.d = false;
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }

    public static z e(Bundle bundle) {
        zi.a(bundle.getInt(c(0), -1) == 3);
        return bundle.getBoolean(c(1), false) ? new z(bundle.getBoolean(c(2), false)) : new z();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return this.d == zVar.d && this.c == zVar.c;
    }

    public int hashCode() {
        return kc7.b(Boolean.valueOf(this.c), Boolean.valueOf(this.d));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 3);
        bundle.putBoolean(c(1), this.c);
        bundle.putBoolean(c(2), this.d);
        return bundle;
    }

    public z(boolean z) {
        this.c = true;
        this.d = z;
    }
}

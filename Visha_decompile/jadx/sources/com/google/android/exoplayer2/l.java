package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.l;
import defpackage.kc7;
import defpackage.zi;

public final class l extends v {
    public static final e.a e = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return l.e(bundle);
        }
    };
    public final boolean c;
    public final boolean d;

    public l() {
        this.c = false;
        this.d = false;
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }

    public static l e(Bundle bundle) {
        zi.a(bundle.getInt(c(0), -1) == 0);
        return bundle.getBoolean(c(1), false) ? new l(bundle.getBoolean(c(2), false)) : new l();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.d == lVar.d && this.c == lVar.c;
    }

    public int hashCode() {
        return kc7.b(Boolean.valueOf(this.c), Boolean.valueOf(this.d));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 0);
        bundle.putBoolean(c(1), this.c);
        bundle.putBoolean(c(2), this.d);
        return bundle;
    }

    public l(boolean z) {
        this.c = true;
        this.d = z;
    }
}

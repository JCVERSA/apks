package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.v;

public abstract class v implements e {
    public static final e.a b = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return v.b(bundle);
        }
    };

    public static v b(Bundle bundle) {
        int i = bundle.getInt(c(0), -1);
        if (i == 0) {
            return (v) l.e.fromBundle(bundle);
        }
        if (i == 1) {
            return (v) r.d.fromBundle(bundle);
        }
        if (i == 2) {
            return (v) x.e.fromBundle(bundle);
        }
        if (i == 3) {
            return (v) z.e.fromBundle(bundle);
        }
        throw new IllegalArgumentException("Unknown RatingType: " + i);
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }
}

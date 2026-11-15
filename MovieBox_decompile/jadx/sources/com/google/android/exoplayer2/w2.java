package com.google.android.exoplayer2;

import android.os.Bundle;

public abstract class w2 implements k {

    public static final k.a f27242a = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return w2.b(bundle);
        }
    };

    w2() {
    }

    public static w2 b(Bundle bundle) {
        int i10 = bundle.getInt(c(0), -1);
        if (i10 == 0) {
            return (w2) s1.f24983d.a(bundle);
        }
        if (i10 == 1) {
            return (w2) k2.f24510c.a(bundle);
        }
        if (i10 == 2) {
            return (w2) f3.f24444d.a(bundle);
        }
        if (i10 == 3) {
            return (w2) j3.f24505d.a(bundle);
        }
        throw new IllegalArgumentException("Unknown RatingType: " + i10);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }
}

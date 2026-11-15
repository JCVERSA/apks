package com.google.android.exoplayer2.video;

import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public final class y implements com.google.android.exoplayer2.k {

    public static final y f27138e = new y(0, 0);

    public static final com.google.android.exoplayer2.k.a f27139f = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return y.c(bundle);
        }
    };

    public final int f27140a;

    public final int f27141b;

    public final int f27142c;

    public final float f27143d;

    public y(int i10, int i11) {
        this(i10, i11, 0, 1.0f);
    }

    private static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    public static y c(Bundle bundle) {
        return new y(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0), bundle.getFloat(b(3), 1.0f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f27140a == yVar.f27140a && this.f27141b == yVar.f27141b && this.f27142c == yVar.f27142c && this.f27143d == yVar.f27143d;
    }

    public int hashCode() {
        return ((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f27140a) * 31) + this.f27141b) * 31) + this.f27142c) * 31) + Float.floatToRawIntBits(this.f27143d);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f27140a);
        bundle.putInt(b(1), this.f27141b);
        bundle.putInt(b(2), this.f27142c);
        bundle.putFloat(b(3), this.f27143d);
        return bundle;
    }

    public y(int i10, int i11, int i12, float f10) {
        this.f27140a = i10;
        this.f27141b = i11;
        this.f27142c = i12;
        this.f27143d = f10;
    }
}

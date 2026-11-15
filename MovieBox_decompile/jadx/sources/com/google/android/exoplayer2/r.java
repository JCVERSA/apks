package com.google.android.exoplayer2;

import android.os.Bundle;

public final class r implements k {

    public static final r f24972d = new r(0, 0, 0);

    public static final k.a f24973e = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return r.c(bundle);
        }
    };

    public final int f24974a;

    public final int f24975b;

    public final int f24976c;

    public r(int i10, int i11, int i12) {
        this.f24974a = i10;
        this.f24975b = i11;
        this.f24976c = i12;
    }

    private static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    public static r c(Bundle bundle) {
        return new r(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f24974a == rVar.f24974a && this.f24975b == rVar.f24975b && this.f24976c == rVar.f24976c;
    }

    public int hashCode() {
        return ((((527 + this.f24974a) * 31) + this.f24975b) * 31) + this.f24976c;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f24974a);
        bundle.putInt(b(1), this.f24975b);
        bundle.putInt(b(2), this.f24976c);
        return bundle;
    }
}

package com.facebook.ads.redexgen.core;

import android.os.Bundle;

public class C2307om implements C1S {
    public final long A00;
    public final long A01;
    public final boolean A02;
    public final boolean A03;
    public final boolean A04;
    public static final C2307om A06 = new C2J().A0A();
    public static final C1R<C07589r> A05 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return new C2J().A06(bundle.getLong(C2307om.A01(0), 0L)).A05(bundle.getLong(C2307om.A01(1), Long.MIN_VALUE)).A08(bundle.getBoolean(C2307om.A01(2), false)).A07(bundle.getBoolean(C2307om.A01(3), false)).A09(bundle.getBoolean(C2307om.A01(4), false)).A0B();
        }
    };

    public C2307om(C2J c2j) {
        this.A01 = c2j.A01;
        this.A00 = c2j.A00;
        this.A03 = c2j.A03;
        this.A02 = c2j.A02;
        this.A04 = c2j.A04;
    }

    public static String A01(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2307om)) {
            return false;
        }
        C2307om c2307om = (C2307om) obj;
        return this.A01 == c2307om.A01 && this.A00 == c2307om.A00 && this.A03 == c2307om.A03 && this.A02 == c2307om.A02 && this.A04 == c2307om.A04;
    }

    public final int hashCode() {
        return (((((((((int) (this.A01 ^ (this.A01 >>> 32))) * 31) + ((int) (this.A00 ^ (this.A00 >>> 32)))) * 31) + (this.A03 ? 1 : 0)) * 31) + (this.A02 ? 1 : 0)) * 31) + (this.A04 ? 1 : 0);
    }
}

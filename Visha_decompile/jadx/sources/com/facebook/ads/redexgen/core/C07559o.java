package com.facebook.ads.redexgen.core;

import android.os.Bundle;

public final class C07559o extends AbstractC2290oU {
    public final boolean A00;
    public final boolean A01;
    public static final String A04 = AbstractC06244a.A0h(1);
    public static final String A03 = AbstractC06244a.A0h(2);
    public static final C1R<C07559o> A02 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C07559o.A00(bundle);
        }
    };

    public C07559o() {
        this.A01 = false;
        this.A00 = false;
    }

    public C07559o(boolean z) {
        this.A01 = true;
        this.A00 = z;
    }

    public static C07559o A00(Bundle bundle) {
        boolean rated = bundle.getInt(AbstractC2290oU.A02, -1) == 3;
        C3M.A07(rated);
        boolean rated2 = bundle.getBoolean(A04, false);
        if (rated2) {
            return new C07559o(bundle.getBoolean(A03, false));
        }
        return new C07559o();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C07559o)) {
            return false;
        }
        C07559o c07559o = (C07559o) obj;
        return this.A00 == c07559o.A00 && this.A01 == c07559o.A01;
    }

    public final int hashCode() {
        return BX.A00(Boolean.valueOf(this.A01), Boolean.valueOf(this.A00));
    }
}

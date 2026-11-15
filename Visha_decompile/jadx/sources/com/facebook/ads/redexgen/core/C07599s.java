package com.facebook.ads.redexgen.core;

import android.os.Bundle;

public final class C07599s extends AbstractC2290oU {
    public final boolean A00;
    public final boolean A01;
    public static final String A04 = AbstractC06244a.A0h(1);
    public static final String A03 = AbstractC06244a.A0h(2);
    public static final C1R<C07599s> A02 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C07599s.A00(bundle);
        }
    };

    public C07599s() {
        this.A01 = false;
        this.A00 = false;
    }

    public C07599s(boolean z) {
        this.A01 = true;
        this.A00 = z;
    }

    public static C07599s A00(Bundle bundle) {
        boolean isRated = bundle.getInt(AbstractC2290oU.A02, -1) == 0;
        C3M.A07(isRated);
        boolean isRated2 = bundle.getBoolean(A04, false);
        if (isRated2) {
            return new C07599s(bundle.getBoolean(A03, false));
        }
        return new C07599s();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C07599s)) {
            return false;
        }
        C07599s c07599s = (C07599s) obj;
        return this.A00 == c07599s.A00 && this.A01 == c07599s.A01;
    }

    public final int hashCode() {
        return BX.A00(Boolean.valueOf(this.A01), Boolean.valueOf(this.A00));
    }
}

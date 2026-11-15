package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;

public final class C2273oC implements C1S {
    public final C2278oH A00;
    public final AbstractC0779Am<Integer> A01;
    public static final String A04 = AbstractC06244a.A0h(0);
    public static final String A03 = AbstractC06244a.A0h(1);
    public static final C1R<C2273oC> A02 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2273oC.A00(bundle);
        }
    };

    public C2273oC(C2278oH c2278oH, List<Integer> trackIndices) {
        if (trackIndices.isEmpty() || (((Integer) Collections.min(trackIndices)).intValue() >= 0 && ((Integer) Collections.max(trackIndices)).intValue() < c2278oH.A01)) {
            this.A00 = c2278oH;
            this.A01 = AbstractC0779Am.A05(trackIndices);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public static C2273oC A00(Bundle bundle) {
        return new C2273oC((C2278oH) C2278oH.A06.A6X((Bundle) C3M.A01(bundle.getBundle(A04))), AD.A0A((int[]) C3M.A01(bundle.getIntArray(A03))));
    }

    public final int A01() {
        return this.A00.A02;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2273oC c2273oC = (C2273oC) obj;
        return this.A00.equals(c2273oC.A00) && this.A01.equals(c2273oC.A01);
    }

    public final int hashCode() {
        return this.A00.hashCode() + (this.A01.hashCode() * 31);
    }
}

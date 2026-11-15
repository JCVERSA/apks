package com.facebook.ads.redexgen.core;

public final class C7G {
    public static final C7G A01 = new C7G(false);
    public final boolean A00;

    public C7G(boolean z) {
        this.A00 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.A00 == ((C7G) obj).A00;
    }

    public final int hashCode() {
        return !this.A00 ? 1 : 0;
    }
}

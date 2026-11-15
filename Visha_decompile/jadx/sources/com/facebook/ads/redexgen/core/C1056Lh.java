package com.facebook.ads.redexgen.core;

public final class C1056Lh {
    public static final C1056Lh A02 = new C1056Lh();
    public byte A00 = 3;
    public boolean A01 = true;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C1056Lh)) {
            return false;
        }
        C1056Lh c1056Lh = (C1056Lh) obj;
        return this.A00 == c1056Lh.A00 && this.A01 == c1056Lh.A01;
    }

    public final int hashCode() {
        return new Byte(this.A00).hashCode() + new Boolean(this.A01).hashCode();
    }
}

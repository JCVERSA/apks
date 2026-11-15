package com.facebook.ads.redexgen.core;

import android.media.metrics.LogSessionId;
import java.util.Objects;

public final class C07147m {
    public static final C07147m A03;
    public final String A00;
    public final C07137l A01;
    public final Object A02;

    static {
        C07147m c07147m;
        if (AbstractC06244a.A02 < 31) {
            c07147m = new C07147m("");
        } else {
            c07147m = new C07147m(C07137l.A01, "");
        }
        A03 = c07147m;
    }

    public C07147m(C07137l c07137l, String str) {
        this.A01 = c07137l;
        this.A00 = str;
        this.A02 = new Object();
    }

    public C07147m(String str) {
        C3M.A08(AbstractC06244a.A02 < 31);
        this.A00 = str;
        this.A01 = null;
        this.A02 = new Object();
    }

    public final LogSessionId A00() {
        return ((C07137l) C3M.A01(this.A01)).A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C07147m)) {
            return false;
        }
        C07147m c07147m = (C07147m) obj;
        if (Objects.equals(this.A00, c07147m.A00) && Objects.equals(this.A01, c07147m.A01) && Objects.equals(this.A02, c07147m.A02)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.A00, this.A01, this.A02);
    }
}

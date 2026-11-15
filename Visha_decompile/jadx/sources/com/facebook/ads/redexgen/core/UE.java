package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class UE {
    public final View A00;
    public final C1609cu A01;
    public final US A02;
    public final String A03;
    public final HashMap<String, String> A04 = new HashMap<>();
    public final boolean A05;
    public final boolean A06;

    public UE(C1609cu c1609cu, View view, String str, boolean z, boolean z2) {
        this.A03 = str;
        this.A01 = c1609cu;
        this.A02 = c1609cu.A0A();
        this.A00 = view;
        this.A05 = z2;
        this.A06 = z;
    }

    public final View A00() {
        return this.A00;
    }

    public final C1609cu A01() {
        return this.A01;
    }

    public final US A02() {
        return this.A02;
    }

    public final String A03() {
        return this.A03;
    }

    public final Map<String, String> A04() {
        return Collections.unmodifiableMap(this.A04);
    }

    public final boolean A05() {
        return this.A05;
    }

    public final boolean A06() {
        return this.A06;
    }
}

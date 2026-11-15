package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C2034k6 implements J7 {
    public final C1007Jk A00;
    public final Map<String, C1014Jr> A01;
    public final Map<String, String> A02;
    public final Map<String, C1008Jl> A03;
    public final long[] A04;

    public C2034k6(C1007Jk c1007Jk, Map<String, C1014Jr> map, Map<String, C1008Jl> map2, Map<String, String> imageMap) {
        this.A00 = c1007Jk;
        this.A03 = map2;
        this.A02 = imageMap;
        this.A01 = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.A04 = c1007Jk.A0G();
    }

    @Override
    public final List<C2263o2> A7P(long j) {
        return this.A00.A0E(j, this.A01, this.A03, this.A02);
    }

    @Override
    public final long A7v(int i) {
        return this.A04[i];
    }

    @Override
    public final int A7w() {
        return this.A04.length;
    }

    @Override
    public final int A8S(long j) {
        int iA0K = AbstractC06244a.A0K(this.A04, j, false, false);
        int index = this.A04.length;
        if (iA0K < index) {
            return iA0K;
        }
        return -1;
    }
}

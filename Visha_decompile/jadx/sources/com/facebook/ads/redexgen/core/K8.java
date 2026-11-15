package com.facebook.ads.redexgen.core;

public final class K8 implements Comparable<K8> {
    public final int A00;
    public final C1022Jz A01;

    public K8(int i, C1022Jz c1022Jz) {
        this.A00 = i;
        this.A01 = c1022Jz;
    }

    @Override
    public final int compareTo(K8 k8) {
        return Integer.compare(this.A00, k8.A00);
    }
}

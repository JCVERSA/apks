package com.facebook.ads.redexgen.core;

public final class C2070kg implements IL {
    public int A00;
    public int A01;
    public final int A02;
    public final int A03;
    public final C4J A04;

    public C2070kg(C2072ki c2072ki) {
        this.A04 = c2072ki.A00;
        this.A04.A0f(12);
        this.A02 = this.A04.A0L() & 255;
        this.A03 = this.A04.A0L();
    }

    @Override
    public final int A82() {
        return -1;
    }

    @Override
    public final int A8n() {
        return this.A03;
    }

    @Override
    public final int AGi() {
        if (this.A02 == 8) {
            return this.A04.A0I();
        }
        if (this.A02 == 16) {
            return this.A04.A0M();
        }
        int i = this.A01;
        this.A01 = i + 1;
        if (i % 2 == 0) {
            this.A00 = this.A04.A0I();
            return (this.A00 & 240) >> 4;
        }
        return this.A00 & 15;
    }
}

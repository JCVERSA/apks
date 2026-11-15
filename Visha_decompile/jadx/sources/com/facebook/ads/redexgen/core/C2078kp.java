package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import java.io.IOException;

public final class C2078kp implements I8 {
    public final MatroskaExtractor A00;

    public C2078kp(MatroskaExtractor matroskaExtractor) {
        this.A00 = matroskaExtractor;
    }

    @Override
    public final void A4a(int i, int i2, InterfaceC2101lN interfaceC2101lN) throws IOException {
        this.A00.A0U(i, i2, interfaceC2101lN);
    }

    @Override
    public final void A6F(int i) throws C05802i {
        this.A00.A0S(i);
    }

    @Override
    public final void A6S(int i, double d) throws C05802i {
        this.A00.A0T(i, d);
    }

    @Override
    public final int A7m(int i) {
        return this.A00.A0R(i);
    }

    @Override
    public final void AA9(int i, long j) throws C05802i {
        this.A00.A0V(i, j);
    }

    @Override
    public final boolean AAN(int i) {
        return this.A00.A0Y(i);
    }

    @Override
    public final void AJO(int i, long j, long j2) throws C05802i {
        this.A00.A0W(i, j, j2);
    }

    @Override
    public final void AJZ(int i, String str) throws C05802i {
        this.A00.A0X(i, str);
    }
}

package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

public final class C2055kR implements GX {
    public static byte[] A03;
    public static String[] A04 = {"IFBRawCVF0AWJOiiVagp2bzm1iWWQKSj", "auHMqC8YUXWsvqiTg7", "x05hwyQceYKgfv4KdHsaZDzMFYGIFABO", "EiWauAjA92n8uYBsDF1eTop4V9uY", "nHLlm8XHOjaWHtwU5p4BIc0GM3UweWlu", "dBwF9hq9j3gGLabp", "n4a5QuSOEmxq5i2DA2", "Zy0ftHIbrTR5qGqkd"};
    public static final InterfaceC0921Gb A05;
    public GY A00;
    public AbstractC0996Iz A01;
    public boolean A02;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A04[3].length() == 20) {
                throw new RuntimeException();
            }
            A04[3] = "IEdap1c7a0gADNuxefg";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 36);
            i4++;
        }
    }

    public static void A02() {
        A03 = new byte[]{96, 71, 79, 74, 67, 66, 6, 82, 73, 6, 66, 67, 82, 67, 84, 75, 79, 72, 67, 6, 68, 79, 82, 85, 82, 84, 67, 71, 75, 6, 82, 95, 86, 67};
    }

    static {
        A02();
        A05 = new InterfaceC0921Gb() {
            @Override
            public final GX[] A5F() {
                return C2055kR.A04();
            }

            @Override
            public final GX[] A5G(Uri uri, Map map) {
                return AbstractC0920Ga.A01(this, uri, map);
            }
        };
    }

    public static C4J A00(C4J c4j) {
        c4j.A0f(0);
        return c4j;
    }

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    private boolean A03(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C0992Iv c0992Iv = new C0992Iv();
        if (!c0992Iv.A05(interfaceC2101lN, true) || (c0992Iv.A04 & 2) != 2) {
            return false;
        }
        int length = Math.min(c0992Iv.A00, 8);
        C4J c4j = new C4J(length);
        interfaceC2101lN.AG9(c4j.A0l(), 0, length);
        if (C2057kT.A01(A00(c4j))) {
            this.A01 = new C2057kT();
        } else if (C2052kO.A06(A00(c4j))) {
            this.A01 = new C2052kO();
        } else {
            if (!C2054kQ.A02(A00(c4j))) {
                return false;
            }
            this.A01 = new C2054kQ();
        }
        return true;
    }

    public static GX[] A04() {
        return new GX[]{new C2055kR()};
    }

    @Override
    public final void AA4(GY gy) {
        this.A00 = gy;
    }

    @Override
    public final int AGb(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        C3M.A02(this.A00);
        if (this.A01 == null) {
            if (A03(interfaceC2101lN)) {
                interfaceC2101lN.AI1();
            } else {
                throw C05802i.A01(A01(0, 34, 2), null);
            }
        }
        boolean z = this.A02;
        if (A04[0].charAt(6) == 'U') {
            throw new RuntimeException();
        }
        A04[5] = "ISTJLhLpuA8o4P7J";
        if (!z) {
            H1 h1AJh = this.A00.AJh(0, 1);
            this.A00.A6G();
            this.A01.A08(this.A00, h1AJh);
            this.A02 = true;
        }
        return this.A01.A04(interfaceC2101lN, c0939Gt);
    }

    @Override
    public final void AGr() {
    }

    @Override
    public final void AIM(long j, long j2) {
        if (this.A01 != null) {
            this.A01.A07(j, j2);
        }
    }

    @Override
    public final boolean AJL(InterfaceC2101lN interfaceC2101lN) throws IOException {
        try {
            return A03(interfaceC2101lN);
        } catch (C05802i unused) {
            return false;
        }
    }
}

package com.facebook.ads.redexgen.core;

import java.io.IOException;
import java.util.Arrays;

public final class C1996jU implements InterfaceC1032Kj {
    public static byte[] A08;
    public static String[] A09 = {"mF6wsmKEoSH0oaFjYCs54xiQsDf", "7fvgeHK83IOxRTsxSXxl4b3GDJCkJYIR", "3AWdxUjQjYm4RALX7ZxT6TNspaUhotFB", "ejd6qsjsHb99jkL857XJ5GpzVF9O4Dmm", "HjmRuX1Dl2gTeBJaQInX56gY9CThxDdt", "4dP72HMzoJKZI0lPLVreHOZSlD0czmst", "VabPsN9EmqWHNd02VeXfGkhVpY5qzzPo", "1TiSMCKkeVz3FItUT5PAcFJ22kgDAGxf"};
    public int A00;
    public long A01;
    public long A02;
    public final int A03;
    public final C2312or A04;
    public final GY A05;
    public final H1 A06;
    public final C1034Kl A07;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 81);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A08 = new byte[]{-68, -95, -24, -16, -11, -69, -95, -34, 17, 9, -2, -4, 13, -2, -3, -71, -5, 5, 8, -4, 4, -71, 12, 2, 19, -2, -45, -71};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override
    public final boolean AI9(InterfaceC2101lN interfaceC2101lN, long j) throws IOException {
        long j2 = j;
        while (true) {
            String[] strArr = A09;
            if (strArr[6].charAt(28) != strArr[5].charAt(28)) {
                throw new RuntimeException();
            }
            A09[7] = "xyHijgDe1t0LZE27YhGAb5keyZPdsLp6";
            if (j2 <= 0 || this.A00 >= this.A03) {
                int i = this.A07.A02;
                int i2 = this.A00 / i;
                if (i2 > 0) {
                    long jA0U = this.A02 + AbstractC06244a.A0U(this.A01, 1000000L, this.A07.A04);
                    int i3 = i2 * i;
                    int i4 = this.A00 - i3;
                    this.A06.AIA(jA0U, 1, i3, i4, null);
                    this.A01 += (long) i2;
                    this.A00 = i4;
                }
                return j2 <= 0;
            }
            int iAI5 = this.A06.AI5(interfaceC2101lN, (int) Math.min(this.A03 - this.A00, j2), true);
            if (iAI5 == -1) {
                j2 = 0;
            } else {
                this.A00 += iAI5;
                j2 -= (long) iAI5;
            }
        }
    }

    static {
        A01();
    }

    public C1996jU(GY gy, H1 h1, C1034Kl c1034Kl, String str, int i) throws C05802i {
        this.A05 = gy;
        this.A06 = h1;
        this.A07 = c1034Kl;
        int i2 = (c1034Kl.A05 * c1034Kl.A01) / 8;
        int bytesPerFrame = c1034Kl.A02;
        if (bytesPerFrame == i2) {
            int bytesPerFrame2 = c1034Kl.A04;
            int constantBitrate = bytesPerFrame2 * i2 * 8;
            int bytesPerFrame3 = c1034Kl.A04;
            this.A03 = Math.max(i2, (bytesPerFrame3 * i2) / 10);
            C2D c2dA0j = new C2D().A11(str).A0a(constantBitrate).A0j(constantBitrate);
            int bytesPerFrame4 = this.A03;
            C2D c2dA0h = c2dA0j.A0h(bytesPerFrame4);
            int bytesPerFrame5 = c1034Kl.A05;
            C2D c2dA0b = c2dA0h.A0b(bytesPerFrame5);
            int bytesPerFrame6 = c1034Kl.A04;
            this.A04 = c2dA0b.A0m(bytesPerFrame6).A0i(i).A14();
            return;
        }
        StringBuilder sbAppend = new StringBuilder().append(A00(7, 21, 72)).append(i2).append(A00(0, 7, 48));
        int bytesPerFrame7 = c1034Kl.A02;
        throw C05802i.A01(sbAppend.append(bytesPerFrame7).toString(), null);
    }

    @Override
    public final void AA0(int i, long j) {
        this.A05.AIN(new C1994jS(this.A07, 1, i, j));
        this.A06.A6W(this.A04);
    }

    @Override
    public final void AI0(long j) {
        this.A02 = j;
        this.A00 = 0;
        this.A01 = 0L;
    }
}

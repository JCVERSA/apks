package com.facebook.ads.redexgen.core;

import java.io.IOException;

public abstract class AbstractC0923Gd {
    public static String[] A00 = {"o6dy0jxWVFoVpdfIHLQ5kJFOMlq1Sn1Q", "79oj", "9g10QGOLUMPWkkbPiEKlPZ6GdmncXBXa", "6fmIgIVXmOYY3cUB7ZYAXnWSgE20TitB", "v6a7Yb3DANDL70kkwlzLnkI1heNzynkm", "eDdjZQkAYxVEYJ3d9Q78IvgSo191T7ve", "sHmXnPOOobIrXpWrquJBTDw1maWJKk3u", "k0vF7vRBeJQaOBXZ"};

    public static int A00(C4J c4j, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c4j.A0I() + 1;
            case 7:
                int iA0M = c4j.A0M();
                String[] strArr = A00;
                if (strArr[6].charAt(23) != strArr[4].charAt(23)) {
                    throw new RuntimeException();
                }
                A00[7] = "hcXiJWofr5Txci555yuma5X";
                return iA0M + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long A01(InterfaceC2101lN interfaceC2101lN, C0927Gh c0927Gh) throws IOException {
        interfaceC2101lN.AI1();
        boolean z = true;
        interfaceC2101lN.A3z(1);
        byte[] bArr = new byte[1];
        interfaceC2101lN.AG9(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z = false;
        }
        interfaceC2101lN.A3z(2);
        int i = z ? 7 : 6;
        C4J c4j = new C4J(i);
        c4j.A0e(GZ.A00(interfaceC2101lN, c4j.A0l(), 0, i));
        interfaceC2101lN.AI1();
        C0922Gc c0922Gc = new C0922Gc();
        boolean isBlockSizeVariable = A08(c4j, c0927Gh, z, c0922Gc);
        if (isBlockSizeVariable) {
            return c0922Gc.A00;
        }
        throw C05802i.A01(null, null);
    }

    public static boolean A02(int i, C0927Gh c0927Gh) {
        if (i == 0) {
            return true;
        }
        int i2 = c0927Gh.A01;
        if (A00[7].length() == 8) {
            throw new RuntimeException();
        }
        A00[0] = "dnyA5Em4Vekc9hKZNMMqKWCBR5ivXppC";
        return i == i2;
    }

    public static boolean A03(int i, C0927Gh c0927Gh) {
        if (i <= 7) {
            return i == c0927Gh.A02 - 1;
        }
        if (A00[3].charAt(10) != 'Y') {
            throw new RuntimeException();
        }
        A00[3] = "e0AkGTV6jhYRPjlSs9AVJSXBXenCNngQ";
        return i <= 10 && c0927Gh.A02 == 2;
    }

    public static boolean A04(C4J c4j, int i) {
        int iA0I = c4j.A0I();
        int crc = c4j.A09();
        return iA0I == AbstractC06244a.A0J(c4j.A0l(), i, crc + (-1), 0);
    }

    public static boolean A05(C4J c4j, C0927Gh c0927Gh, int i) {
        int iA00 = A00(c4j, i);
        if (iA00 != -1) {
            int blockSizeSamples = c0927Gh.A03;
            if (iA00 <= blockSizeSamples) {
                return true;
            }
        }
        return false;
    }

    public static boolean A06(C4J c4j, C0927Gh c0927Gh, int i) {
        int sampleRate = c0927Gh.A07;
        if (i == 0) {
            return true;
        }
        if (i <= 11) {
            return i == c0927Gh.A08;
        }
        if (i == 12) {
            return c4j.A0I() * 1000 == sampleRate;
        }
        if (i > 14) {
            return false;
        }
        int expectedSampleRate = c4j.A0M();
        if (i == 14) {
            expectedSampleRate *= 10;
        }
        return expectedSampleRate == sampleRate;
    }

    public static boolean A07(C4J c4j, C0927Gh c0927Gh, int i, C0922Gc c0922Gc) {
        int iA09 = c4j.A09();
        long jA0Q = c4j.A0Q();
        long frameHeaderBytes = jA0Q >>> 16;
        if (frameHeaderBytes != i) {
            return false;
        }
        int blockSizeKey = (int) ((jA0Q >> 8) & 15);
        long frameHeaderBytes2 = jA0Q >> 1;
        int frameStartPosition = (int) (frameHeaderBytes2 & 7);
        return A03((int) ((jA0Q >> 4) & 15), c0927Gh) && A02(frameStartPosition, c0927Gh) && !(((jA0Q & 1) > 1L ? 1 : ((jA0Q & 1) == 1L ? 0 : -1)) == 0) && A08(c4j, c0927Gh, (((jA0Q >>> 16) & 1) > 1L ? 1 : (((jA0Q >>> 16) & 1) == 1L ? 0 : -1)) == 0, c0922Gc) && A05(c4j, c0927Gh, (int) ((jA0Q >> 12) & 15)) && A06(c4j, c0927Gh, blockSizeKey) && A04(c4j, iA09);
    }

    public static boolean A08(C4J c4j, C0927Gh c0927Gh, boolean z, C0922Gc c0922Gc) {
        long utf8Value;
        try {
            long jA0S = c4j.A0S();
            if (z) {
                utf8Value = jA0S;
            } else {
                long utf8Value2 = c0927Gh.A03;
                utf8Value = utf8Value2 * jA0S;
            }
            c0922Gc.A00 = utf8Value;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean A09(InterfaceC2101lN interfaceC2101lN, C0927Gh c0927Gh, int i, C0922Gc c0922Gc) throws IOException {
        long jA8a = interfaceC2101lN.A8a();
        byte[] bArr = new byte[2];
        interfaceC2101lN.AG9(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            interfaceC2101lN.AI1();
            interfaceC2101lN.A3z((int) (jA8a - interfaceC2101lN.A8f()));
            return false;
        }
        C4J c4j = new C4J(16);
        System.arraycopy(bArr, 0, c4j.A0l(), 0, 2);
        byte[] frameStartBytes = c4j.A0l();
        c4j.A0e(GZ.A00(interfaceC2101lN, frameStartBytes, 2, 14));
        interfaceC2101lN.AI1();
        interfaceC2101lN.A3z((int) (jA8a - interfaceC2101lN.A8f()));
        return A07(c4j, c0927Gh, i, c0922Gc);
    }
}

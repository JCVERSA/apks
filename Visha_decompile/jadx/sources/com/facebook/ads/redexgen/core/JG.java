package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public abstract class JG {
    public static byte[] A00;
    public static String[] A01 = {"igoOoy3NY4UMRHdpx9h3UlwGdvMc0fc9", "i1My3cIv2txc6hnpPF2N9ufK5yKqcDwp", "ZPKM82HH2UhiHuE6c", "N8bcPF6", "fP1uMJr9juYIT", "Q74KZy4WGIwm3", "kYmec6ZLKDIoPLbK3wnMb68OSlbBsX7E", "P2I33wOyCa7MBOFZieFJQqH5gMHCVrks"};

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 63);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-17, 17, 13, 1, 32, 21, 24, -41, -17, -19, -12, -12, -19, -14, -21, -92, -10, -23, -15, -27, -19, -14, -24, -23, -10, -92, -13, -22, -92, -15, -27, -16, -22, -13, -10, -15, -23, -24, -92, -41, -55, -51, -92, -46, -59, -48, -92, -7, -14, -19, -8, -78};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 14 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static void A04(long j, C4J c4j, H1[] h1Arr) {
        int iA0I = c4j.A0I();
        if ((iA0I & 64) != 0) {
            c4j.A0g(1);
            int i = (iA0I & 31) * 3;
            int iA09 = c4j.A09();
            for (H1 h1 : h1Arr) {
                c4j.A0f(iA09);
                h1.AI7(c4j, i);
                h1.AIA(j, 1, i, 0, null);
            }
        }
    }

    static {
        A02();
    }

    public static int A00(C4J c4j) {
        int i = 0;
        while (value != 0) {
            int iA0I = c4j.A0I();
            i += iA0I;
            int b = A01[3].length();
            if (b == 4) {
                throw new RuntimeException();
            }
            A01[2] = "hfDUXVNQknc2urmlb";
            if (iA0I != 255) {
                return i;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001d  */
    public static void A03(long j, C4J c4j, H1[] h1Arr) {
        while (true) {
            if (c4j.A07() > 1) {
                int iA00 = A00(c4j);
                int iA01 = A00(c4j);
                int iA09 = c4j.A09() + iA01;
                if (iA01 != -1) {
                    int payloadType = c4j.A07();
                    if (iA01 > payloadType) {
                        AnonymousClass44.A07(A01(0, 7, 109), A01(7, 45, 69));
                        iA09 = c4j.A0A();
                    } else if (iA00 == 4 && iA01 >= 8) {
                        int userIdentifier = c4j.A0I();
                        int providerCode = c4j.A0M();
                        int countryCode = 0;
                        if (providerCode == 49) {
                            countryCode = c4j.A0C();
                        }
                        int iA0I = c4j.A0I();
                        if (providerCode == 47) {
                            c4j.A0g(1);
                        }
                        int i = (userIdentifier == 181 && (providerCode == 49 || providerCode == 47) && iA0I == 3) ? 1 : 0;
                        if (providerCode == 49) {
                            int userDataTypeCode = countryCode != 1195456820 ? 0 : 1;
                            i &= userDataTypeCode;
                        }
                        if (i != 0) {
                            A04(j, c4j, h1Arr);
                        }
                    }
                } else {
                    AnonymousClass44.A07(A01(0, 7, 109), A01(7, 45, 69));
                    iA09 = c4j.A0A();
                }
                c4j.A0f(iA09);
            } else {
                return;
            }
        }
    }
}

package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public final class C07187q implements InterfaceC2074kk {
    public static byte[] A04;
    public final long A00;
    public final long A01;
    public final long[] A02;
    public final long[] A03;

    static {
        A02();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 26 out of bounds for length 24
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C07187q A00(long j, long j2, C0931Gl c0931Gl, C4J c4j) {
        int iA0I;
        long j3 = j2;
        c4j.A0g(10);
        int iA0C = c4j.A0C();
        if (iA0C <= 0) {
            return null;
        }
        int i = c0931Gl.A03;
        long jA0U = AbstractC06244a.A0U(iA0C, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, i);
        int iA0M = c4j.A0M();
        int iA0M2 = c4j.A0M();
        int iA0M3 = c4j.A0M();
        c4j.A0g(2);
        long j4 = j3 + ((long) c0931Gl.A02);
        long[] jArr = new long[iA0M];
        long[] jArr2 = new long[iA0M];
        for (int i2 = 0; i2 < iA0M; i2++) {
            jArr[i2] = (((long) i2) * jA0U) / ((long) iA0M);
            jArr2[i2] = Math.max(j3, j4);
            switch (iA0M3) {
                case 1:
                    iA0I = c4j.A0I();
                    break;
                case 2:
                    iA0I = c4j.A0M();
                    break;
                case 3:
                    iA0I = c4j.A0K();
                    break;
                case 4:
                    iA0I = c4j.A0L();
                    break;
                default:
                    return null;
            }
            j3 += ((long) iA0I) * ((long) iA0M2);
        }
        if (j != -1 && j != j3) {
            AnonymousClass44.A07(A01(27, 10, 89), A01(2, 25, 50) + j + A01(0, 2, 80) + j3);
        }
        return new C07187q(jArr, jArr2, jA0U, j3);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 43);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-89, -101, -77, -97, -81, -90, 125, -63, -66, -47, -66, 125, -48, -58, -41, -62, 125, -54, -58, -48, -54, -66, -47, -64, -59, -105, 125, -38, -26, -10, -19, -41, -23, -23, -17, -23, -10};
    }

    public C07187q(long[] jArr, long[] jArr2, long j, long j2) {
        this.A03 = jArr;
        this.A02 = jArr2;
        this.A01 = j;
        this.A00 = j2;
    }

    @Override
    public final long A7b() {
        return this.A00;
    }

    @Override
    public final long A7l() {
        return this.A01;
    }

    @Override
    public final C0941Gv A8t(long j) {
        int iA0L = AbstractC06244a.A0L(this.A03, j, true, true);
        C0943Gx c0943Gx = new C0943Gx(this.A03[iA0L], this.A02[iA0L]);
        if (c0943Gx.A01 < j) {
            int tableIndex = this.A03.length;
            if (iA0L != tableIndex - 1) {
                int tableIndex2 = iA0L + 1;
                long j2 = this.A03[tableIndex2];
                int tableIndex3 = iA0L + 1;
                C0943Gx nextSeekPoint = new C0943Gx(j2, this.A02[tableIndex3]);
                return new C0941Gv(c0943Gx, nextSeekPoint);
            }
        }
        return new C0941Gv(c0943Gx);
    }

    @Override
    public final long A99(long j) {
        return this.A03[AbstractC06244a.A0L(this.A02, j, true, true)];
    }

    @Override
    public final boolean AAa() {
        return true;
    }
}

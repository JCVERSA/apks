package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public final class C07157n implements InterfaceC2074kk {
    public static byte[] A06;
    public static String[] A07 = {"QubeI9WU03qBZcNvE4IUkWvlw0NRrBK6", "F1d068LLA73yClDAGmhas6o", "9YpbVeLOd0f6m", "7Ycu3nAZXESMUbUrutcG9271koISuOhT", "QjcyZL4t35rbWMpE5hp6oYgD7sVhkS0D", "M48I8dHdEQTg0rHaHaNT6qI1", "cVfJzOsNywAlxLknvQSr1dDTMZn5TIAU", "kJeh17rnzHgOQ2HfO7oDpw4wPPnH7lFe"};
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long[] A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 21 out of bounds for length 19
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C07157n A01(long j, long j2, C0931Gl c0931Gl, C4J c4j) {
        int iA0L;
        int i = c0931Gl.A04;
        int i2 = c0931Gl.A03;
        int iA0C = c4j.A0C();
        if ((iA0C & 1) != 1 || (iA0L = c4j.A0L()) == 0) {
            return null;
        }
        long jA0U = AbstractC06244a.A0U(iA0L, ((long) i) * 1000000, i2);
        if ((iA0C & 6) != 6) {
            return new C07157n(j2, c0931Gl.A02, jA0U);
        }
        long jA0Q = c4j.A0Q();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = c4j.A0I();
        }
        if (j != -1 && j != j2 + jA0Q) {
            AnonymousClass44.A07(A02(27, 10, 78), A02(2, 25, 105) + j + A02(0, 2, 40) + (j2 + jA0Q));
        }
        return new C07157n(j2, c0931Gl.A02, jA0U, jA0Q, jArr);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A07;
            if (strArr[1].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A07[2] = "La6";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 30);
            i4++;
        }
    }

    public static void A03() {
        A06 = new byte[]{114, 102, -33, -48, -43, -50, -89, -21, -24, -5, -24, -89, -6, -16, 1, -20, -89, -12, -16, -6, -12, -24, -5, -22, -17, -63, -89, -60, -43, -38, -45, -65, -47, -47, -41, -47, -34};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 18 out of bounds for length 17
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override
    public final C0941Gv A8t(long j) {
        double d;
        if (!AAa()) {
            return new C0941Gv(new C0943Gx(0L, this.A03 + ((long) this.A00)));
        }
        long jA0T = AbstractC06244a.A0T(j, 0L, this.A04);
        double d2 = (jA0T * 100.0d) / this.A04;
        if (d2 <= 0.0d) {
            d = 0.0d;
        } else if (d2 >= 100.0d) {
            d = 256.0d;
        } else {
            int i = (int) d2;
            long[] jArr = (long[]) C3M.A02(this.A05);
            double d3 = jArr[i];
            d = (((i == 99 ? 256.0d : jArr[i + 1]) - d3) * (d2 - ((double) i))) + d3;
        }
        return new C0941Gv(new C0943Gx(jA0T, this.A03 + AbstractC06244a.A0T(Math.round((d / 256.0d) * this.A02), this.A00, this.A02 - 1)));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 17 out of bounds for length 17
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    @Override
    public final long A99(long j) {
        long j2 = j - this.A03;
        if (!AAa() || j2 <= this.A00) {
            return 0L;
        }
        long[] jArr = (long[]) C3M.A02(this.A05);
        double d = (j2 * 256.0d) / this.A02;
        int iA0L = AbstractC06244a.A0L(jArr, (long) d, true, true);
        long jA00 = A00(iA0L);
        long j3 = jArr[iA0L];
        long jA01 = A00(iA0L + 1);
        long j4 = iA0L == 99 ? 256L : jArr[iA0L + 1];
        String[] strArr = A07;
        if (strArr[0].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        A07[6] = "PlWtaQzxKmV3LAe12cSeUsJTirSwbfkK";
        return Math.round((jA01 - jA00) * (j3 == j4 ? 0.0d : (d - j3) / (j4 - j3))) + jA00;
    }

    static {
        A03();
    }

    public C07157n(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public C07157n(long j, int i, long j2, long j3, long[] jArr) {
        this.A03 = j;
        this.A00 = i;
        this.A04 = j2;
        this.A05 = jArr;
        this.A02 = j3;
        this.A01 = j3 != -1 ? j + j3 : -1L;
    }

    private long A00(int i) {
        return (this.A04 * ((long) i)) / 100;
    }

    @Override
    public final long A7b() {
        return this.A01;
    }

    @Override
    public final long A7l() {
        return this.A04;
    }

    @Override
    public final boolean AAa() {
        return this.A05 != null;
    }
}

package com.facebook.ads.redexgen.core;

import android.util.Pair;
import androidx.media3.extractor.WavUtil;
import java.io.IOException;
import java.util.Arrays;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public abstract class AbstractC1036Kn {
    public static byte[] A00;
    public static String[] A01 = {"sX38XYxjSWs23SpIJtTv7zqsiULa6NDN", "GVdzvLjErUQlCiFlI6sj0UXKxa4oVMD1", "mIptDDVqgJzdzMBxnTdyNQyM9U5NEVN", "EbHk890dVqPqb4rol71PU8NjsI2mWG9N", "NaaYWHcYaAW6JEQtPhbZM5A", "ny7KRitGLB3lrMhzsw8kbWX2NySq0vmW", "JAavj5eiIDuEB7ikgcXMWWkFbaDdUxIE", "svQ0hoJoeE45w1Y6xC2"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 17 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C1034Kl A02(InterfaceC2101lN interfaceC2101lN) throws IOException {
        byte[] bArr;
        C4J c4j = new C4J(16);
        C1035Km c1035KmA03 = A03(WavUtil.FMT_FOURCC, interfaceC2101lN, c4j);
        C3M.A08(c1035KmA03.A01 >= 16);
        interfaceC2101lN.AG9(c4j.A0l(), 0, 16);
        c4j.A0f(0);
        int iA0G = c4j.A0G();
        int iA0G2 = c4j.A0G();
        int iA0F = c4j.A0F();
        int iA0F2 = c4j.A0F();
        int iA0G3 = c4j.A0G();
        int iA0G4 = c4j.A0G();
        int i = ((int) c1035KmA03.A01) - 16;
        if (i > 0) {
            bArr = new byte[i];
            interfaceC2101lN.AG9(bArr, 0, i);
        } else {
            bArr = AbstractC06244a.A07;
        }
        interfaceC2101lN.AJJ((int) (interfaceC2101lN.A8a() - interfaceC2101lN.A8f()));
        return new C1034Kl(iA0G, iA0G2, iA0F, iA0F2, iA0G3, iA0G4, bArr);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 67);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{59, 16, 13, 22, 19, 88, 17, ByteCode.T_LONG, 88, 12, 23, 23, 88, 20, 25, 10, 31, 29, 88, 80, 6, 74, Utf8.REPLACEMENT_BYTE, 58, 83, 81, 88, 12, 23, 88, ByteCode.T_LONG, 19, 17, 8, 67, 88, 17, 28, 66, 88, 45, 3, 10, ByteCode.T_LONG, 22, 13, 10, 3, 68, 17, 10, 15, 10, ByteCode.T_LONG, 19, 10, 68, 51, 37, 50, 68, 7, 12, 17, 10, 15, 94, 68, 105, 82, 79, 73, 76, 76, 83, 78, 72, 89, 88, 28, 90, 83, 78, 81, 28, 72, 69, 76, 89, 6, 28, 105, 95, 72, 118, 91, 95, 90, 91, 76, 108, 91, 95, 90, 91, 76};
    }

    static {
        A05();
    }

    public static long A00(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C4J c4j = new C4J(8);
        C1035Km chunkHeader = C1035Km.A00(interfaceC2101lN, c4j);
        if (chunkHeader.A00 != 1685272116) {
            interfaceC2101lN.AI1();
            return -1L;
        }
        interfaceC2101lN.A3z(8);
        c4j.A0f(0);
        interfaceC2101lN.AG9(c4j.A0l(), 0, 8);
        long sampleDataSize = c4j.A0N();
        interfaceC2101lN.AJJ(((int) chunkHeader.A01) + 8);
        return sampleDataSize;
    }

    public static Pair<Long, Long> A01(InterfaceC2101lN interfaceC2101lN) throws IOException {
        interfaceC2101lN.AI1();
        C1035Km c1035KmA03 = A03(1684108385, interfaceC2101lN, new C4J(8));
        interfaceC2101lN.AJJ(8);
        return Pair.create(Long.valueOf(interfaceC2101lN.A8f()), Long.valueOf(c1035KmA03.A01));
    }

    public static C1035Km A03(int i, InterfaceC2101lN interfaceC2101lN, C4J c4j) throws IOException {
        C1035Km c1035KmA00 = C1035Km.A00(interfaceC2101lN, c4j);
        while (c1035KmA00.A00 != i) {
            AnonymousClass44.A07(A04(91, 15, 125), A04(40, 28, 39) + c1035KmA00.A00);
            long j = c1035KmA00.A01 + 8;
            if (j <= 2147483647L) {
                interfaceC2101lN.AJJ((int) j);
                c1035KmA00 = C1035Km.A00(interfaceC2101lN, c4j);
            } else {
                throw C05802i.A00(A04(0, 40, 59) + c1035KmA00.A00);
            }
        }
        return c1035KmA00;
    }

    public static boolean A06(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C4J c4j = new C4J(8);
        C1035Km c1035KmA00 = C1035Km.A00(interfaceC2101lN, c4j);
        if (c1035KmA00.A00 != 1380533830) {
            int i = c1035KmA00.A00;
            if (A01[1].charAt(26) == 'h') {
                throw new RuntimeException();
            }
            A01[4] = "7d3HBnqB6pKujyEoyh9Hov6";
            if (i != 1380333108) {
                return false;
            }
        }
        interfaceC2101lN.AG9(c4j.A0l(), 0, 4);
        c4j.A0f(0);
        int iA0C = c4j.A0C();
        if (iA0C != 1463899717) {
            AnonymousClass44.A05(A04(91, 15, 125), A04(68, 23, 127) + iA0C);
            return false;
        }
        return true;
    }
}

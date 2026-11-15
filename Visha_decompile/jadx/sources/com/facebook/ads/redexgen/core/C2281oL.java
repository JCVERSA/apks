package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.C;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C2281oL implements C1S {
    public static byte[] A0H;
    public static String[] A0I = {"AtN4gZlBq", "c6vG0ZoB350sNCwGTcbmyQxG", "GzjisXMF7MeBETThzgY0McLZmUxvZEHG", "X6Q", "OR9IAwpAbXPQPDykEqLOHO0nD", "OJOMvHQBuYweGyqOlvOJ7Ft7l3L2", "Cgb", "Ei80eZ3oJ"};
    public static final C1R<C2281oL> A0J;
    public static final Object A0K;
    public static final C2303oi A0L;
    public static final Object A0M;
    public static final String A0N;
    public static final String A0O;
    public static final String A0P;
    public static final String A0Q;
    public static final String A0R;
    public static final String A0S;
    public static final String A0T;
    public static final String A0U;
    public static final String A0V;
    public static final String A0W;
    public static final String A0X;
    public static final String A0Y;
    public static final String A0Z;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public C2305ok A08;
    public Object A0A;

    @Deprecated
    public Object A0B;
    public boolean A0D;

    @Deprecated
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public Object A0C = A0K;
    public C2303oi A09 = A0L;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 30 out of bounds for length 30
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C2281oL A00(Bundle bundle) {
        C2305ok c2305ok;
        Bundle bundle2 = bundle.getBundle(A0W);
        C2303oi c2303oi = bundle2 != null ? (C2303oi) C2303oi.A08.A6X(bundle2) : C2303oi.A09;
        long j = bundle.getLong(A0Y, C.TIME_UNSET);
        long j2 = bundle.getLong(A0Z, C.TIME_UNSET);
        long j3 = bundle.getLong(A0P, C.TIME_UNSET);
        boolean z = bundle.getBoolean(A0T, false);
        boolean z2 = bundle.getBoolean(A0R, false);
        Bundle bundle3 = bundle.getBundle(A0V);
        if (bundle3 != null) {
            c2305ok = (C2305ok) C2305ok.A06.A6X(bundle3);
        } else {
            c2305ok = null;
            if (A0I[2].charAt(1) != 'z') {
                throw new RuntimeException();
            }
            String[] strArr = A0I;
            strArr[6] = "auZ";
            strArr[3] = "aKQ";
        }
        boolean z3 = bundle.getBoolean(A0S, false);
        long j4 = bundle.getLong(A0N, 0L);
        long j5 = bundle.getLong(A0O, C.TIME_UNSET);
        int i = bundle.getInt(A0Q, 0);
        int i2 = bundle.getInt(A0U, 0);
        long j6 = bundle.getLong(A0X, 0L);
        C2281oL c2281oL = new C2281oL();
        c2281oL.A07(A0M, c2303oi, null, j, j2, j3, z, z2, c2305ok, j4, j5, i, i2, j6);
        c2281oL.A0F = z3;
        return c2281oL;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0H = new byte[]{6, 10, 8, 75, 3, 4, 6, 0, 7, 10, 10, 14, 75, 4, 1, 22, 75, 4, ByteCode.T_LONG, 1, 23, 10, 12, 1, 29, 75, 8, 0, 1, 12, 4, 86, 75, 6, 10, 8, 8, 10, ByteCode.T_LONG, 75, 49, 12, 8, 0, 9, 12, ByteCode.T_LONG, 0};
    }

    static {
        A03();
        A0K = new Object();
        A0M = new Object();
        A0L = new C2I().A03(A02(0, 48, 107)).A00(Uri.EMPTY).A05();
        A0W = AbstractC06244a.A0h(1);
        A0Y = AbstractC06244a.A0h(2);
        A0Z = AbstractC06244a.A0h(3);
        A0P = AbstractC06244a.A0h(4);
        A0T = AbstractC06244a.A0h(5);
        A0R = AbstractC06244a.A0h(6);
        A0V = AbstractC06244a.A0h(7);
        A0S = AbstractC06244a.A0h(8);
        A0N = AbstractC06244a.A0h(9);
        A0O = AbstractC06244a.A0h(10);
        A0Q = AbstractC06244a.A0h(11);
        A0U = AbstractC06244a.A0h(12);
        A0X = AbstractC06244a.A0h(13);
        A0J = new C1R() {
            @Override
            public final C1S A6X(Bundle bundle) {
                return C2281oL.A00(bundle);
            }
        };
    }

    public final long A04() {
        return AbstractC06244a.A0P(this.A02);
    }

    public final long A05() {
        return this.A02;
    }

    public final long A06() {
        return AbstractC06244a.A0P(this.A03);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:26:0x0082  */
    public final C2281oL A07(Object obj, C2303oi c2303oi, Object obj2, long j, long j2, long j3, boolean z, boolean z2, C2305ok c2305ok, long j4, long j5, int i, int i2, long j6) {
        Object obj3;
        this.A0C = obj;
        this.A09 = c2303oi != null ? c2303oi : A0L;
        if (A0I[2].charAt(1) != 'z') {
            throw new RuntimeException();
        }
        A0I[5] = "sHLAwqiYlmMVa087WjDP7yFYW";
        if (c2303oi != null) {
            C2Q c2q = c2303oi.A03;
            if (A0I[2].charAt(1) != 'z') {
                A0I[2] = "JzGzHC0FwGnnWhMzWBrJaCXM29VIx9g1";
                if (c2q != null) {
                    obj3 = c2303oi.A03.A03;
                } else {
                    obj3 = null;
                }
            } else {
                A0I[5] = "IGwZtC";
                if (c2q != null) {
                    obj3 = c2303oi.A03.A03;
                } else {
                    obj3 = null;
                }
            }
        } else {
            obj3 = null;
        }
        this.A0B = obj3;
        this.A0A = obj2;
        this.A06 = j;
        this.A07 = j2;
        this.A04 = j3;
        this.A0G = z;
        this.A0D = z2;
        this.A0E = c2305ok != null;
        this.A08 = c2305ok;
        this.A02 = j4;
        this.A03 = j5;
        this.A00 = i;
        this.A01 = i2;
        this.A05 = j6;
        this.A0F = false;
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        C2281oL c2281oL = (C2281oL) obj;
        if (AbstractC06244a.A1E(this.A0C, c2281oL.A0C) && AbstractC06244a.A1E(this.A09, c2281oL.A09) && AbstractC06244a.A1E(this.A0A, c2281oL.A0A) && AbstractC06244a.A1E(this.A08, c2281oL.A08) && this.A06 == c2281oL.A06 && this.A07 == c2281oL.A07 && this.A04 == c2281oL.A04 && this.A0G == c2281oL.A0G && this.A0D == c2281oL.A0D && this.A0F == c2281oL.A0F && this.A02 == c2281oL.A02 && this.A03 == c2281oL.A03 && this.A00 == c2281oL.A00 && this.A01 == c2281oL.A01) {
            long j = this.A05;
            long j2 = c2281oL.A05;
            String[] strArr = A0I;
            if (strArr[6].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[6] = "Zdu";
            strArr2[3] = "ITW";
            if (j == j2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((((((((((((((7 * 31) + this.A0C.hashCode()) * 31) + this.A09.hashCode()) * 31) + (this.A0A == null ? 0 : this.A0A.hashCode())) * 31) + (this.A08 != null ? this.A08.hashCode() : 0)) * 31) + ((int) (this.A06 ^ (this.A06 >>> 32)))) * 31) + ((int) (this.A07 ^ (this.A07 >>> 32)))) * 31) + ((int) (this.A04 ^ (this.A04 >>> 32)))) * 31) + (this.A0G ? 1 : 0);
        if (A0I[2].charAt(1) != 'z') {
            throw new RuntimeException();
        }
        String[] strArr = A0I;
        strArr[6] = "6VN";
        strArr[3] = "iNJ";
        return (((((((((((((iHashCode * 31) + (this.A0D ? 1 : 0)) * 31) + (this.A0F ? 1 : 0)) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + this.A00) * 31) + this.A01) * 31) + ((int) (this.A05 ^ (this.A05 >>> 32)));
    }
}

package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class C1058Lj {
    public static byte[] A0W;
    public static String[] A0X = {"lVJcyHuE1PJb579Sb1LAAlg5vS4NZYMV", "qyLkbqfl0JpOOnDgJdZjiTPjgkzmhXwK", "qCNdEz7ripOZNNb3yCY8Ki49zW8UWRt4", "Cjqz4QIw8w0k6KevPFem8GYP4yUKgFOK", "ptM4eVx6M57F8Ll6MNcW2L659ErB2sOY", "McIwIiSAB", "OKPGVpQZykPiX00cv", "DTBK8GKi"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final long A0A;
    public final long A0B;
    public final long A0C;
    public final long A0D;
    public final long A0E;
    public final long A0F;
    public final long A0G;
    public final C1056Lh A0H;
    public final C1057Li A0I;
    public final String A0J;
    public final String A0K;
    public final String A0L;
    public final String A0M;
    public final String A0N;
    public final String A0O;
    public final String A0P;
    public final Map<String, String> A0Q;
    public final boolean A0R;
    public final boolean A0S;
    public final boolean A0T;
    public final boolean A0U;
    public final boolean A0V;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0W, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 89);
            if (A0X[4].charAt(24) == 'w') {
                throw new RuntimeException();
            }
            A0X[3] = "PXVGXjtmkErHxa13ZrhtcOEvw3ek";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0W = new byte[]{72, 68};
    }

    static {
        A01();
    }

    public C1058Lj() {
        this(A00(0, 0, 39), -1L, false, -1, -1, -1, -1, false, false, -1, -1L, new C1057Li(), -1L, false, -1, -1, -1L, -1L, -1, null, -1, null, null, C1056Lh.A02, -1, false, A00(0, 0, 39), A00(0, 0, 39), A00(0, 0, 39), null, -1L, -1L);
    }

    public C1058Lj(C1058Lj c1058Lj) {
        this(c1058Lj, c1058Lj.A0N);
    }

    public C1058Lj(C1058Lj c1058Lj, String str) {
        this(c1058Lj.A0M, c1058Lj.A0A, c1058Lj.A0T, c1058Lj.A08, c1058Lj.A07, c1058Lj.A00, c1058Lj.A09, c1058Lj.A0V, c1058Lj.A0S, c1058Lj.A05, c1058Lj.A0C, c1058Lj.A0I, c1058Lj.A0F, c1058Lj.A0U, c1058Lj.A06, c1058Lj.A02, c1058Lj.A0E, c1058Lj.A0B, c1058Lj.A01, c1058Lj.A0Q, c1058Lj.A04, c1058Lj.A0K, c1058Lj.A0J, c1058Lj.A0H, c1058Lj.A03, c1058Lj.A0R, c1058Lj.A0O, c1058Lj.A0L, c1058Lj.A0P, str, -1L, -1L);
    }

    public C1058Lj(String str, long j, boolean z, int i, int i2, int i3, int i4, boolean z2, boolean z3, int i5, long j2, C1057Li c1057Li, long j3, boolean z4, int i6, int i7, long j4, long j5, int i8, Map<String, String> map, int i9, String str2, String str3, C1056Lh c1056Lh, int i10, boolean z5, String str4, String str5, String str6, String str7, long j6, long j7) {
        this.A0Q = new HashMap();
        this.A0M = str;
        this.A0A = j;
        this.A0T = z;
        this.A08 = i;
        this.A07 = i2;
        this.A00 = i3;
        this.A09 = i4;
        this.A0V = z2;
        this.A0S = z3;
        this.A05 = i5;
        this.A0C = j2;
        this.A0I = c1057Li;
        this.A0F = j3;
        this.A0U = z4;
        this.A06 = i6;
        this.A02 = i7;
        this.A0E = j4;
        this.A0B = j5;
        this.A01 = i8;
        this.A04 = i9;
        this.A0J = str3;
        this.A0K = str2;
        if (map != null) {
            this.A0Q.putAll(map);
        }
        this.A0H = c1056Lh;
        this.A03 = i10;
        this.A0R = z5;
        this.A0O = str4;
        this.A0L = str5;
        this.A0P = str6;
        this.A0N = str7;
        this.A0G = j6;
        this.A0D = j7;
    }

    public final String toString() {
        StringBuilder sbAppend = new StringBuilder().append(this.A0M);
        String strA00 = A00(0, 2, 61);
        return sbAppend.append(strA00).append(this.A0A).append(strA00).append(this.A0T).append(strA00).append(this.A08).append(strA00).append(this.A07).append(strA00).append(this.A00).append(strA00).append(this.A09).append(strA00).append(this.A0V).append(strA00).append(this.A0S).append(strA00).append(this.A05).append(strA00).append(this.A0E).append(strA00).append(this.A0B).append(strA00).append(this.A01).append(strA00).append(this.A04).append(strA00).append(this.A06).append(strA00).append(this.A02).append(strA00).append(this.A03).append(strA00).append(this.A0R).append(strA00).append(this.A0O).toString();
    }
}

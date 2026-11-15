package com.facebook.ads.redexgen.core;

import android.net.Uri;
import androidx.media3.common.C;
import com.facebook.ads.androidx.media3.common.Timeline;
import java.util.Arrays;

public final class AnonymousClass97 extends Timeline {
    public static byte[] A0D;
    public static final C2303oi A0E;
    public static final Object A0F;
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final C2305ok A07;
    public final C2303oi A08;
    public final Object A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0D = new byte[]{-79, -57, -52, -59, -54, -61, -82, -61, -48, -57, -51, -62, -78, -57, -53, -61, -54, -57, -52, -61};
    }

    static {
        A01();
        A0F = new Object();
        A0E = new C2I().A03(A00(0, 20, 44)).A00(Uri.EMPTY).A05();
    }

    public AnonymousClass97(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, C2303oi c2303oi, C2305ok c2305ok) {
        this.A02 = j;
        this.A06 = j2;
        this.A00 = j3;
        this.A01 = j4;
        this.A04 = j5;
        this.A05 = j6;
        this.A03 = j7;
        this.A0B = z;
        this.A0A = z2;
        this.A0C = z3;
        this.A09 = obj;
        this.A08 = (C2303oi) C3M.A01(c2303oi);
        this.A07 = c2305ok;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AnonymousClass97(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, C2303oi c2303oi) {
        C2305ok c2305ok;
        if (z3) {
            c2305ok = c2303oi.A02;
        } else {
            c2305ok = null;
        }
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j, j2, j3, j4, z, z2, false, obj, c2303oi, c2305ok);
    }

    public AnonymousClass97(long j, boolean z, boolean z2, boolean z3, Object obj, C2303oi c2303oi) {
        this(j, j, 0L, 0L, z, z2, z3, obj, c2303oi);
    }

    @Override
    public final int A06() {
        return 1;
    }

    @Override
    public final int A07() {
        return 1;
    }

    @Override
    public final int A0A(Object obj) {
        return A0F.equals(obj) ? 0 : -1;
    }

    @Override
    public final C2283oN A0I(int i, C2283oN c2283oN, boolean z) {
        C3M.A00(i, 0, 1);
        return c2283oN.A0F(null, z ? A0F : null, 0, this.A01, -this.A05);
    }

    @Override
    public final C2281oL A0L(int i, C2281oL c2281oL, long j) {
        C3M.A00(i, 0, 1);
        long j2 = this.A03;
        if (this.A0A && !this.A0C && j != 0) {
            if (this.A04 == C.TIME_UNSET) {
                j2 = C.TIME_UNSET;
            } else {
                j2 += j;
                if (j2 > this.A04) {
                    j2 = C.TIME_UNSET;
                }
            }
        }
        return c2281oL.A07(C2281oL.A0K, this.A08, this.A09, this.A02, this.A06, C.TIME_UNSET, this.A0B, this.A0A, null, j2, this.A04, 0, 0, this.A05);
    }

    @Override
    public final Object A0M(int i) {
        C3M.A00(i, 0, 1);
        return A0F;
    }
}

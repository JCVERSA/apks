package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.view.Surface;
import java.util.Arrays;

public final class C1690eF {
    public static byte[] A02;
    public final C9V A00;
    public final C2118lf A01 = new C2118lf();

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-64, -54, -66, -64, 1, -1, 19, 17, 3, -64, -66, -40, -66, -64, -74, -64, -76, -74, 6, -7, 2, -8, -7, 6, -7, 6, -35, 2, -8, -7, 12, -74, -76, -50, -76, -74, -54, 37, -9, -6, 9, 16, -73, 2, -6, 8, 8, -10, -4, -6, -73, -75, -49, -75, -73, -75, 92, -82, -77, -86, -97, 92, 90, 116, 90, 92};
    }

    public C1690eF(C1635dL c1635dL) {
        EA trackSelectionFactory = new C2144m5(this.A01);
        AnonymousClass92 anonymousClass92 = new AnonymousClass92(trackSelectionFactory);
        C6S loadControl = new C2231nV();
        this.A00 = AbstractC06755z.A00(new C2228nS(c1635dL), anonymousClass92, loadControl, this.A01);
    }

    public static String A01(C2298od c2298od) {
        boolean z = c2298od instanceof C9Y;
        String strA00 = A00(36, 2, 118);
        String strA01 = A00(0, 14, 108);
        if (z) {
            C9Y c9y = (C9Y) c2298od;
            return A00(55, 11, 8) + c9y.A03 + A00(14, 22, 98) + c9y.A02 + strA01 + c9y.getCause() + strA00;
        }
        return A00(41, 14, 99) + c2298od.getMessage() + strA01 + c2298od.getCause() + strA00;
    }

    public static boolean A03() {
        return true;
    }

    public final int A04() {
        return this.A00.A0I();
    }

    public final int A05() {
        return this.A00.A00();
    }

    public final long A06() {
        return this.A00.A7W();
    }

    public final long A07() {
        return this.A00.A7k();
    }

    public final C1688eD A08() {
        C2312or vf = this.A00.A0K();
        if (vf == null) {
            return null;
        }
        return new C1688eD(vf.A0L, vf.A0A);
    }

    public final void A09() {
        this.A00.A0L();
    }

    public final void A0A() {
        this.A00.A02();
    }

    public final void A0B() {
        this.A00.A01();
    }

    public final void A0C(float f) {
        this.A00.A0M(f);
    }

    public final void A0D(long j) {
        this.A00.A04(j);
    }

    public final void A0E(Surface surface) {
        this.A00.A0N(surface);
    }

    public final void A0F(C1609cu c1609cu, Uri uri) {
        if (U7.A2r(c1609cu, A03())) {
            C1694eJ cacheManager = C1694eJ.A06(c1609cu);
            InterfaceC06464w cachedDataSourceFactory = cacheManager.A0H(c1609cu);
            this.A00.A0Q(new AnonymousClass99(cachedDataSourceFactory).A04(uri));
            return;
        }
        CL mediaSource = new AnonymousClass99(new C2246nk(c1609cu, AbstractC06244a.A0j(c1609cu, A00(38, 3, 100)), this.A01)).A04(uri);
        this.A00.A0Q(mediaSource);
    }

    public final void A0G(InterfaceC1687eC interfaceC1687eC) {
        this.A00.A0O(new CR(this, interfaceC1687eC));
    }

    public final void A0H(final InterfaceC1689eE interfaceC1689eE) {
        this.A00.A0P(new InterfaceC2217nH() {
            @Override
            public final void AFq(int i, int i2, int i3, float f) {
                interfaceC1689eE.AFq(i, i2, i3, f);
            }
        });
    }

    public final void A0I(boolean z) {
        this.A00.A0S(z);
    }

    public final boolean A0J() {
        return this.A00.A0T();
    }

    public final boolean A0K() {
        return this.A00.A0J() != null;
    }
}

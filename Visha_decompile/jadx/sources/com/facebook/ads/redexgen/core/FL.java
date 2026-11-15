package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.HashMap;

public final class FL extends FrameLayout implements InterfaceC1367Xo {
    public static byte[] A0B;
    public static final RelativeLayout.LayoutParams A0C;
    public R0 A00;
    public Intent A01;
    public Bundle A02;
    public InterfaceC1367Xo A03;
    public final AbstractC1910hy A04;
    public final AbstractC1910hy A05;
    public final R0 A06;
    public final C1635dL A07;
    public final US A08;
    public final XC A09;
    public final InterfaceC1366Xn A0A;

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0B = new byte[]{117, 105, 100, 102, 96, 104, 96, 107, 113};
    }

    static {
        A0A();
        A0C = new RelativeLayout.LayoutParams(-1, -1);
    }

    public FL(C1635dL c1635dL, US us, AbstractC1910hy abstractC1910hy, AbstractC1910hy abstractC1910hy2, InterfaceC1366Xn interfaceC1366Xn, R0 r0) {
        super(c1635dL);
        this.A07 = c1635dL;
        this.A08 = us;
        this.A05 = abstractC1910hy;
        this.A04 = abstractC1910hy2;
        this.A0A = interfaceC1366Xn;
        this.A06 = r0;
        this.A09 = new XC(this);
        this.A09.A05(XB.A02);
    }

    public C1051Lc A05(C1614cz c1614cz, YY yy) {
        return new C1051Lc(this.A07, this.A08, this.A0A, this.A04, this.A04.A1A(), yy, true, c1614cz);
    }

    private C06153r A06() {
        if (this.A04.A20().A0H().A07() != null) {
            this.A05.A1M(this.A04.A20().A0H().A07().A0N());
            this.A05.A1N(this.A04.A20().A0H().A07().A0P());
        }
        LX lx = new LX();
        C1614cz c1614czA07 = A07(lx, this.A04);
        C06153r c06153r = new C06153r(this.A07, lx, this.A08, this.A05, new SF(this.A07), this.A0A);
        c06153r.setVideoLeadingPlayableAdListener(new FM(this, c1614czA07, lx));
        return c06153r;
    }

    private C1614cz A07(YY yy, AbstractC1910hy abstractC1910hy) {
        NB nbA07 = abstractC1910hy.A20().A0H().A07();
        if (nbA07 == null || !nbA07.A0M()) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(A08(0, 9, 37), yy.A8d());
        return new C1614cz(this.A07, abstractC1910hy, nbA07, this.A08, null, map);
    }

    public void A09() {
        if (this.A03 != null) {
            this.A03.onDestroy();
            if (this.A03 instanceof View) {
                ((View) this.A03).setVisibility(8);
                removeView((View) this.A03);
            }
        }
    }

    private final void A0B(Intent intent, Bundle bundle, R0 r0) {
        this.A03 = A06();
        this.A03.AAl(intent, bundle, r0);
    }

    @Override
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        this.A01 = intent;
        this.A02 = bundle;
        this.A00 = r0;
        this.A0A.A3x(this, A0C);
        A0B(intent, bundle, r0);
    }

    @Override
    public final void AEV(boolean z) {
    }

    @Override
    public final void AF0(boolean z) {
    }

    @Override
    public final void AIB(Bundle bundle) {
    }

    public InterfaceC1367Xo getContentView() {
        return this.A03;
    }

    @Override
    public String getCurrentClientToken() {
        return this.A05.A25();
    }

    @Override
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override
    public final void onDestroy() {
    }

    public void setListener(InterfaceC1366Xn interfaceC1366Xn) {
    }
}

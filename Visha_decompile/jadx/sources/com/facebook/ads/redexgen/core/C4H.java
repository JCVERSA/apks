package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C4H extends G2 {
    public static byte[] A07;
    public static String[] A08 = {"opNTFb7MfNeLnBf1OFt8H8u3IMVbRu1d", "IWQCWQwp5ID5RPcOdaIzYqbwlbVDrClG", "KvkPuVSJhScWrt17epNc", "F0ODCmRg5uMMagWpVfR8fmvJ1OUGt5pq", "F5r", "wG3QjEZJL94bFBL8PiZK", "A8E1xGSXICDDUeWE8x490gS0hcqgXwJC", "2T9PYA9x4VF1QbksNYikemvLXt0jGXOu"};
    public AbstractC1469ae A00;
    public C0838Cw A01;
    public final ImageView A02;
    public final R6 A03;
    public final AtomicBoolean A04;
    public final AtomicBoolean A05;
    public final AtomicBoolean A06;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A07 = new byte[]{-17, -25, -27, -20};
    }

    static {
        A07();
    }

    public C4H(C1635dL c1635dL, YY yy, US us, AbstractC1910hy abstractC1910hy, SF sf, InterfaceC1366Xn interfaceC1366Xn) {
        super(c1635dL, yy, us, abstractC1910hy, sf, interfaceC1366Xn);
        this.A03 = new C0916Fw(this);
        this.A05 = new AtomicBoolean(false);
        this.A04 = new AtomicBoolean(false);
        this.A06 = new AtomicBoolean(false);
        this.A02 = new ImageView(getContext());
        if (abstractC1910hy.A20().A0H().A04() > 0) {
            this.A01 = new C0838Cw(c1635dL, abstractC1910hy.A20().A0H().A04() * 1000);
        }
        this.A02.setScaleType(ImageView.ScaleType.CENTER);
        this.A02.setAdjustViewBounds(true);
        new KZ(this.A02, super.A04).A05(super.A02.A20().A0H().A00(), super.A02.A20().A0H().A01()).A06(new C0915Fv(this)).A07(super.A02.A20().A0H().A08());
    }

    private AbstractC1469ae A01(int i) {
        if (this.A02.getParent() != null) {
            XP.A0H(this.A02);
        }
        C1472ah c1472ahA0N = new C1472ah(super.A04, super.A05, this.A09, super.A02, this.A02, this.A0B, this.A07).A0K(this.A08.getToolbarHeight()).A0R(this.A08).A0J(i).A0N(super.A06);
        if (this.A01 != null) {
            c1472ahA0N.A0T(this.A01);
        }
        c1472ahA0N.A0M(MI.A00(super.A04, super.A05, A03(0, 0, 52), WQ.A00(super.A02.A20().A0J().A05()), new HashMap(), super.A02.A21()));
        C1473ai params = c1472ahA0N.A0W();
        return AbstractC1470af.A00(params, null, true);
    }

    public void A06() {
        if (this.A05.get() && this.A04.get()) {
            A0c();
        }
    }

    private void A08(int i) {
        XP.A0H(this.A00);
        this.A00 = A01(i);
        this.A00.setAccidentalClickCappingListener(new MF() {
            @Override
            public final void ACB() {
                this.A00.A0k();
            }
        });
        C1098My colors = this.A00.getColors();
        XP.A0K(this, colors.A08(this.A00 != null && (this.A00.A1M() || (this.A00 instanceof AbstractC1019Jw))));
        this.A08.setFullscreen(this.A00.A1M());
        this.A08.A0A(colors, KE.A05(super.A02));
        addView(this.A00, 0, G2.A0E);
        setUpFullscreenMode(this.A00 != null && this.A00.A1M());
    }

    @Override
    public final AbstractC1365Xm A0b() {
        AbstractC1365Xm c1117Nr;
        if (!A0j()) {
            c1117Nr = new FullScreenAdToolbar(super.A04, this.A09, super.A06, 1, super.A02.A1t(), super.A02.A1j());
        } else {
            c1117Nr = new C1117Nr(super.A04, this.A09, super.A06, 1);
        }
        if (super.A02.A2K()) {
            c1117Nr.setOnClickListener(new ViewOnClickListenerC1583cU(this));
        }
        return c1117Nr;
    }

    @Override
    public final void A0e() {
        if (this.A00 != null) {
            super.A06.A04(UZ.A0Y, null);
            ME meA1A = this.A00.A1A(A03(0, 4, 63));
            if (super.A02.A2D()) {
                return;
            }
            ME actionOutcome = ME.A09;
            if (meA1A != actionOutcome) {
                ME actionOutcome2 = ME.A06;
                if (meA1A != actionOutcome2) {
                    A0d();
                }
            }
        }
    }

    @Override
    public final void A0f() {
        XP.A0J(this.A00);
        XP.A0J(this.A08);
        this.A04.set(true);
        A06();
        int iA04 = super.A02.A20().A0H().A04();
        int secondsForNextCta = super.A02.A20().A0H().A02();
        if (iA04 > 0) {
            if (this.A00 != null) {
                this.A00.A1F();
            }
            A0g(iA04, new C0914Fu(this), this.A01);
            if (secondsForNextCta == 0 || secondsForNextCta >= iA04) {
                super.A01 = true;
                this.A08.setToolbarActionMode(8);
                return;
            } else {
                if (secondsForNextCta <= 0) {
                    return;
                }
                this.A08.setProgressSpinnerInvisible(true);
                A0g(secondsForNextCta, new C0913Ft(this), null);
                return;
            }
        }
        this.A06.set(true);
        AbstractC1365Xm abstractC1365Xm = this.A08;
        int unskippableSeconds = getCloseButtonStyle();
        abstractC1365Xm.setToolbarActionMode(unskippableSeconds);
    }

    @Override
    public final void A0h(R0 r0) {
        FrameLayout.LayoutParams layoutParams;
        r0.A0A(this.A03);
        int orientation = r0.A05().getResources().getConfiguration().orientation;
        A08(orientation);
        if (A0j()) {
            XP.A0H(this.A08);
        }
        if (A0j()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, G2.A0F, 0, 0);
        } else {
            int orientation2 = this.A08.getToolbarHeight();
            layoutParams = new FrameLayout.LayoutParams(-1, orientation2);
        }
        addView(this.A08, layoutParams);
        XP.A0F(this.A00);
        XP.A0F(this.A08);
    }

    @Override
    public final boolean A0i() {
        if (this.A00 == null) {
            return false;
        }
        AbstractC1469ae abstractC1469ae = this.A00;
        if (A08[4].length() != 3) {
            throw new RuntimeException();
        }
        A08[4] = "kMg";
        return abstractC1469ae.A1N(false);
    }

    @Override
    public final boolean A0j() {
        return super.A02.A1b() || super.A02.A1o();
    }

    public final void A0k() {
        A0d();
    }

    @Override
    public final void AEV(boolean z) {
    }

    @Override
    public final void AF0(boolean z) {
    }

    public int getCloseButtonStyle() {
        if (this.A00 != null) {
            return this.A00.getCloseButtonStyle();
        }
        return 0;
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!super.A02.A20().A0T() && !A0j()) {
            A08(configuration.orientation);
        }
    }

    @Override
    public final void onDestroy() {
        if (U7.A1u(super.A04)) {
            super.A04.A0B().AJj(this.A02);
        }
        if (this.A00 != null) {
            AbstractC1469ae abstractC1469ae = this.A00;
            String[] strArr = A08;
            if (strArr[6].charAt(10) != strArr[1].charAt(10)) {
                throw new RuntimeException();
            }
            A08[4] = "hIQ";
            abstractC1469ae.A1B();
        }
        super.onDestroy();
    }
}

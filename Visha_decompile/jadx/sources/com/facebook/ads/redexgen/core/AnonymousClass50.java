package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public final class AnonymousClass50 extends AbstractC0962Hr {
    public static String[] A09 = {"48gXxVXafINQx", "X9eHMFtmNxkudREV2ga0mL63IUwpVFyn", "fDHVKSg", "BJ3S", "6p1nQLD", "GwvdfXoW7Tkcgx6xI32", "XjSW5yJHqMwpzXQP1hTrWYHuzeodWOV3", "mLwcnNPCnn6Mi"};
    public static final RelativeLayout.LayoutParams A0A = new RelativeLayout.LayoutParams(-1, -1);
    public C1332Wd A00;
    public AbstractC1469ae A01;
    public C0838Cw A02;
    public final int A03;
    public final ImageView A04;
    public final C1278Ua A05;
    public final AbstractC1365Xm A06;
    public final InterfaceC1582cT A07;
    public final AtomicBoolean A08;

    public AnonymousClass50(C1635dL c1635dL, YY yy, int i, US us, AbstractC1910hy abstractC1910hy, InterfaceC1366Xn interfaceC1366Xn, AbstractC1365Xm abstractC1365Xm, C1278Ua c1278Ua, boolean z, boolean z2, InterfaceC1582cT interfaceC1582cT, int i2, int i3) {
        super(c1635dL, yy, us, abstractC1910hy, i, z, z2, interfaceC1366Xn, i3);
        this.A08 = new AtomicBoolean(false);
        this.A03 = i2;
        this.A07 = interfaceC1582cT;
        this.A04 = new ImageView(getContext());
        this.A06 = abstractC1365Xm;
        this.A05 = c1278Ua;
        if (abstractC1910hy.A1U()) {
            this.A02 = new C0838Cw(c1635dL, this.A03);
        }
        this.A04.setScaleType(ImageView.ScaleType.CENTER);
        this.A04.setAdjustViewBounds(true);
        new KZ(this.A04, c1635dL).A05(abstractC1910hy.A20().A0H().A00(), abstractC1910hy.A20().A0H().A01()).A06(new C0955Hj(this)).A07(abstractC1910hy.A20().A0H().A08());
        A08(c1635dL.getResources().getConfiguration().orientation);
    }

    private AbstractC1469ae A02(int i) {
        if (this.A04.getParent() != null) {
            XP.A0H(this.A04);
        }
        boolean z = i != 2;
        C1472ah c1472ah = new C1472ah(super.A07, super.A08, this.A0B, super.A06, this.A04, this.A0D, this.A0A);
        C1472ah interstitialLayoutParamsBuilder = c1472ah.A0K(this.A06.getToolbarHeight());
        interstitialLayoutParamsBuilder.A0R(this.A06).A0J(i).A0V(z).A0U(super.A00).A0N(this.A05);
        if (this.A02 != null) {
            c1472ah.A0T(this.A02);
        }
        c1472ah.A0M(MI.A00(super.A07, super.A08, "", WQ.A00(super.A06.A20().A0J().A05()), new HashMap(), super.A06.A21()));
        c1472ah.A0S(this.A07);
        return AbstractC1470af.A00(c1472ah.A0W(), null, true);
    }

    public void A07() {
        if (this.A08.get()) {
            A1C();
        }
    }

    private void A08(int i) {
        XP.A0H(this.A01);
        this.A01 = A02(i);
        if (this.A01 instanceof JU) {
            ((JU) this.A01).setChildChainedAd(true);
        } else if (this.A01 instanceof C0989Is) {
            AbstractC1469ae abstractC1469ae = this.A01;
            String[] strArr = A09;
            if (strArr[1].charAt(0) != strArr[6].charAt(0)) {
                throw new RuntimeException();
            }
            A09[5] = "Sp2NSSouatJBlog5Q54";
            ((C0989Is) abstractC1469ae).setChildChainedAd(true);
        }
        addView(this.A01, 0, A0A);
    }

    @Override
    public final ME A1A(String str) {
        return this.A01.A1A(str);
    }

    @Override
    public final void A1B() {
        if (U7.A1u(super.A07)) {
            super.A07.A0B().AJj(this.A04);
        }
        if (this.A01 != null) {
            this.A01.A1B();
        }
    }

    @Override
    public final void A1D() {
        if (this.A01 instanceof C1020Jx) {
            AbstractC1469ae abstractC1469ae = this.A01;
            String[] strArr = A09;
            if (strArr[7].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A09[3] = "fHRV";
            ((C1020Jx) abstractC1469ae).A1O();
            return;
        }
        if (this.A01 instanceof C0989Is) {
            ((C0989Is) this.A01).A1R(false);
        }
    }

    @Override
    public final void A1E() {
        int iA02 = super.A06.A20().A0H().A02();
        int secondsForNextCta = this.A03;
        if (secondsForNextCta > 0) {
            this.A00 = new C1332Wd(this.A03, 100.0f, 100L, new Handler(Looper.getMainLooper()), new HV(this));
            this.A00.A07();
            if (iA02 >= 0) {
                this.A06.setProgressSpinnerInvisible(true);
            }
            if (iA02 != 0) {
                int secondsForNextCta2 = this.A03;
                if (iA02 < secondsForNextCta2) {
                    if (iA02 <= 0) {
                        return;
                    }
                    new C1332Wd(iA02, new HS(this)).A07();
                    return;
                }
            }
            this.A06.setToolbarActionMode(8);
            return;
        }
        this.A07.AFE(false);
    }

    @Override
    public final void A1F(boolean z) {
        this.A01.setChainedWatchAndBrowseSkippableStatus(z);
    }

    @Override
    public final void A1G(boolean z) {
        if (this.A00 != null && this.A00.A05()) {
            this.A00.A06();
        }
    }

    @Override
    public final void A1H(boolean z) {
        if (this.A00 != null && !this.A00.A04()) {
            this.A00.A07();
        }
    }

    @Override
    public final boolean A1I() {
        if (this.A01.A1K()) {
            if (!(this.A01 instanceof C1020Jx) || ((C1020Jx) this.A01).A1P()) {
                return (this.A01 instanceof C0989Is) && !((C0989Is) this.A01).A1T();
            }
            return true;
        }
        return false;
    }

    @Override
    public final boolean A1J() {
        if (this.A01 instanceof C1020Jx) {
            return ((C1020Jx) this.A01).A1P();
        }
        boolean z = this.A01 instanceof C0989Is;
        String[] strArr = A09;
        if (strArr[1].charAt(0) != strArr[6].charAt(0)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[2] = "VUX6Wbk";
        strArr2[4] = "Kq1l7t9";
        if (z) {
            return ((C0989Is) this.A01).A1T();
        }
        return false;
    }

    @Override
    public final boolean A1K() {
        if (this.A01 instanceof C1020Jx) {
            return ((C1020Jx) this.A01).A1Q();
        }
        if (this.A01 instanceof C0989Is) {
            return ((C0989Is) this.A01).A1U();
        }
        return true;
    }

    @Override
    public C1580cR getFullScreenAdStyle() {
        C1098My colors = this.A01.getColors();
        return new C1580cR(this.A01.A1M(), C1580cR.A07, colors, KE.A05(super.A06), colors.A08(this.A01.A1M() || (this.A01 instanceof AbstractC1019Jw)), null);
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A01 instanceof C1020Jx) {
            this.A01.onConfigurationChanged(configuration);
        } else if (!super.A06.A20().A0T()) {
            A08(configuration.orientation);
        }
    }
}

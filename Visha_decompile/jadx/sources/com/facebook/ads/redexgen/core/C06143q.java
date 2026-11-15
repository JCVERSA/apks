package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.adapters.datamodels.AdInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class C06143q extends NI {
    public static byte[] A0F;
    public static String[] A0G = {"tW3Su6P8GZp1yTngpwFy2DF2GhDzXnf2", "3HQabaXZCQWVf5CedpF1izNpaoU6B", "XHPkWVuaRS230ZzCiYR7qtQACoZnYKM5", "gQNAwnCobdMDtnebLpL2jf4350QwOymE", "dRJ3n5TbirTJDeON6upQokchUTJmTtSu", "43KhzPf8qbqk0SZtfSmXLCVXJtKHuuuO", "kYCENHGiqRDWZvuV9M2TmYzxFqbu31T5", "7NDfQDtGKt0HcNI2moZZTs031QkqKmSX"};
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public static final int A0K;
    public static final int A0L;
    public int A00;
    public int A01;
    public LinearLayout A02;
    public AbstractC1910hy A03;
    public SF A04;
    public C05290h A05;
    public C1448aJ A06;
    public FH A07;
    public AbstractC1707eW A08;
    public C1708eX A09;
    public String A0A;
    public List<C1602cn> A0B;
    public boolean A0C;
    public final C1635dL A0D;
    public final XH A0E;

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 7);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0E() {
        A0F = new byte[]{66, 71, 124, 71, 66, 87, 66, 124, 65, 86, 77, 71, 79, 70, 18, 5, 23, 1, 18, 4, 5, 4, 54, 9, 4, 5, 15, 33, 4, 36, 1, 20, 1, 34, 21, 14, 4, 12, 5, 118, 110, 108, 117};
    }

    static {
        A0E();
        A0H = (int) (AbstractC1338Wl.A02 * 48.0f);
        A0I = (int) (AbstractC1338Wl.A02 * 8.0f);
        A0J = (int) (AbstractC1338Wl.A02 * 8.0f);
        A0L = (int) (AbstractC1338Wl.A02 * 56.0f);
        A0K = (int) (AbstractC1338Wl.A02 * 12.0f);
    }

    public C06143q(C1635dL c1635dL, US us, SF sf, InterfaceC1366Xn interfaceC1366Xn, AnonymousClass73 anonymousClass73) {
        super(c1635dL, us, interfaceC1366Xn, anonymousClass73);
        this.A0E = new XH();
        this.A0C = false;
        super.A07 = true;
        super.A06 = new C1632dI(c1635dL, new LX(), super.A0A.A1A(), interfaceC1366Xn);
        this.A04 = sf;
        this.A0D = c1635dL;
    }

    public C06143q(C1635dL c1635dL, US us, SF sf, InterfaceC1366Xn interfaceC1366Xn, AnonymousClass77 anonymousClass77) {
        super(c1635dL, us, interfaceC1366Xn, anonymousClass77);
        this.A0E = new XH();
        this.A0C = false;
        this.A04 = sf;
        this.A0D = c1635dL;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006d  */
    public ME A01(String str) {
        ME meA0E = ME.A09;
        if (this.A05 == null) {
            return meA0E;
        }
        C05290h c05290h = this.A05;
        C1815gI layoutManager = this.A05.getLayoutManager();
        String[] strArr = A0G;
        if (strArr[5].charAt(30) == strArr[6].charAt(30)) {
            throw new RuntimeException();
        }
        A0G[2] = "E32f1TaBN4dkj3FL0vDfikWnsbqL7SKY";
        C0889Ev c0889Ev = (C0889Ev) c05290h.A1G(layoutManager.A25());
        if (c0889Ev != null && c0889Ev.A0p() != null) {
            meA0E = c0889Ev.A0p().A0E(str);
            a5 ctaActionHelper = c0889Ev.A0p().getCtaActionHelper();
            if (A0G[2].charAt(16) != '1') {
                String[] strArr2 = A0G;
                strArr2[5] = "i7TFLIHedh0buU6tWLTqbZ60SXZT8zmg";
                strArr2[6] = "DCWE7AKb21kTTjPuFVubbU6pDlTglIBY";
                if (ctaActionHelper.A06() == null) {
                    c0889Ev.A0p().getCtaActionHelper().A07(new F2(this));
                }
            } else {
                String[] strArr3 = A0G;
                strArr3[7] = "dI26cUvsILIVYWhCptAOIe9hx0G02LwU";
                strArr3[0] = "KP2PoUq36ksxZ0HlOf60WIRRhVJwRZXP";
                if (ctaActionHelper.A06() == null) {
                    c0889Ev.A0p().getCtaActionHelper().A07(new F2(this));
                }
            }
        }
        return meA0E;
    }

    private AbstractC1910hy A02(Intent intent) {
        if (super.A07) {
            return (AbstractC1910hy) intent.getSerializableExtra(A0C(14, 25, 103));
        }
        return (AbstractC1910hy) intent.getSerializableExtra(A0C(0, 14, 36));
    }

    private final void A0F() {
        if (this.A02 != null) {
            this.A02.removeAllViews();
            if (A0G[3].charAt(5) != 'n') {
                throw new RuntimeException();
            }
            A0G[4] = "3JPxSaqJUpKyt95G35P4gQJAerHutmpA";
            this.A02 = null;
        }
        if (this.A05 != null) {
            this.A05.removeAllViews();
            this.A05.A1S();
            this.A05 = null;
        }
        if (this.A06 != null) {
            this.A06.removeAllViews();
            this.A06 = null;
        }
    }

    private final void A0G(int i, Bundle bundle) {
        int extraSpacing;
        int i2;
        int height;
        this.A02 = new LinearLayout(getContext());
        if (i == 1) {
            this.A02.setGravity(17);
        } else {
            this.A02.setGravity(48);
        }
        this.A02.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A02.setOrientation(1);
        int i3 = AbstractC1338Wl.A04.widthPixels;
        int i4 = AbstractC1338Wl.A04.heightPixels;
        if (i == 1) {
            extraSpacing = Math.min(i3 - (A0I * 4), i4 / 2);
            i2 = (i3 - extraSpacing) / 8;
            height = i2 * 4;
        } else {
            extraSpacing = i4 - ((A0L + A0H) + (A0I * 4));
            i2 = A0I;
            height = i2 * 2;
        }
        this.A08 = new F3(this);
        this.A09 = new C1708eX(this, 1, new WeakReference(this.A08), this.A0D);
        this.A09.A0W(this.A00);
        this.A09.A0X(this.A01);
        this.A05 = new C05290h(this.A0D);
        this.A05.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        this.A07 = new FH(this.A05, i, this.A0B, this.A09, bundle);
        int extraSpacing2 = i2;
        int childSpacing = extraSpacing;
        this.A05.setAdapter(new F4(this.A0D, this.A0B, this.A03, super.A0C, this.A04, this.A09, this.A0E, getAudienceNetworkListener(), this.A0A, childSpacing, extraSpacing2, height, i, this.A07, super.A0E));
        this.A05.A1h(this.A05.getOnScrollListener());
        if (i == 1) {
            A0I(this.A07);
        }
        this.A02.addView(this.A05);
        if (this.A06 != null) {
            this.A02.addView(this.A06);
        }
        if (U7.A1u(this.A0D)) {
            this.A0D.A0B().AK2(this.A05, super.A0A.A25(), false);
        }
        A0Y(this.A02, false, i);
    }

    private void A0H(AbstractC1910hy abstractC1910hy) {
        this.A03 = abstractC1910hy;
        this.A0A = this.A03.A25();
        this.A00 = this.A03.A0i();
        this.A01 = this.A03.A0j();
        List<C1089Mp> listA27 = this.A03.A27();
        List<AdInfo> adInfoList = new ArrayList<>(listA27.size());
        this.A0B = adInfoList;
        for (int i = 0; i < listA27.size(); i++) {
            C1089Mp c1089Mp = listA27.get(i);
            List<C1602cn> list = this.A0B;
            int i2 = listA27.size();
            list.add(new C1602cn(i, i2, c1089Mp));
        }
    }

    private void A0I(FH fh) {
        new C06836h().A0G(this.A05);
        fh.A0Y(new F1(this));
        this.A06 = new C1448aJ(this.A0D, super.A05.A01(), this.A0B.size());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, A0J);
        layoutParams.setMargins(0, A0K, 0, 0);
        this.A06.setLayoutParams(layoutParams);
    }

    @Override
    public final void A0W() {
        ME meA01 = A01(A0C(39, 4, 2));
        if (super.A0A.A2D()) {
            return;
        }
        ME actionOutcome = ME.A09;
        if (meA01 != actionOutcome) {
            ME actionOutcome2 = ME.A06;
            if (meA01 != actionOutcome2) {
                A0f();
            }
        }
    }

    @Override
    public final boolean A0e() {
        return false;
    }

    public final void A0f() {
        if (super.A0E.getToolbarActionMode() == 8) {
            super.A0E.setToolbarActionMode(2);
        }
        super.A0A.A2B(false);
        super.A0A.A20().A0M(-1);
    }

    @Override
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        AbstractC1910hy dataBundle = A02(intent);
        A0Z(r0);
        A0H(dataBundle);
        A0G(r0.A05().getResources().getConfiguration().orientation, bundle);
        r0.A0A(new F0(this, r0));
        AbstractC1910hy dataBundle2 = super.A0A;
        int unskippableSec = dataBundle2.A20().A0H().A04();
        if (super.A07) {
            AbstractC1910hy dataBundle3 = super.A0A;
            unskippableSec = dataBundle3.A20().A0H().A03();
        }
        if (unskippableSec > 0) {
            A0X(unskippableSec);
        }
        AbstractC1910hy dataBundle4 = super.A0A;
        if (dataBundle4.A20().A0H().A02() >= 0) {
            super.A0E.setToolbarActionMode(8);
        }
        AbstractC1910hy dataBundle5 = super.A0A;
        if (dataBundle5.A2K()) {
            super.A0E.setOnClickListener(new ViewOnClickListenerC1605cq(this));
        }
    }

    @Override
    public final void AEV(boolean z) {
        super.AEV(z);
        if (this.A07 != null) {
            this.A07.A0Q();
        }
    }

    @Override
    public final void AF0(boolean z) {
        super.AF0(z);
        this.A07.A0R();
    }

    @Override
    public final void AIB(Bundle bundle) {
        if (this.A07 != null) {
            this.A07.A0W(bundle);
        }
    }

    @Override
    public int getCloseButtonStyle() {
        return 0;
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        Bundle bundle = new Bundle();
        AIB(bundle);
        A0F();
        A0G(configuration.orientation, bundle);
        super.onConfigurationChanged(configuration);
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        if (U7.A1u(this.A0D)) {
            this.A0D.A0B().AJj(this.A05);
        }
        if (!TextUtils.isEmpty(this.A0A)) {
            super.A0C.AAt(this.A0A, new C1420Zp().A03(this.A09).A02(this.A0E).A05());
        }
        A0F();
        this.A09.A0V();
        this.A09 = null;
        this.A08 = null;
        this.A0B = null;
    }

    @Override
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0E.A06(this.A0D, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }
}

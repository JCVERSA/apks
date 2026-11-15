package com.facebook.ads.redexgen.core;

import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public final class LV extends AbstractC1382Yd {
    public static String[] A03 = {"ps9u6Kn8p", "fRCCllxRFm9XYnsS5Nz0CDYYbd8rz98F", "veZY5LUK4HkumILqtvhVtf9OT9QK1Jmh", "8c6Edyt19YE2bwpDp37rWBgdyfN4I4si", "Dgwj6SSLqT", "biYcUlACC5CMDg3zbjwwDR7mq5XP76DA", "rp5V5gFYHfFnaijOqqdMDMWavMrEx7HP", "ycj43TNZcka4uMSCxDz6fuqQ2r9gi3g6"};
    public static final int A04 = (int) (AbstractC1338Wl.A02 * 8.0f);
    public final RelativeLayout A00;
    public final O2 A01;
    public final C1635dL A02;

    public LV(C1635dL c1635dL, US us, String str, N9 n9, InterfaceC1367Xo interfaceC1367Xo, InterfaceC1366Xn interfaceC1366Xn) {
        super(c1635dL, us, str, n9, interfaceC1367Xo, interfaceC1366Xn);
        this.A02 = c1635dL;
        this.A01 = O3.A00(c1635dL.A02());
        this.A00 = new RelativeLayout(getContext());
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        XP.A0K(this.A00, -1728053248);
        this.A00.setOnClickListener(new ViewOnClickListenerC1387Yi(this));
    }

    public static RelativeLayout.LayoutParams A00(boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, z ? -1 : -2);
        layoutParams.addRule(12);
        return layoutParams;
    }

    private void A01() {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
        XP.A0T(this, transitionSet);
    }

    @Override
    public final void A0N() {
        O6 o6A0A = this.A01.A0A();
        C1397Ys c1397Ys = new C1397Ys(this.A02);
        c1397Ys.setInfo(XX.HIDE_AD, this.A01.A0H(), this.A01.A0G());
        c1397Ys.setOnClickListener(new ViewOnClickListenerC1388Yj(this));
        O6 o6A0B = this.A01.A0B();
        C1397Ys c1397Ys2 = new C1397Ys(this.A02);
        c1397Ys2.setInfo(XX.REPORT_AD, this.A01.A0L(), this.A01.A0K());
        c1397Ys2.setOnClickListener(new ViewOnClickListenerC1389Yk(this));
        C1397Ys c1397Ys3 = new C1397Ys(this.A02);
        c1397Ys3.setInfo(XX.AD_CHOICES_ICON, this.A01.A0M(), "");
        c1397Ys3.setOnClickListener(new ViewOnClickListenerC1390Yl(this));
        LinearLayout.LayoutParams itemParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A04 * 2, A04, A04 * 2, A04);
        XP.A0K(linearLayout, -1);
        if (!o6A0A.A05().isEmpty()) {
            linearLayout.addView(c1397Ys, itemParams);
        }
        if (!o6A0B.A05().isEmpty()) {
            linearLayout.addView(c1397Ys2, itemParams);
        }
        linearLayout.addView(c1397Ys3, itemParams);
        A01();
        this.A00.removeAllViews();
        this.A00.addView(linearLayout, A00(false));
    }

    @Override
    public final void A0O() {
        XP.A0G(this);
        this.A00.removeAllViews();
        XP.A0H(this);
    }

    @Override
    public final void A0P(O6 o6, O4 o4) {
        String strA0E;
        int i;
        String strA01;
        if (o4 == O4.A05) {
            return;
        }
        boolean z = o4 == O4.A06;
        C1380Yb c1380Yb = new C1380Yb(this.A02, this.A0B);
        if (z) {
            O2 o2 = this.A01;
            if (A03[4].length() != 10) {
                throw new RuntimeException();
            }
            A03[6] = "KfE81dulHFmzGO7NxqDM7oaE1pV2dKkX";
            strA0E = o2.A0F();
        } else {
            strA0E = this.A01.A0E();
        }
        C1380Yb c1380YbA0E = c1380Yb.A0I(strA0E).A0H(this.A01.A0D()).A0F(o6.A04()).A0E(z ? XX.REPORT_AD : XX.HIDE_AD);
        if (z) {
            i = -552389;
        } else {
            i = -13272859;
        }
        C1380Yb c1380YbA0D = c1380YbA0E.A0D(i);
        if (this.A0A != null) {
            N9 n9 = this.A0A;
            if (A03[1].charAt(11) != 'X') {
                strA01 = n9.A01();
            } else {
                A03[0] = "vLdx3pZGf";
                strA01 = n9.A01();
            }
        } else {
            strA01 = "";
        }
        C1381Yc adHiddenView = c1380YbA0D.A0G(strA01).A0M();
        XP.A0K(adHiddenView, -1);
        XP.A0R(this);
        this.A00.removeAllViews();
        this.A00.addView(adHiddenView, A00(true));
    }

    @Override
    public final void A0Q(O6 o6, O4 o4) {
        String strA0H;
        boolean z = o4 == O4.A06;
        C1635dL c1635dL = this.A02;
        InterfaceC1384Yf interfaceC1384Yf = this.A0B;
        if (z) {
            strA0H = this.A01.A0L();
        } else {
            strA0H = this.A01.A0H();
        }
        C1400Yv c1400Yv = new C1400Yv(c1635dL, o6, interfaceC1384Yf, strA0H, z ? XX.REPORT_AD : XX.HIDE_AD);
        c1400Yv.setClickable(true);
        XP.A0K(c1400Yv, -1);
        c1400Yv.setPadding(A04 * 2, A04, A04 * 2, A04);
        A01();
        this.A00.removeAllViews();
        RelativeLayout relativeLayout = this.A00;
        String[] strArr = A03;
        if (strArr[3].charAt(9) == strArr[5].charAt(9)) {
            throw new RuntimeException();
        }
        A03[1] = "OoQvJ70CiRWXlhIiWSDPNsGTFrOY4nX1";
        relativeLayout.addView(c1400Yv, A00(false));
    }

    @Override
    public final boolean A0R() {
        return false;
    }
}

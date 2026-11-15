package com.facebook.ads.redexgen.core;

import android.widget.FrameLayout;

public abstract class AbstractC1382Yd extends FrameLayout {
    public static String[] A0C = {"5RNIIKEidNz4CxH4JgV5654XoKm2WCRJ", "1p9zA", "TyFhTVOKfwCiarLUW0", "qGg1KSsP6zNQFhXHIMmjZGXDOHal5qmq", "ysvkaelauuCqE6L7ICudiIGq1Ejo0wOd", "BlsqFJOSCgQfST", "dpiEaUs9Aor9er1WGZ", "tfv9H94"};
    public int A00;
    public O4 A01;
    public O5 A02;
    public O6 A03;
    public final O2 A04;
    public final C1635dL A05;
    public final US A06;
    public final InterfaceC1366Xn A07;
    public final InterfaceC1367Xo A08;
    public final String A09;
    public final N9 A0A;
    public final InterfaceC1384Yf A0B;

    public abstract void A0N();

    public abstract void A0O();

    public abstract void A0P(O6 o6, O4 o4);

    public abstract void A0Q(O6 o6, O4 o4);

    public abstract boolean A0R();

    public AbstractC1382Yd(C1635dL c1635dL, US us, String str) {
        this(c1635dL, us, str, null, null, null);
    }

    public AbstractC1382Yd(C1635dL c1635dL, US us, String str, N9 n9, InterfaceC1367Xo interfaceC1367Xo, InterfaceC1366Xn interfaceC1366Xn) {
        super(c1635dL);
        this.A00 = 0;
        this.A01 = O4.A05;
        this.A03 = null;
        this.A0B = new LW(this);
        this.A05 = c1635dL;
        this.A06 = us;
        this.A08 = interfaceC1367Xo;
        this.A07 = interfaceC1366Xn;
        this.A09 = str;
        this.A0A = n9;
        this.A04 = O3.A00(this.A05.A02());
    }

    public static int A02(AbstractC1382Yd abstractC1382Yd) {
        int i = abstractC1382Yd.A00;
        abstractC1382Yd.A00 = i + 1;
        return i;
    }

    public static int A03(AbstractC1382Yd abstractC1382Yd) {
        int i = abstractC1382Yd.A00;
        abstractC1382Yd.A00 = i - 1;
        return i;
    }

    public void A0D() {
        if (this.A02.A0A()) {
            this.A06.AAp(this.A09, this.A02.A02());
            this.A02.A03();
        }
    }

    public void A0E() {
        this.A03 = null;
        this.A02.A05();
        A0N();
    }

    public void A0F(O6 o6) {
        this.A02.A08(this.A01);
        A0P(o6, this.A01);
        MW.A01(this.A05).A0L();
        if (A0R()) {
            A0D();
        }
    }

    public void A0G(O6 o6) {
        this.A03 = o6;
        this.A02.A09(this.A01, this.A00);
        A0Q(o6, this.A01);
    }

    public final void A0L() {
        A0D();
    }

    public final void A0M() {
        this.A02 = new O5(new C1278Ua(this.A09, this.A06));
        if (this.A08 != null) {
            InterfaceC1367Xo interfaceC1367Xo = this.A08;
            if (A0C[0].charAt(22) == 'O') {
                throw new RuntimeException();
            }
            A0C[7] = "FLAi4P2";
            interfaceC1367Xo.AEV(true);
        }
        A0E();
    }
}

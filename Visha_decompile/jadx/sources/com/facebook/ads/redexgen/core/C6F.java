package com.facebook.ads.redexgen.core;

import android.view.View;

public final class C6F extends C1815gI {
    public static String[] A08 = {"3Z4oVcBXIxTGfHDkJENHcNR3oKWZn0O4", "rFv82zPhlr6ageKpcxYW53i7WQEhI", "2tYR0SC80tVMegpE61nD", "NxUbiyfiYIyXyrFLuBvPtjT94e88s", "0hjSAQsR9gnR7LOOW", "3YJcpQnZmcsLDiaVOnEQeEpmcgGPkAOH", "Bqc2ZUTwiywYobMvaWapE1roD64Q2E5u", "7wlgBc9wtLyqXjV7RP"};
    public float A00;
    public int A01;
    public int A02;
    public C6G A03;
    public int[] A04;
    public final C1635dL A05;
    public final C1595cg A06;
    public final C1596ch A07;

    public C6F(C1635dL c1635dL, C1596ch c1596ch, C1595cg c1595cg) {
        super(c1635dL);
        this.A02 = 0;
        this.A00 = 50.0f;
        this.A05 = c1635dL;
        this.A07 = c1596ch;
        this.A06 = c1595cg;
        this.A01 = -1;
        this.A03 = new C6G(this, this.A05);
    }

    @Override
    public final void A1L(QW qw, C1179Qd c1179Qd, int i, int widthMode) {
        int[] iArrA02;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(widthMode);
        if ((mode == 1073741824 && A28() == 1) || (mode2 == 1073741824 && A28() == 0)) {
            super.A1L(qw, c1179Qd, i, widthMode);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(widthMode);
        if (this.A06.A01(this.A01)) {
            iArrA02 = this.A06.A02(this.A01);
        } else {
            iArrA02 = new int[]{0, 0};
            if (c1179Qd.A03() >= 1) {
                int i2 = A0Y() > 0 ? 1 : A0Y();
                for (int heightMode = 0; heightMode < i2; heightMode++) {
                    View viewA1o = A1o(heightMode);
                    if (viewA1o == null) {
                        break;
                    }
                    this.A04 = this.A07.A00(viewA1o, View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    if (A28() == 0) {
                        iArrA02[0] = iArrA02[0] + this.A04[0];
                        if (heightMode == 0) {
                            iArrA02[1] = this.A04[1] + A0i() + A0f();
                        }
                    } else {
                        iArrA02[1] = iArrA02[1] + this.A04[1];
                        if (heightMode == 0) {
                            iArrA02[0] = this.A04[0] + A0g() + A0h();
                        }
                    }
                }
                int i3 = this.A01;
                String[] strArr = A08;
                if (strArr[1].length() != strArr[3].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A08;
                strArr2[0] = "c7gaApi93PYPuTyj4vut3Dl9rZW6DyZw";
                strArr2[7] = "eCokdcVdwhThfuMVf9";
                if (i3 != -1) {
                    this.A06.A00(this.A01, iArrA02);
                }
            }
        }
        if (mode == 1073741824) {
            iArrA02[0] = size;
        }
        if (mode2 == 1073741824) {
            iArrA02[1] = size2;
        }
        A15(iArrA02[0], iArrA02[1]);
    }

    @Override
    public final void A1r(int i) {
        A2D(i, this.A02);
    }

    @Override
    public final void A1z(C06826g c06826g, C1179Qd c1179Qd, int i) {
        this.A03.A0A(i);
        A1N(this.A03);
    }

    public final void A2I(double d) {
        if (d <= 0.0d) {
            d = 1.0d;
        }
        this.A00 = (float) (50.0d / d);
        this.A03 = new C6G(this, this.A05);
    }

    public final void A2J(int i) {
        this.A01 = i;
    }

    public final void A2K(int i) {
        this.A02 = i;
    }
}

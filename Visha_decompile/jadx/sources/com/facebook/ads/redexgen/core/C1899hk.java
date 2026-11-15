package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.EnumSet;

public class C1899hk implements NG {
    public static String[] A07 = {"LaTcnwnUfzgLTffZJQ1IPucRbglpEgMo", "12hOZJfgSqwHBnuTqXHxpHxEQ0NbZO7A", "Dr9pHE3G5odEHWCsCqxBSNpdFpwa86Mh", "MDWd5GjifHIGoqp8wS2KmhLcZ8", "Ozio236b3SA3ZtX", "C3UkekSSOdUqAnfYGByVev7l4a4YpLBv", "Q070rE4WAmrDPncHn0R1JG2tySYrh7TO", ""};
    public final int A00;
    public final AbstractC1910hy A01;
    public final C1908hw A02;
    public final NG A03;
    public final NH A04;
    public final C1635dL A05;
    public final EnumSet A06;

    public C1899hk(NH nh, C1635dL c1635dL, AbstractC1910hy abstractC1910hy, C1908hw c1908hw, int i, NG ng, EnumSet enumSet) {
        this.A04 = nh;
        this.A05 = c1635dL;
        this.A01 = abstractC1910hy;
        this.A02 = c1908hw;
        this.A00 = i;
        this.A03 = ng;
        this.A06 = enumSet;
    }

    private final void A00() {
        if (this.A00 + 1 < this.A02.A1u()) {
            this.A04.A0A(this.A05, this.A06, this.A02, this.A02.A1x(this.A00 + 1), this.A00 + 1, this.A03);
        }
    }

    @Override
    public final void ACF(AdError adError) {
        if (this.A00 == 0) {
            this.A03.ACF(adError);
        }
    }

    @Override
    public final void ACG() {
        this.A05.A01().AIU(this.A01.A25(), this.A02.A1y());
        if (this.A00 == 0) {
            NG ng = this.A03;
            String[] strArr = A07;
            if (strArr[5].charAt(13) != strArr[6].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "Mfrds6r17BKRZSfVfcuH4MZ0YR";
            strArr2[4] = "cdrsota1fCopt7F";
            ng.ACG();
        }
        A00();
    }

    @Override
    public final void AGo() {
        if (this.A00 == 0) {
            this.A03.AGo();
        }
    }

    @Override
    public final void AJm() {
        if (this.A00 == 0) {
            this.A03.AJm();
        }
    }
}

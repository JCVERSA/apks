package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class C2123lk extends E5<C2123lk> {
    public static String[] A0H = {"VuHjt8oOpq8N7C214wGoSA1AvoAEOrJ7", "uFvhlxS5lUy9ksGg6O4Xt3y9x", "z2gekC5V6p56SAeTbAO0jRL35", "AJl44cd0wjf7yp80NhOEfrZac9uQkeAm", "fvb2kSFN69PWkoJ4Ln26XpHSuOzso8Xv", "xYIwGH1EqCgaa9qjZOqbWgZcWwFFG4Ev", "iW7gA0b6LPVcA0KpSRoleRmfzjbkINez", "mxsnKoNumrVzSuMZZmY48wO5LDc3OokM"};
    public final int A00;
    public final int A01;
    public final int A02;

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D56211926, support language flag in video track")
    public final int A03;

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D56211926, support language flag in video track")
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final AnonymousClass93 A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean A0E;
    public final boolean A0F;
    public final boolean A0G;

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D56211926, support language flag in video track")
    public C2123lk(int i, C2278oH c2278oH, int i2, AnonymousClass93 anonymousClass93, int i3, String str, int i4, boolean z) {
        int requiredAdaptiveSupport;
        super(i, c2278oH, i2);
        this.A09 = anonymousClass93;
        if (anonymousClass93.A07) {
            requiredAdaptiveSupport = 24;
        } else {
            requiredAdaptiveSupport = 16;
        }
        this.A0A = anonymousClass93.A06 && (i4 & requiredAdaptiveSupport) != 0;
        this.A0C = z && (super.A02.A0L == -1 || super.A02.A0L <= ((C2271oA) anonymousClass93).A06) && ((super.A02.A0A == -1 || super.A02.A0A <= ((C2271oA) anonymousClass93).A05) && ((super.A02.A01 == -1.0f || super.A02.A01 <= ((float) ((C2271oA) anonymousClass93).A04)) && (super.A02.A05 == -1 || super.A02.A05 <= ((C2271oA) anonymousClass93).A03)));
        this.A0D = z && (super.A02.A0L == -1 || super.A02.A0L >= ((C2271oA) anonymousClass93).A0A) && ((super.A02.A0A == -1 || super.A02.A0A >= ((C2271oA) anonymousClass93).A09) && ((super.A02.A01 == -1.0f || super.A02.A01 >= ((float) ((C2271oA) anonymousClass93).A08)) && (super.A02.A05 == -1 || super.A02.A05 >= ((C2271oA) anonymousClass93).A07)));
        this.A0E = AnonymousClass92.A0S(i3, false);
        int bestLanguageIndex = 0;
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 < anonymousClass93.A0L.size(); i6++) {
            int iA02 = AnonymousClass92.A02(super.A02, anonymousClass93.A0L.get(i6), false);
            if (iA02 > 0) {
                i5 = i6;
                bestLanguageIndex = iA02;
                break;
            }
        }
        this.A03 = i5;
        this.A04 = bestLanguageIndex;
        this.A00 = super.A02.A05;
        this.A02 = super.A02.A06();
        this.A06 = AnonymousClass92.A00(super.A02.A0E, ((C2271oA) anonymousClass93).A0D);
        this.A0B = super.A02.A0E == 0 || (super.A02.A0E & 1) != 0;
        this.A07 = AnonymousClass92.A02(super.A02, str, AnonymousClass92.A0K(str) == null);
        int i7 = Integer.MAX_VALUE;
        for (int i8 = 0; i8 < anonymousClass93.A0M.size(); i8++) {
            if (super.A02.A0W != null && super.A02.A0W.equals(anonymousClass93.A0M.get(i8))) {
                i7 = i8;
                break;
            }
        }
        this.A05 = i7;
        this.A0G = AnonymousClass76.A02(i3) == 128;
        this.A0F = AnonymousClass76.A04(i3) == 64;
        this.A01 = AnonymousClass92.A07(super.A02.A0W);
        this.A08 = A00(i3, requiredAdaptiveSupport);
    }

    private int A00(int i, int i2) {
        if ((super.A02.A0E & 16384) != 0 || !AnonymousClass92.A0S(i, this.A09.A0B)) {
            return 0;
        }
        if (!this.A0C && !this.A09.A0C) {
            return 0;
        }
        if (AnonymousClass92.A0S(i, false) && this.A0D && this.A0C && super.A02.A05 != -1 && !this.A09.A0N && !this.A09.A0O && (i & i2) != 0) {
            return 2;
        }
        return 1;
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D56211926, support language flag in video track")
    public static int A01(C2123lk c2123lk, C2123lk c2123lk2) {
        AbstractC2143m4 abstractC2143m4A09 = AbstractC2143m4.A01().A09(c2123lk.A0E, c2123lk2.A0E).A08(Integer.valueOf(c2123lk.A03), Integer.valueOf(c2123lk2.A03), AbstractC2291oV.A03().A06()).A06(c2123lk.A04, c2123lk2.A04).A06(c2123lk.A06, c2123lk2.A06).A09(c2123lk.A0B, c2123lk2.A0B).A06(c2123lk.A07, c2123lk2.A07).A09(c2123lk.A0C, c2123lk2.A0C).A09(c2123lk.A0D, c2123lk2.A0D).A08(Integer.valueOf(c2123lk.A05), Integer.valueOf(c2123lk2.A05), AbstractC2291oV.A03().A06()).A09(c2123lk.A0G, c2123lk2.A0G).A09(c2123lk.A0F, c2123lk2.A0F);
        if (c2123lk.A0G && c2123lk.A0F) {
            int i = c2123lk.A01;
            int i2 = c2123lk2.A01;
            if (A0H[4].charAt(7) == 'c') {
                throw new RuntimeException();
            }
            A0H[4] = "L7q4oO3o2NLjefqLZehpujqtxzeKbA5O";
            abstractC2143m4A09 = abstractC2143m4A09.A06(i, i2);
        }
        int iA05 = abstractC2143m4A09.A05();
        if (A0H[7].charAt(14) != 'M') {
            return iA05;
        }
        A0H[0] = "TVm4CsN40i91TfwfawYUT3UYECpWhhhJ";
        return iA05;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oV != com.google.common.collect.Ordering<java.lang.Integer> */
    public static int A02(C2123lk c2123lk, C2123lk c2123lk2) {
        AbstractC2291oV abstractC2291oVA06;
        AbstractC2291oV abstractC2291oVA07 = (c2123lk.A0C && c2123lk.A0E) ? AnonymousClass92.A09 : AnonymousClass92.A09.A06();
        AbstractC2143m4 abstractC2143m4A01 = AbstractC2143m4.A01();
        Integer numValueOf = Integer.valueOf(c2123lk.A00);
        Integer numValueOf2 = Integer.valueOf(c2123lk2.A00);
        boolean z = c2123lk.A09.A0O;
        String[] strArr = A0H;
        if (strArr[6].charAt(5) == strArr[5].charAt(5)) {
            throw new RuntimeException();
        }
        A0H[4] = "07GlML0JAKsk4TXVd5GQtUxHkz6E2kCF";
        if (z) {
            abstractC2291oVA06 = AnonymousClass92.A09.A06();
        } else {
            abstractC2291oVA06 = AnonymousClass92.A0A;
        }
        return abstractC2143m4A01.A08(numValueOf, numValueOf2, abstractC2291oVA06).A08(Integer.valueOf(c2123lk.A02), Integer.valueOf(c2123lk2.A02), abstractC2291oVA07).A08(Integer.valueOf(c2123lk.A00), Integer.valueOf(c2123lk2.A00), abstractC2291oVA07).A05();
    }

    public static int A05(List<C2123lk> list, List<C2123lk> list2) {
        return AbstractC2143m4.A01().A08((C2123lk) Collections.max(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2123lk.A01((C2123lk) obj, (C2123lk) obj2);
            }
        }), (C2123lk) Collections.max(list2, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2123lk.A01((C2123lk) obj, (C2123lk) obj2);
            }
        }), new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2123lk.A01((C2123lk) obj, (C2123lk) obj2);
            }
        }).A06(list.size(), list2.size()).A08((C2123lk) Collections.max(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2123lk.A02((C2123lk) obj, (C2123lk) obj2);
            }
        }), (C2123lk) Collections.max(list2, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2123lk.A02((C2123lk) obj, (C2123lk) obj2);
            }
        }), new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2123lk.A02((C2123lk) obj, (C2123lk) obj2);
            }
        }).A05();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.DefaultTrackSelector$VideoTrackInfo> */
    public static AbstractC0779Am<C2123lk> A06(int pixelCount, C2278oH c2278oH, AnonymousClass93 anonymousClass93, int[] iArr, String str, int i) {
        int iA03 = AnonymousClass92.A03(c2278oH, ((C2271oA) anonymousClass93).A0F, ((C2271oA) anonymousClass93).A0E, anonymousClass93.A0Q);
        C05551h c05551hA01 = AbstractC0779Am.A01();
        int i2 = 0;
        while (true) {
            int i3 = c2278oH.A01;
            String[] strArr = A0H;
            if (strArr[1].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[6] = "2BgCu4KRvJ20zb7ljNDccj45OL5WeAVY";
            strArr2[5] = "2mW0v3SSZTDHEKi4uYotr9FneqRXRzcE";
            if (i2 < i3) {
                int iA06 = c2278oH.A08(i2).A06();
                c05551hA01.A04(new C2123lk(pixelCount, c2278oH, i2, anonymousClass93, iArr[i2], str, i, iA03 == Integer.MAX_VALUE || (iA06 != -1 && iA06 <= iA03)));
                i2++;
            } else {
                return c05551hA01.A05();
            }
        }
    }

    @Override
    public final boolean A09(C2123lk c2123lk) {
        if (this.A0A || AbstractC06244a.A1E(super.A02.A0W, ((E5) c2123lk).A02.A0W)) {
            if (!this.A09.A05) {
                if (this.A0G == c2123lk.A0G) {
                    boolean z = this.A0F;
                    if (A0H[7].charAt(14) != 'M') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0H;
                    strArr[1] = "O482IHGDjbokfcz29RQKjL9l7";
                    strArr[2] = "cI8rqKrS6U71hTMAagWNF9taj";
                    if (z == c2123lk.A0F) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public final int A08() {
        return this.A08;
    }
}

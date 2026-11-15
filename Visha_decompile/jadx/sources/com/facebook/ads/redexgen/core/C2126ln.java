package com.facebook.ads.redexgen.core;

import java.util.List;

public final class C2126ln extends E5<C2126ln> implements Comparable<C2126ln> {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A01(List<C2126ln> list, List<C2126ln> list2) {
        return list.get(0).compareTo(list2.get(0));
    }

    public C2126ln(int i, C2278oH c2278oH, int i2, AnonymousClass93 anonymousClass93, int i3, String str) {
        List<String> listA03;
        super(i, c2278oH, i2);
        int i4 = 0;
        this.A08 = AnonymousClass92.A0S(i3, false);
        int i5 = super.A02.A0H & (~((C2271oA) anonymousClass93).A00);
        this.A06 = (i5 & 1) != 0;
        this.A07 = (i5 & 2) != 0;
        int i6 = Integer.MAX_VALUE;
        int bestLanguageScore = 0;
        if (anonymousClass93.A0K.isEmpty()) {
            listA03 = MetaExoPlayerCustomizedCollections.A03("");
        } else {
            listA03 = anonymousClass93.A0K;
        }
        for (int bestLanguageIndex = 0; bestLanguageIndex < listA03.size(); bestLanguageIndex++) {
            int iA02 = AnonymousClass92.A02(super.A02, listA03.get(bestLanguageIndex), anonymousClass93.A0P);
            if (iA02 > 0) {
                i6 = bestLanguageIndex;
                bestLanguageScore = iA02;
                break;
            }
        }
        this.A00 = i6;
        this.A01 = bestLanguageScore;
        this.A02 = AnonymousClass92.A00(super.A02.A0E, ((C2271oA) anonymousClass93).A0C);
        this.A05 = (super.A02.A0E & 1088) != 0;
        this.A03 = AnonymousClass92.A02(super.A02, str, AnonymousClass92.A0K(str) == null);
        boolean z = this.A01 > 0 || (anonymousClass93.A0K.isEmpty() && this.A02 > 0) || this.A06 || (this.A07 && this.A03 > 0);
        if (AnonymousClass92.A0S(i3, anonymousClass93.A0B) && z) {
            i4 = 1;
        }
        this.A04 = i4;
    }

    @Override
    public final int compareTo(C2126ln c2126ln) {
        AbstractC2143m4 abstractC2143m4A06 = AbstractC2143m4.A01().A09(this.A08, c2126ln.A08).A08(Integer.valueOf(this.A00), Integer.valueOf(c2126ln.A00), AbstractC2291oV.A03().A06()).A06(this.A01, c2126ln.A01).A06(this.A02, c2126ln.A02).A09(this.A06, c2126ln.A06).A08(Boolean.valueOf(this.A07), Boolean.valueOf(c2126ln.A07), this.A01 == 0 ? AbstractC2291oV.A03() : AbstractC2291oV.A03().A06()).A06(this.A03, c2126ln.A03);
        if (this.A02 == 0) {
            abstractC2143m4A06 = abstractC2143m4A06.A0A(this.A05, c2126ln.A05);
        }
        return abstractC2143m4A06.A05();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.DefaultTrackSelector$TextTrackInfo> */
    public static AbstractC0779Am<C2126ln> A02(int i, C2278oH c2278oH, AnonymousClass93 anonymousClass93, int[] iArr, String str) {
        C05551h c05551hA01 = AbstractC0779Am.A01();
        for (int i2 = 0; i2 < c2278oH.A01; i2++) {
            c05551hA01.A04(new C2126ln(i, c2278oH, i2, anonymousClass93, iArr[i2], str));
        }
        return c05551hA01.A05();
    }

    @Override
    public final boolean A09(C2126ln c2126ln) {
        return false;
    }

    @Override
    public final int A08() {
        return this.A04;
    }
}

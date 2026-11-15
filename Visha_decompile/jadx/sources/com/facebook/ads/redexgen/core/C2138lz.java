package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Collections;
import java.util.List;

public final class C2138lz extends E5<C2138lz> implements Comparable<C2138lz> {
    public static String[] A0I = {"kuPF6Ds61I7lkNvdz9bcVPsTInik8V3M", "Qk0zKRkYsaxRz9XBLHG1rmY7ne3qL", "U5xl3sY91uvZaW", "4oEkNGaUX02G9U6MTdWApFSB5pjWlUNx", "CFtCC3eFdvC", "EnNVjubCw6rdwWEp5vRTdV2Ipxq1ST06", "834ujo2VifTXBI2K", "5tr2zEJniV6LNy5ijK5ku"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final AnonymousClass93 A0A;
    public final String A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean A0E;
    public final boolean A0F;
    public final boolean A0G;
    public final boolean A0H;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public C2138lz(int i, C2278oH c2278oH, int i2, AnonymousClass93 anonymousClass93, int i3, boolean z, InterfaceC1978jB<C2312or> interfaceC1978jB) {
        super(i, c2278oH, i2);
        this.A0A = anonymousClass93;
        this.A0B = AnonymousClass92.A0K(super.A02.A0V);
        this.A0F = AnonymousClass92.A0S(i3, false);
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 < anonymousClass93.A0I.size(); i6++) {
            int iA02 = AnonymousClass92.A02(super.A02, anonymousClass93.A0I.get(i6), false);
            if (iA02 > 0) {
                i5 = i6;
                i4 = iA02;
                break;
            }
        }
        this.A04 = i5;
        this.A05 = i4;
        this.A07 = AnonymousClass92.A00(super.A02.A0E, ((C2271oA) anonymousClass93).A0B);
        this.A0C = super.A02.A0E == 0 || (super.A02.A0E & 1) != 0;
        this.A0D = (super.A02.A0H & 1) != 0;
        this.A01 = super.A02.A06;
        this.A08 = super.A02.A0G;
        this.A00 = super.A02.A05;
        this.A0E = (super.A02.A05 == -1 || super.A02.A05 <= ((C2271oA) anonymousClass93).A01) && (super.A02.A06 == -1 || super.A02.A06 <= ((C2271oA) anonymousClass93).A02) && interfaceC1978jB.A44(super.A02);
        String[] strArrA1L = AbstractC06244a.A1L();
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        for (int i9 = 0; i9 < strArrA1L.length; i9++) {
            int iA03 = AnonymousClass92.A02(super.A02, strArrA1L[i9], false);
            if (iA03 > 0) {
                i7 = i9;
                i8 = iA03;
                break;
            }
        }
        this.A02 = i7;
        this.A03 = i8;
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < anonymousClass93.A0J.size(); i11++) {
            if (super.A02.A0W != null && super.A02.A0W.equals(anonymousClass93.A0J.get(i11))) {
                i10 = i11;
                break;
            }
        }
        this.A06 = i10;
        this.A0H = AnonymousClass76.A02(i3) == 128;
        this.A0G = AnonymousClass76.A04(i3) == 64;
        this.A09 = A00(i3, z);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A02(List<C2138lz> list, List<C2138lz> list2) {
        return ((C2138lz) Collections.max(list)).compareTo((C2138lz) Collections.max(list2));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static AbstractC0779Am<C2138lz> A03(int i, C2278oH c2278oH, AnonymousClass93 anonymousClass93, int[] iArr, boolean z, InterfaceC1978jB<C2312or> interfaceC1978jB) {
        C05551h c05551hA01 = AbstractC0779Am.A01();
        for (int i2 = 0; i2 < c2278oH.A01; i2++) {
            c05551hA01.A04(new C2138lz(i, c2278oH, i2, anonymousClass93, iArr[i2], z, interfaceC1978jB));
        }
        return c05551hA01.A05();
    }

    private int A00(int i, boolean z) {
        if (!AnonymousClass92.A0S(i, this.A0A.A0B)) {
            return 0;
        }
        if (!this.A0E && !this.A0A.A09) {
            return 0;
        }
        if (AnonymousClass92.A0S(i, false) && this.A0E && super.A02.A05 != -1 && !this.A0A.A0N && !this.A0A.A0O && (this.A0A.A04 || !z)) {
            return 2;
        }
        return 1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oV != com.google.common.collect.Ordering<java.lang.Integer> */
    @Override
    public final int compareTo(C2138lz c2138lz) {
        AbstractC2291oV abstractC2291oVA06;
        AbstractC2291oV abstractC2291oVA07 = (this.A0E && this.A0F) ? AnonymousClass92.A09 : AnonymousClass92.A09.A06();
        AbstractC2143m4 abstractC2143m4A08 = AbstractC2143m4.A01().A09(this.A0F, c2138lz.A0F).A08(Integer.valueOf(this.A04), Integer.valueOf(c2138lz.A04), AbstractC2291oV.A03().A06()).A06(this.A05, c2138lz.A05).A06(this.A07, c2138lz.A07).A09(this.A0D, c2138lz.A0D).A09(this.A0C, c2138lz.A0C).A08(Integer.valueOf(this.A02), Integer.valueOf(c2138lz.A02), AbstractC2291oV.A03().A06()).A06(this.A03, c2138lz.A03).A09(this.A0E, c2138lz.A0E).A08(Integer.valueOf(this.A06), Integer.valueOf(c2138lz.A06), AbstractC2291oV.A03().A06());
        Integer numValueOf = Integer.valueOf(this.A00);
        Integer numValueOf2 = Integer.valueOf(c2138lz.A00);
        if (this.A0A.A0O) {
            abstractC2291oVA06 = AnonymousClass92.A09.A06();
        } else {
            abstractC2291oVA06 = AnonymousClass92.A0A;
        }
        AbstractC2143m4 abstractC2143m4A09 = abstractC2143m4A08.A08(numValueOf, numValueOf2, abstractC2291oVA06).A09(this.A0H, c2138lz.A0H).A09(this.A0G, c2138lz.A0G).A08(Integer.valueOf(this.A01), Integer.valueOf(c2138lz.A01), abstractC2291oVA07).A08(Integer.valueOf(this.A08), Integer.valueOf(c2138lz.A08), abstractC2291oVA07);
        Integer numValueOf3 = Integer.valueOf(this.A00);
        Integer numValueOf4 = Integer.valueOf(c2138lz.A00);
        if (!AbstractC06244a.A1E(this.A0B, c2138lz.A0B)) {
            abstractC2291oVA07 = AnonymousClass92.A0A;
        }
        return abstractC2143m4A09.A08(numValueOf3, numValueOf4, abstractC2291oVA07).A05();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0036  */
    @Override
    public final boolean A09(C2138lz c2138lz) {
        if (this.A0A.A00) {
            if ((!this.A0A.A02 || (super.A02.A0W != null && TextUtils.equals(super.A02.A0W, ((E5) c2138lz).A02.A0W))) && ((this.A0A.A03 || (super.A02.A0G != -1 && super.A02.A0G == ((E5) c2138lz).A02.A0G)) && (this.A0A.A01 || (this.A0H == c2138lz.A0H && this.A0G == c2138lz.A0G)))) {
            }
        } else if (super.A02.A06 != -1) {
            int i = super.A02.A06;
            String[] strArr = A0I;
            if (strArr[5].charAt(5) == strArr[0].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[5] = "4j0Ebeo7wJOJZxGoc5hIgJQJaA3nIP6d";
            strArr2[0] = "7JU6hRyIHJ6Xx4Pnq3EsCWmSiYve8JpD";
            if (i == ((E5) c2138lz).A02.A06) {
                return !this.A0A.A02 ? true : true;
            }
        }
        return false;
    }

    @Override
    public final int A08() {
        return this.A09;
    }
}

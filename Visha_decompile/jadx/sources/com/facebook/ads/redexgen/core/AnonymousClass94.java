package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;

public abstract class AnonymousClass94 implements InterfaceC2122lj {
    public int A00;

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "https://github.com/androidx/media/pull/1742")
    public boolean A01;
    public final int A02;
    public final long[] A03;
    public final C2312or[] A04;
    public final int A05;
    public final C2278oH A06;
    public final int[] A07;

    public AnonymousClass94(C2278oH c2278oH, int[] iArr, int i) {
        C3M.A08(iArr.length > 0);
        this.A02 = i;
        this.A06 = (C2278oH) C3M.A01(c2278oH);
        this.A05 = iArr.length;
        this.A04 = new C2312or[this.A05];
        for (int i2 = 0; i2 < i; i2++) {
            C2312or[] c2312orArr = this.A04;
            int i3 = iArr[i2];
            c2312orArr[i2] = c2278oH.A08(i3);
        }
        Arrays.sort(this.A04, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return AnonymousClass94.A07((C2312or) obj, (C2312or) obj2);
            }
        });
        this.A07 = new int[this.A05];
        for (int i4 = 0; i4 < i; i4++) {
            int[] iArr2 = this.A07;
            int i5 = c2278oH.A07(this.A04[i4]);
            iArr2[i4] = i5;
        }
        int i6 = this.A05;
        this.A03 = new long[i6];
        this.A01 = false;
    }

    public static int A07(C2312or c2312or, C2312or c2312or2) {
        return c2312or2.A05 - c2312or.A05;
    }

    @Override
    public void A5p() {
    }

    @Override
    public void A6C() {
    }

    @Override
    public final C2312or A83(int i) {
        return this.A04[i];
    }

    @Override
    public final int A89(int i) {
        return this.A07[i];
    }

    @Override
    public final C2312or A8u() {
        return this.A04[A8v()];
    }

    @Override
    public final C2278oH A9D() {
        return this.A06;
    }

    @Override
    public final int A9y(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.A07[i2];
            if (i3 == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override
    public void AEc(float f) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AnonymousClass94 anonymousClass94 = (AnonymousClass94) obj;
        return this.A06 == anonymousClass94.A06 && Arrays.equals(this.A07, anonymousClass94.A07);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            this.A00 = (System.identityHashCode(this.A06) * 31) + Arrays.hashCode(this.A07);
        }
        return this.A00;
    }

    @Override
    public final int length() {
        return this.A07.length;
    }
}

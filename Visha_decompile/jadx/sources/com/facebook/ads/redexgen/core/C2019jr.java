package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class C2019jr implements KJ {
    public static byte[] A06;
    public int A00;
    public int A01;
    public long A02 = C.TIME_UNSET;
    public boolean A03;
    public final List<C1023Ka> A04;
    public final H1[] A05;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{1, 16, 16, 12, 9, 3, 1, 20, 9, 15, 14, -49, 4, 22, 2, 19, 21, 2, 19};
    }

    public C2019jr(List<C1023Ka> list) {
        this.A04 = list;
        this.A05 = new H1[list.size()];
    }

    private boolean A02(C4J c4j, int i) {
        if (c4j.A07() == 0) {
            return false;
        }
        if (c4j.A0I() != i) {
            this.A03 = false;
        }
        this.A00--;
        return this.A03;
    }

    @Override
    public final void A52(C4J c4j) {
        if (this.A03) {
            if (this.A00 == 2 && !A02(c4j, 32)) {
                return;
            }
            if (this.A00 == 1 && !A02(c4j, 0)) {
                return;
            }
            int iA09 = c4j.A09();
            int iA07 = c4j.A07();
            for (H1 h1 : this.A05) {
                c4j.A0f(iA09);
                h1.AI7(c4j, iA07);
            }
            int dataPosition = this.A01;
            this.A01 = dataPosition + iA07;
        }
    }

    @Override
    public final void A5U(GY gy, C1027Ke c1027Ke) {
        for (int i = 0; i < i; i++) {
            C1023Ka c1023Ka = this.A04.get(i);
            c1027Ke.A05();
            H1 h1AJh = gy.AJh(c1027Ke.A03(), 3);
            h1AJh.A6W(new C2D().A0y(c1027Ke.A04()).A11(A00(0, 19, 111)).A12(Collections.singletonList(c1023Ka.A02)).A10(c1023Ka.A01).A14());
            this.A05[i] = h1AJh;
        }
    }

    @Override
    public final void AG5() {
        if (this.A03) {
            if (this.A02 != C.TIME_UNSET) {
                for (H1 h1 : this.A05) {
                    h1.AIA(this.A02, 1, this.A01, 0, null);
                }
            }
            this.A03 = false;
        }
    }

    @Override
    public final void AG6(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.A03 = true;
        if (j != C.TIME_UNSET) {
            this.A02 = j;
        }
        this.A01 = 0;
        this.A00 = 2;
    }

    @Override
    public final void AIL() {
        this.A03 = false;
        this.A02 = C.TIME_UNSET;
    }
}

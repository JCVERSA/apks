package com.facebook.ads.redexgen.core;

public class ED extends AbstractRunnableC1322Vt {
    public final int A00;
    public final int A01;
    public final E1 A02;
    public final EnumC1705eU A03;

    public ED(E1 e1, EnumC1705eU enumC1705eU, int i, int i2) {
        this.A02 = e1;
        this.A03 = enumC1705eU;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override
    public final void A07() {
        if (this.A03 == EnumC1705eU.A07) {
            this.A02.A0M(UZ.A0y);
            this.A02.A0B.A0F().A3b();
            this.A02.A0C.A02(E1.A0J);
            return;
        }
        if (this.A03 == EnumC1705eU.A03) {
            this.A02.A0M(UZ.A0t);
            this.A02.A04 = true;
            this.A02.A0C.A02(E1.A0H);
            this.A02.A0L(this.A00);
            return;
        }
        if (this.A03 == EnumC1705eU.A06) {
            this.A02.A0M(UZ.A0s);
            this.A02.A0B.A0F().A3T();
            this.A02.A04 = true;
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0C.A02(new C06013d(this.A01, this.A01));
            this.A02.A0L(this.A01);
            return;
        }
        if (this.A03 == EnumC1705eU.A0A) {
            if (U7.A1u(this.A02.A0B)) {
                this.A02.A0B.A0B().AFs();
            }
            this.A02.A0M(UZ.A0w);
            this.A02.A0B.A0F().A3i();
            this.A02.A0C.A02(E1.A0I);
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0I();
            return;
        }
        if (this.A03 == EnumC1705eU.A05) {
            this.A02.A0M(UZ.A0v);
            this.A02.A0B.A0F().A3X();
            C1257Te c1257Te = this.A02.A0C;
            final int i = this.A00;
            c1257Te.A02(new DY(i) {
            });
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0L(this.A00);
            return;
        }
        if (this.A03 == EnumC1705eU.A04) {
            this.A02.A0M(UZ.A0u);
            this.A02.A0B.A0F().A3U();
            this.A02.A0C.A02(E1.A0L);
            this.A02.A08.removeCallbacksAndMessages(null);
            return;
        }
        if (this.A03 == EnumC1705eU.A09) {
            this.A02.A0M(UZ.A0s);
            this.A02.A0B.A0F().A3d();
            this.A02.A04 = true;
            this.A02.A08.removeCallbacksAndMessages(null);
            this.A02.A0C.A02(new C06013d(this.A00, this.A01));
            this.A02.A0L(this.A00);
        }
    }
}

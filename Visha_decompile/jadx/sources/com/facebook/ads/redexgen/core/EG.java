package com.facebook.ads.redexgen.core;

import java.util.Map;

public final class EG implements InterfaceC1641dR {
    public final C1635dL A01;
    public final US A02;
    public final C1638dO A03;
    public final E1 A04;
    public final String A07;
    public final DR A06 = new DR() {
        @Override
        public final void A03(C3Y c3y) {
            if (this.A00.A00.booleanValue()) {
                return;
            }
            this.A00.A01.A0F().AII();
            this.A00.A08();
        }
    };
    public final DX A05 = new DX() {
        @Override
        public final void A03(C06013d c06013d) {
            if (!this.A00.A00.booleanValue()) {
                this.A00.A01.A0F().AIG();
                this.A00.A08();
            }
            this.A00.A00 = true;
        }
    };
    public Boolean A00 = false;

    public EG(C1635dL c1635dL, US us, E1 e1, String str, boolean z, C0844Dc c0844Dc, Map<String, String> extraParams) {
        this.A01 = c1635dL;
        this.A02 = us;
        this.A07 = str;
        this.A04 = e1;
        this.A03 = new C1638dO(e1, str, z, extraParams);
        if (U7.A25(this.A01)) {
            this.A01.A0F().AID();
            c0844Dc.A0m(this);
        } else {
            this.A01.A0F().AIE();
            this.A04.getEventBus().A03(this.A06, this.A05);
        }
    }

    public final void A07() {
        EI ei = new EI(this);
        if (this.A04.A0t()) {
            XJ.A00(ei);
        } else {
            this.A04.getStateHandler().post(ei);
        }
    }

    public final synchronized void A08() {
        if (!this.A00.booleanValue()) {
            this.A02.ABQ(this.A07, this.A03.A06());
        }
    }

    @Override
    public final void AE5() {
        this.A01.A0F().AIH();
        A08();
    }
}

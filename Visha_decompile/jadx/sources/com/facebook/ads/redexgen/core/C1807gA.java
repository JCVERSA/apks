package com.facebook.ads.redexgen.core;

public class C1807gA implements InterfaceC1189Qn {
    public final C06826g A00;

    public C1807gA(C06826g c06826g) {
        this.A00 = c06826g;
    }

    @Override
    public final void AGP(AbstractC1182Qg abstractC1182Qg, QJ qj, QJ qj2) {
        this.A00.A1l(abstractC1182Qg, qj, qj2);
    }

    @Override
    public final void AGR(AbstractC1182Qg abstractC1182Qg, QJ qj, QJ qj2) {
        this.A00.A0r.A0Y(abstractC1182Qg);
        this.A00.A1m(abstractC1182Qg, qj, qj2);
    }

    @Override
    public final void AGT(AbstractC1182Qg abstractC1182Qg, QJ qj, QJ qj2) {
        abstractC1182Qg.A0d(false);
        if (this.A00.A0C) {
            if (this.A00.A05.A0R(abstractC1182Qg, abstractC1182Qg, qj, qj2)) {
                this.A00.A1O();
            }
        } else {
            if (!this.A00.A05.A0Q(abstractC1182Qg, qj, qj2)) {
                return;
            }
            this.A00.A1O();
        }
    }

    @Override
    public final void AJo(AbstractC1182Qg abstractC1182Qg) {
        this.A00.A06.A1F(abstractC1182Qg.A0H, this.A00.A0r);
    }
}

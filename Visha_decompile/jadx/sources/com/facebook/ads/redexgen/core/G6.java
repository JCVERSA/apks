package com.facebook.ads.redexgen.core;

public class G6 implements InterfaceC1331Wc {
    public final int A00;
    public final AbstractRunnableC1322Vt A01;
    public final G2 A02;
    public final C0838Cw A03;

    public G6(G2 g2, int i, C0838Cw c0838Cw, AbstractRunnableC1322Vt abstractRunnableC1322Vt) {
        this.A02 = g2;
        this.A00 = i;
        this.A03 = c0838Cw;
        this.A01 = abstractRunnableC1322Vt;
    }

    @Override
    public final void ACp() throws Throwable {
        this.A01.run();
    }

    @Override
    public final void AEn(float f) {
        this.A02.A08.setProgress(100.0f * (1.0f - (f / this.A00)));
        if (this.A03 != null) {
            C0838Cw c0838Cw = this.A03;
            float percentage = this.A00;
            c0838Cw.A07((int) ((percentage - f) * 1000.0f));
        }
    }
}

package com.facebook.ads.redexgen.core;

public class G0 implements InterfaceC1582cT {
    public final int A00;
    public final C0918Fy A01;

    public G0(C0918Fy c0918Fy, int i) {
        this.A01 = c0918Fy;
        this.A00 = i;
    }

    @Override
    public final void ABr() {
        this.A01.A0E();
    }

    @Override
    public final void ACZ() {
        this.A01.A0V(false, this.A00);
    }

    @Override
    public final void ACy(int i) {
        C0918Fy.A02(this.A01, i);
    }

    @Override
    public final void ADI(float f) {
        if (!this.A01.A08) {
            this.A01.A0J(f);
        }
    }

    @Override
    public final void AFE(boolean z) {
        this.A01.A0U(z);
    }

    @Override
    public final void AFg(String str) {
        this.A01.A0D.A0F().A3S(str);
        this.A01.A0I.A4b(this.A01.A0J.A7t());
        this.A01.A0K(3);
    }

    @Override
    public final void AJr() {
        this.A01.setUnskippableSecondsComplete(false);
        this.A01.A0H.setProgressImmediate(0.0f);
        this.A01.A0H.setToolbarActionMode(2);
    }

    @Override
    public final void AJs(float f) {
        this.A01.A0H.setProgress(100.0f * f);
    }
}

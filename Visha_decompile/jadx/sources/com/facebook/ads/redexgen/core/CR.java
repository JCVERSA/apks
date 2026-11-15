package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.common.Timeline;
import java.util.List;

public class CR implements InterfaceC05902s {
    public final InterfaceC1687eC A00;
    public final C1690eF A01;

    @Override
    public final void ACv(C2261o0 c2261o0) {
    }

    @Override
    public final void ACw(List list) {
    }

    @Override
    public final void AFQ(Timeline timeline, int i) {
        AbstractC05892r.A00(this, timeline, i);
    }

    public CR(C1690eF c1690eF, InterfaceC1687eC interfaceC1687eC) {
        this.A01 = c1690eF;
        this.A00 = interfaceC1687eC;
    }

    @Override
    public final void AEb(C2296ob c2296ob) {
    }

    @Override
    public final void AEd(C2298od c2298od) {
        this.A00.AEe(C1690eF.A01(c2298od), c2298od);
    }

    @Override
    public final void AEf(boolean z, int i) {
        this.A00.AEf(z, i);
    }

    @Override
    public final void AFB() {
    }

    @Override
    public final void AFU(C2267o6 c2267o6) {
    }
}

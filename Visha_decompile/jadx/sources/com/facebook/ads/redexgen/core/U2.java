package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;

public class U2 implements InterfaceC1290Um {
    public final MediaViewVideoRendererApi A00;
    public final TD A01;

    public U2(TD td, MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        this.A01 = td;
        this.A00 = mediaViewVideoRendererApi;
    }

    @Override
    public final void AIk() {
        this.A00.setVolume(0.0f);
    }

    @Override
    public final void AIp(NativeAd nativeAd) {
        this.A01.A0I(C1178Qc.A0L(nativeAd.getInternalNativeAd()), null);
    }

    @Override
    public final void AJn() {
        this.A01.A0D();
    }
}

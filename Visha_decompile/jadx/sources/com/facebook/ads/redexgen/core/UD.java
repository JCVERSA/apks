package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;

public class UD implements InterfaceC1290Um {
    public final MediaViewVideoRendererApi A00;
    public final TD A01;

    public UD(TD td, MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        this.A01 = td;
        this.A00 = mediaViewVideoRendererApi;
    }

    @Override
    public final void AIk() {
        this.A00.setVolume(1.0f);
    }

    @Override
    public final void AIp(NativeAd nativeAd) {
        this.A01.A0I(C1178Qc.A0L(nativeAd.getInternalNativeAd()), new C1255Tc(C1178Qc.A0L(nativeAd.getInternalNativeAd())));
    }

    @Override
    public final void AJn() {
        this.A01.A0D();
    }
}

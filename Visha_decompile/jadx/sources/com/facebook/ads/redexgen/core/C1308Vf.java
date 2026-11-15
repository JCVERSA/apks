package com.facebook.ads.redexgen.core;

public final class C1308Vf implements ViewpointAction<UE, UJ> {
    public VN A00;

    public C1308Vf(VN vn) {
        this.A00 = vn;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<com.facebook.ads.internal.impressionsecondchannel.model.Impression, com.facebook.ads.internal.impressionsecondchannel.state.ImpressionState> */
    @Override
    public final void A6J(C2359pu<UE, UJ> c2359pu, InterfaceC2350pk interfaceC2350pk) {
        switch (interfaceC2350pk.A9M(c2359pu)) {
            case A02:
            case A04:
                this.A00.A02(c2359pu, interfaceC2350pk);
                break;
        }
    }
}

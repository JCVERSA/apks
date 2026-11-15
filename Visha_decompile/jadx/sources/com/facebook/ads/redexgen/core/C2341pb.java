package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

public final class C2341pb {
    public static C2341pb A03 = null;
    public final ViewpointQeConfig A00;
    public final ViewpointRegistry A01;
    public final C2352pm A02;

    public C2341pb(ViewpointQeConfig viewpointQeConfig, AbstractC2357ps abstractC2357ps, C2352pm c2352pm, ViewpointRegistry viewpointRegistry) {
        this.A00 = viewpointQeConfig;
        this.A01 = viewpointRegistry;
        this.A02 = c2352pm;
        abstractC2357ps.A03(new A4(c2352pm));
    }

    public static C2341pb A00(ViewpointQeConfig viewpointQeConfig, AbstractC2357ps abstractC2357ps, InterfaceC2362px interfaceC2362px, A6 a6) {
        C2341pb localsTestInstance = A03;
        if (localsTestInstance != null) {
            return localsTestInstance;
        }
        ViewpointRegistry viewpointRegistry = new ViewpointRegistry(viewpointQeConfig);
        return new C2341pb(viewpointQeConfig, abstractC2357ps, new C2352pm(viewpointQeConfig, interfaceC2362px, C0798Bg.A00, a6, viewpointRegistry, new Handler(Looper.getMainLooper())), viewpointRegistry);
    }

    public final void A01(InterfaceC2356pr interfaceC2356pr) {
        this.A02.A0E(interfaceC2356pr);
    }

    public final void A02(InterfaceC2354pp interfaceC2354pp) {
        this.A02.A0F(interfaceC2354pp);
    }

    public final void A03(DspViewableNode dspViewableNode) {
        A04(dspViewableNode, null);
    }

    public final void A04(DspViewableNode dspViewableNode, C2363q0 c2363q0) {
        if (this.A00.A00 && c2363q0 != null) {
            this.A01.A06(dspViewableNode, c2363q0);
        } else {
            this.A01.A05(dspViewableNode);
        }
    }

    public final void A05(DspViewableNode dspViewableNode, C2363q0 c2363q0, C2359pu c2359pu) {
        if (this.A00.A00 && c2363q0 != null) {
            this.A01.A07(dspViewableNode, c2363q0, c2359pu);
        } else {
            this.A01.A08(dspViewableNode, c2359pu);
        }
    }

    public final void A06(DspViewableNode dspViewableNode, C2359pu c2359pu) {
        A05(dspViewableNode, null, c2359pu);
    }
}

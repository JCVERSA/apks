package com.facebook.ads.redexgen.core;

import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;

public class E2 implements Spatializer$OnSpatializerStateChangedListener {
    public final E3 A00;
    public final AnonymousClass92 A01;

    public E2(E3 e3, AnonymousClass92 anonymousClass92) {
        this.A00 = e3;
        this.A01 = anonymousClass92;
    }

    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        this.A01.A0L();
    }

    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        this.A01.A0L();
    }
}

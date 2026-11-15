package com.facebook.ads.redexgen.core;

import android.media.AudioAttributes;

public final class C1N {
    public final AudioAttributes A00;

    public C1N(C2318oy c2318oy) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(c2318oy.A02).setFlags(c2318oy.A03).setUsage(c2318oy.A05);
        if (AbstractC06244a.A02 >= 29) {
            C1L.A00(usage, c2318oy.A01);
        }
        if (AbstractC06244a.A02 >= 32) {
            C1M.A00(usage, c2318oy.A04);
        }
        this.A00 = usage.build();
    }
}

package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

public abstract class AbstractC2317ox implements InterfaceC05972z {
    public final C2281oL A00 = new C2281oL();

    @MetaExoPlayerCustomization("Should be final")
    public abstract void A0H(int i, long j);

    public final int A00() {
        long jA6z = A6z();
        long jA7k = A7k();
        if (jA6z == C.TIME_UNSET || jA7k == C.TIME_UNSET) {
            return 0;
        }
        if (jA7k == 0) {
            return 100;
        }
        return AbstractC06244a.A07((int) ((100 * jA6z) / jA7k), 0, 100);
    }

    public void A01() {
        AJV(false);
    }

    public final void A02() {
        A03(A7Z());
    }

    public final void A03(int i) {
        A0H(i, C.TIME_UNSET);
    }

    public final void A04(long j) {
        A0H(A7Z(), j);
    }
}

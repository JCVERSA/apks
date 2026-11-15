package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

public abstract class AbstractC1111Nl {

    @Nullable
    public static HandlerC1110Nk A00;
    public static final AtomicBoolean A01 = new AtomicBoolean();

    public static HandlerC1110Nk A00(C1609cu c1609cu) {
        if (A00 == null) {
            A00 = new HandlerC1110Nk(c1609cu);
        }
        return A00;
    }

    public static void A01(C1609cu c1609cu) {
        if (UA.A0F(c1609cu)) {
            A03(c1609cu);
        }
    }

    public static void A02(C1609cu c1609cu) {
        if (UA.A0E(c1609cu)) {
            A03(c1609cu);
        }
    }

    public static void A03(C1609cu c1609cu) {
        if (A01.compareAndSet(false, true)) {
            XJ.A01.execute(new C1845go(c1609cu));
        }
    }
}

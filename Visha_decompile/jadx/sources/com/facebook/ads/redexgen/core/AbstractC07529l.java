package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.Map;

public abstract class AbstractC07529l implements InterfaceC2247nl {
    public static String[] A04 = {"fHQEiP1zlTMmcDhuRJvCUYhlqM3A1WdS", "0xjR5o24wRXCnK6P48nvJnLVp1A7yIdC", "SqWyKblZmsOi3mnFjBlOyIvINI4fuoz1", "GUT90kd8g0iIA", "yfLAFjbfQv", "f1jCtkpjn8LmH02gI7EE0X95Og8KENXi", "pIy67q2NMZ", "VUF0F4IbO37j7MJUWX75PYUeN7L9nYYd"};
    public int A00;
    public AnonymousClass56 A01;
    public final ArrayList<C5H> A02 = new ArrayList<>(1);
    public final boolean A03;

    @Override
    public Map A8l() {
        return AbstractC06454v.A00(this);
    }

    public AbstractC07529l(boolean z) {
        this.A03 = z;
    }

    @MetaExoPlayerCustomization
    private final void A0D(AnonymousClass56 anonymousClass56, boolean z) {
        this.A01 = anonymousClass56;
        for (int i = 0; i < i; i++) {
            this.A02.get(i).AFX(this, anonymousClass56, this.A03, z);
        }
    }

    public final void A0E() {
        AnonymousClass56 anonymousClass56 = (AnonymousClass56) AbstractC06244a.A0f(this.A01);
        for (int i = 0; i < this.A00; i++) {
            this.A02.get(i).AFW(this, anonymousClass56, this.A03);
        }
        this.A01 = null;
    }

    public final void A0F(int i) {
        AnonymousClass56 anonymousClass56 = (AnonymousClass56) AbstractC06244a.A0f(this.A01);
        for (int i2 = 0; i2 < this.A00; i2++) {
            this.A02.get(i2).ACg(this, anonymousClass56, this.A03, i);
        }
    }

    public final void A0G(AnonymousClass56 anonymousClass56) {
        for (int i = 0; i < i; i++) {
            this.A02.get(i);
            if (A04[7].charAt(14) == 'P') {
                throw new RuntimeException();
            }
            A04[2] = "KcnUkvSyZAFqCmq9nk7LLPyjKQRUe1pa";
        }
    }

    public final void A0H(AnonymousClass56 anonymousClass56) {
        A0D(anonymousClass56, false);
    }

    @Override
    public final void A3v(C5H c5h) {
        C3M.A01(c5h);
        if (!this.A02.contains(c5h)) {
            this.A02.add(c5h);
            this.A00++;
        }
    }
}

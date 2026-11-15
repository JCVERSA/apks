package com.facebook.ads.redexgen.core;

import com.facebook.ads.CacheFlag;
import java.util.EnumSet;

public final class C07006y extends AbstractC1881hQ {
    public C07006y(C1635dL c1635dL, NT nt) {
        super(c1635dL, nt);
    }

    private C1879hO A00(Runnable runnable) {
        return new C1879hO(this, runnable);
    }

    @Override
    public final AbstractC1088Mo A0I() {
        C1936iS successfullyLoadedAdapter = (C1936iS) this.A01;
        if (successfullyLoadedAdapter != null) {
            return successfullyLoadedAdapter.A09();
        }
        return null;
    }

    @Override
    public final void A0P() {
        C1936iS interstitialAdapter = (C1936iS) this.A01;
        interstitialAdapter.A0B();
    }

    @Override
    public final void A0R(MP mp, TE te, TC tc, NU nu) {
        C1936iS c1936iS = (C1936iS) mp;
        C1880hP c1880hP = new C1880hP(this, nu, c1936iS);
        A0H().postDelayed(c1880hP, te.A05().A05());
        EnumSet<CacheFlag> enumSet = this.A08.A0B;
        if (enumSet == null) {
            enumSet = CacheFlag.ALL;
        }
        c1936iS.A0A(this.A0B, A00(c1880hP), nu, enumSet, this.A08.A04, this.A08.A05, this.A08.A02);
    }
}

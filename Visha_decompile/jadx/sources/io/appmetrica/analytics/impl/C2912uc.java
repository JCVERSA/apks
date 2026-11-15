package io.appmetrica.analytics.impl;

import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;

public final class C2912uc implements Zf {
    public final C2937vc a;

    public C2912uc(C2937vc c2937vc) {
        this.a = c2937vc;
    }

    @Override
    public final void a(@Nullable C2468cg c2468cg) {
        if (c2468cg == null) {
            return;
        }
        C2408a6 c2408a6 = new C2408a6("", "", 0);
        c2408a6.setValueBytes(c2468cg.a());
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        this.a.a(c2408a6);
    }
}

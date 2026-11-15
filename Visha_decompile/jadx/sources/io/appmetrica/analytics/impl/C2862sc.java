package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

public final class C2862sc extends AbstractC2526f {
    public C2862sc(Context context, C2817qg c2817qg) {
        super(context, c2817qg);
    }

    @Override
    public final void b(@NonNull C2408a6 c2408a6, @NonNull G4 g4) {
        boolean zBooleanValue = ((Boolean) WrapUtils.getOrDefault(g4.b.b, Boolean.FALSE)).booleanValue();
        Pb pbL = C2910ua.E.l();
        pbL.a(zBooleanValue);
        pbL.a(g4.b.c);
        Boolean bool = g4.b.n;
        if (bool != null) {
            C2910ua.E.b().b(bool.booleanValue());
        }
        this.b.a(c2408a6, g4);
    }
}

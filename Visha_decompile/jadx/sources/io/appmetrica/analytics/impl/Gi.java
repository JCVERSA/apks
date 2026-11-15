package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;

public final class Gi implements InterfaceC3034z9 {
    @Override
    @Nullable
    public final Integer a(@NonNull R8 r8) {
        EnumC2588hb enumC2588hb = r8.h;
        if (enumC2588hb != null) {
            return (Integer) Cf.c.get(enumC2588hb);
        }
        Map map = Cf.a;
        return null;
    }
}

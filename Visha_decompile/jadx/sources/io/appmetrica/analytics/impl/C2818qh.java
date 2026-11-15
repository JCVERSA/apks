package io.appmetrica.analytics.impl;

import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

public final class C2818qh extends Yg {
    public C2818qh(L6 l6) {
        super(l6);
    }

    @Override
    public final boolean a(@Nullable Boolean bool) {
        return !this.a.isRestrictedForReporter() && ((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue();
    }
}

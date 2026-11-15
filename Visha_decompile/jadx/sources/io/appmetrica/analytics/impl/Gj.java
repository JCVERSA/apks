package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

public final class Gj extends Yg {
    public Gj(@NonNull L6 l6) {
        super(l6);
    }

    @Override
    public final boolean a(@Nullable Boolean bool) {
        return !this.a.isRestrictedForSdk() && ((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue();
    }
}

package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class C3010ya extends C2985xa {
    public C3010ya(int i, int i2) {
        this(i, new C3035za(i2));
    }

    public final int a(@Nullable String str) {
        return StringUtils.getUTF8Bytes(str).length;
    }

    @Override
    public final int b(@Nullable Object obj) {
        return StringUtils.getUTF8Bytes((String) obj).length;
    }

    @VisibleForTesting
    public C3010ya(int i, @NonNull C3035za c3035za) {
        super(i, c3035za);
    }
}

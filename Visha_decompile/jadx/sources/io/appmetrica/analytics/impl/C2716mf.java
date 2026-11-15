package io.appmetrica.analytics.impl;

import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class C2716mf extends C2985xa {
    public C2716mf(int i) {
        super(i);
    }

    @Override
    public final int b(@Nullable V v) {
        if (v == null) {
            return 0;
        }
        return StringUtils.getUtf8BytesLength(v.b) + 12;
    }
}

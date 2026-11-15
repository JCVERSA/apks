package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import kotlin.NoWhenBranchMatchedException;

public final class C2491de implements Converter {
    @Override
    public final Integer fromModel(Boolean bool) {
        int i;
        if (bool == null) {
            i = -1;
        } else if (y45.e(bool, Boolean.TRUE)) {
            i = 1;
        } else {
            if (!y45.e(bool, Boolean.FALSE)) {
                throw new NoWhenBranchMatchedException();
            }
            i = 0;
        }
        return Integer.valueOf(i);
    }

    @Override
    public final Object toModel(Object obj) {
        return a(((Number) obj).intValue());
    }

    public final Boolean a(int i) {
        if (i != -1) {
            if (i == 0) {
                return Boolean.FALSE;
            }
            if (i == 1) {
                return Boolean.TRUE;
            }
        }
        return null;
    }
}

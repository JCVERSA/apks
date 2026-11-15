package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.Converter;

public final class C2517ef implements Converter {
    @Override
    @NonNull
    public final Integer fromModel(@NonNull X7 x7) {
        int iOrdinal = x7.ordinal();
        if (iOrdinal == 1) {
            return 1;
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? 0 : 2;
        }
        return 3;
    }

    @Override
    @NonNull
    public final X7 toModel(@NonNull Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue == 1) {
            return X7.c;
        }
        if (iIntValue == 2) {
            return X7.e;
        }
        if (iIntValue != 3) {
            return X7.b;
        }
        return X7.d;
    }
}

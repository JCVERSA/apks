package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.ValidationException;

public class C2450bn implements Pn {
    public final Pn a;

    public C2450bn(@NonNull Pn pn) {
        this.a = pn;
    }

    @Override
    public final Nn a(@Nullable Object obj) {
        Nn nnA = this.a.a(obj);
        if (nnA.a) {
            return nnA;
        }
        throw new ValidationException(nnA.b);
    }

    @NonNull
    @VisibleForTesting
    public final Pn a() {
        return this.a;
    }
}

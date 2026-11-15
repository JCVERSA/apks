package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

public abstract class M2 implements Aa {
    public final int a;

    public M2(int i) {
        this.a = i;
    }

    @VisibleForTesting(otherwise = 4)
    public final int a() {
        return this.a;
    }

    @Override
    @NonNull
    public abstract C2649jn a(@Nullable Object obj);
}

package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class Td implements Pn {
    public final String a;

    public Td(@NonNull String str) {
        this.a = str;
    }

    @Override
    public final Nn a(@Nullable Object obj) {
        if (obj != null) {
            return new Nn(this, true, "");
        }
        return new Nn(this, false, this.a + " is null.");
    }

    @NonNull
    public final String a() {
        return this.a;
    }
}

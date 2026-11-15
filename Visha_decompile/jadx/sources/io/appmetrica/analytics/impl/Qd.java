package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;

public final class Qd implements Pn {
    public final String a;

    public Qd(@NonNull String str) {
        this.a = str;
    }

    @Override
    public final Nn a(@Nullable Collection<Object> collection) {
        if (!In.a((Collection) collection)) {
            return new Nn(this, true, "");
        }
        return new Nn(this, false, this.a + " is null or empty.");
    }
}

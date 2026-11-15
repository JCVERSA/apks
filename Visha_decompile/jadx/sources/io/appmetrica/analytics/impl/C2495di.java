package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;

public final class C2495di implements Pn {
    public final Map a;

    public C2495di(@NonNull Map<String, ?> map) {
        this.a = map;
    }

    @Override
    public final Nn a(@Nullable String str) {
        return this.a.containsKey(str) ? new Nn(this, false, String.format("Failed to activate AppMetrica with provided apiKey ApiKey %s has already been used by another reporter.", str)) : new Nn(this, true, "");
    }
}

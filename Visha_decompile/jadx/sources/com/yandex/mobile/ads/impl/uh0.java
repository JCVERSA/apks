package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class uh0 {
    private final HashMap a = new HashMap();

    @Nullable
    private Map<String, String> b;

    public final synchronized Map<String, String> a() {
        try {
            if (this.b == null) {
                this.b = Collections.unmodifiableMap(new HashMap(this.a));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }
}

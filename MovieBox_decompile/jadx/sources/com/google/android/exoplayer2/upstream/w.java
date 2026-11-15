package com.google.android.exoplayer2.upstream;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class w {

    private final Map f26760a = new HashMap();

    private Map f26761b;

    public synchronized Map a() {
        try {
            if (this.f26761b == null) {
                this.f26761b = Collections.unmodifiableMap(new HashMap(this.f26760a));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f26761b;
    }
}

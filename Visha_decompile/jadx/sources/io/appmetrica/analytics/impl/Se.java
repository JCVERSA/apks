package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

public final class Se implements V7 {

    @NonNull
    public final C2542ff a;

    @NonNull
    public final List<Re> b;

    public Se(@NonNull C2542ff c2542ff, @NonNull List<Re> list) {
        this.a = c2542ff;
        this.b = list;
    }

    @Override
    @NonNull
    public final List<Re> a() {
        return this.b;
    }

    @Override
    @Nullable
    public final Object b() {
        return this.a;
    }

    @Nullable
    public final C2542ff c() {
        return this.a;
    }

    public final String toString() {
        return "PreloadInfoData{chosenPreloadInfo=" + this.a + ", candidates=" + this.b + '}';
    }
}

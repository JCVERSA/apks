package com.google.android.libraries.places.internal;

import java.util.Map;

final class zzaui implements Map.Entry {
    private final Map.Entry zza;

    @Override
    public final Object getKey() {
        return this.zza.getKey();
    }

    @Override
    public final Object getValue() {
        if (((zzauk) this.zza.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override
    public final Object setValue(Object obj) {
        if (obj instanceof zzavf) {
            return ((zzauk) this.zza.getValue()).zzc((zzavf) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzauk zza() {
        return (zzauk) this.zza.getValue();
    }
}

package com.google.android.gms.internal.measurement;

final class zzid extends zzif {
    static final zzid zza = new zzid();

    private zzid() {
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override
    public final Object zza() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override
    public final boolean zzb() {
        return false;
    }
}

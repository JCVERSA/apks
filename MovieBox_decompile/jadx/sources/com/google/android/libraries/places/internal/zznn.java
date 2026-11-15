package com.google.android.libraries.places.internal;

final class zznn extends zznp {
    private static final zznn zzb = new zznn();

    private zznn() {
        super("");
    }

    @Override
    public final int compareTo(Object obj) {
        return zza((zznp) obj);
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "-∞";
    }

    @Override
    public final int zza(zznp zznpVar) {
        return zznpVar == this ? 0 : -1;
    }

    @Override
    final void zzc(StringBuilder sb2) {
        sb2.append("(-∞");
    }

    @Override
    final void zzd(StringBuilder sb2) {
        throw new AssertionError();
    }

    @Override
    final boolean zze(Comparable comparable) {
        return true;
    }
}

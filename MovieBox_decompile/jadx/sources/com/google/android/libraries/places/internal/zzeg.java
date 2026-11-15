package com.google.android.libraries.places.internal;

final class zzeg extends zzei {
    private final long zza;
    private final long zzb;

    zzeg(long j10, long j11) {
        this.zza = j10;
        this.zzb = j11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzei) {
            zzei zzeiVar = (zzei) obj;
            if (this.zza == zzeiVar.zza() && this.zzb == zzeiVar.zzb()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.zzb;
        long j11 = this.zza;
        return ((int) (j10 ^ (j10 >>> 32))) ^ ((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "PrimesInstant{elapsedRealtimeMs=" + this.zza + ", uptimeMillis=" + this.zzb + "}";
    }

    @Override
    public final long zza() {
        return this.zza;
    }

    @Override
    public final long zzb() {
        return this.zzb;
    }
}

package com.google.android.gms.internal.measurement;

final class zzig extends zzif {
    private final Object zza;

    public zzig(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzig) {
            return this.zza.equals(((zzig) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza + ")";
    }

    @Override
    public final Object zza() {
        return this.zza;
    }

    @Override
    public final boolean zzb() {
        return true;
    }
}

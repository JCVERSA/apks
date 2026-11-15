package com.google.android.gms.internal.ads;

import defpackage.m2i;
import defpackage.v2i;

final class zzfub extends zzftu {
    private final Object zza;

    public zzfub(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzfub) {
            return this.zza.equals(((zzfub) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza.toString() + ")";
    }

    @Override
    public final zzftu zza(m2i m2iVar) {
        Object objApply = m2iVar.apply(this.zza);
        v2i.c(objApply, "the Function passed to Optional.transform() must not return null.");
        return new zzfub(objApply);
    }

    @Override
    public final Object zzb(Object obj) {
        return this.zza;
    }
}

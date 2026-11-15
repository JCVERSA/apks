package com.google.android.libraries.places.internal;

import com.google.android.gms.tasks.CancellationTokenSource;

final class zzky extends zzld {
    private final CancellationTokenSource zza;
    private final String zzb;

    zzky(CancellationTokenSource cancellationTokenSource, String str) {
        this.zza = cancellationTokenSource;
        if (str == null) {
            throw new NullPointerException("Null query");
        }
        this.zzb = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzld) {
            zzld zzldVar = (zzld) obj;
            if (this.zza.equals(zzldVar.zza()) && this.zzb.equals(zzldVar.zzb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode();
    }

    public final String toString() {
        return "AutocompleteRequest{source=" + this.zza.toString() + ", query=" + this.zzb + "}";
    }

    @Override
    public final CancellationTokenSource zza() {
        return this.zza;
    }

    @Override
    public final String zzb() {
        return this.zzb;
    }
}

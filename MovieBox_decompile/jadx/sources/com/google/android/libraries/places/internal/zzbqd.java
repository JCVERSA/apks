package com.google.android.libraries.places.internal;

final class zzbqd extends zzbpz {
    private zzbqd() {
        throw null;
    }

    @Override
    public final void zza(zzbqe zzbqeVar, int i10) {
        synchronized (zzbqeVar) {
            zzbqeVar.zze = 0;
        }
    }

    @Override
    public final boolean zzb(zzbqe zzbqeVar, int i10, int i11) {
        synchronized (zzbqeVar) {
            try {
                if (zzbqeVar.zze != 0) {
                    return false;
                }
                zzbqeVar.zze = -1;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    zzbqd(zzbqc zzbqcVar) {
        super(null);
    }
}

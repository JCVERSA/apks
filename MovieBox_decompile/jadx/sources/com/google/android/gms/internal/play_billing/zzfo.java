package com.google.android.gms.internal.play_billing;

final class zzfo extends zzfq {
    zzfo(zzfn zzfnVar) {
        super(null);
    }

    @Override
    final void zza(Object obj, long j10) {
        ((zzfc) zzhn.zzf(obj, j10)).zzb();
    }

    @Override
    final void zzb(Object obj, Object obj2, long j10) {
        zzfc zzfcVarZzd = (zzfc) zzhn.zzf(obj, j10);
        zzfc zzfcVar = (zzfc) zzhn.zzf(obj2, j10);
        int size = zzfcVarZzd.size();
        int size2 = zzfcVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzfcVarZzd.zzc()) {
                zzfcVarZzd = zzfcVarZzd.zzd(size2 + size);
            }
            zzfcVarZzd.addAll(zzfcVar);
        }
        if (size > 0) {
            zzfcVar = zzfcVarZzd;
        }
        zzhn.zzs(obj, j10, zzfcVar);
    }

    private zzfo() {
        super(null);
    }
}

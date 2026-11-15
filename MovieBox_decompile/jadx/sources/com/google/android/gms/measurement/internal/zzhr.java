package com.google.android.gms.measurement.internal;

import java.util.List;

final class zzhr implements com.google.android.gms.internal.measurement.zzv {
    private final zzhl zza;

    zzhr(zzhl zzhlVar) {
        this.zza = zzhlVar;
    }

    @Override
    public final void zza(com.google.android.gms.internal.measurement.zzs zzsVar, String str, List<String> list, boolean z10, boolean z11) {
        zzgq zzgqVarZzc;
        int i10 = zzht.zza[zzsVar.ordinal()];
        if (i10 == 1) {
            zzgqVarZzc = this.zza.zzj().zzc();
        } else if (i10 != 2) {
            if (i10 != 3) {
                zzgqVarZzc = i10 != 4 ? this.zza.zzj().zzo() : this.zza.zzj().zzp();
            } else if (z10) {
                zzgqVarZzc = this.zza.zzj().zzw();
            } else {
                zzgqVarZzc = !z11 ? this.zza.zzj().zzv() : this.zza.zzj().zzu();
            }
        } else if (z10) {
            zzgqVarZzc = this.zza.zzj().zzn();
        } else {
            zzgqVarZzc = !z11 ? this.zza.zzj().zzm() : this.zza.zzj().zzg();
        }
        int size = list.size();
        if (size == 1) {
            zzgqVarZzc.zza(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzgqVarZzc.zza(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzgqVarZzc.zza(str);
        } else {
            zzgqVarZzc.zza(str, list.get(0), list.get(1), list.get(2));
        }
    }
}

package com.google.android.gms.internal.play_billing;

import java.util.AbstractMap;

final class zzam extends zzaf {
    final zzan zza;

    zzam(zzan zzanVar) {
        this.zza = zzanVar;
    }

    @Override
    public final Object get(int i10) {
        zzx.zza(i10, this.zza.zzc, "index");
        zzan zzanVar = this.zza;
        int i11 = i10 + i10;
        Object obj = zzanVar.zzb[i11];
        obj.getClass();
        Object obj2 = zzanVar.zzb[i11 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override
    public final int size() {
        return this.zza.zzc;
    }

    @Override
    public final boolean zzf() {
        return true;
    }
}

package com.google.android.gms.internal.measurement;

import java.io.IOException;

final class zzmm extends zzmk<zzmj, zzmj> {
    zzmm() {
    }

    @Override
    final boolean zza(zzlr zzlrVar) {
        return false;
    }

    @Override
    final int zzb(zzmj zzmjVar) {
        return zzmjVar.zzb();
    }

    @Override
    final zzmj zzc(Object obj) {
        zzmj zzmjVar = ((zzjt) obj).zzb;
        if (zzmjVar != zzmj.zzc()) {
            return zzmjVar;
        }
        zzmj zzmjVarZzd = zzmj.zzd();
        zza(obj, zzmjVarZzd);
        return zzmjVarZzd;
    }

    @Override
    final zzmj zzd(Object obj) {
        return ((zzjt) obj).zzb;
    }

    @Override
    final zzmj zze(zzmj zzmjVar) {
        zzmj zzmjVar2 = zzmjVar;
        zzmjVar2.zze();
        return zzmjVar2;
    }

    @Override
    final void zzf(Object obj) {
        ((zzjt) obj).zzb.zze();
    }

    @Override
    final int zza(zzmj zzmjVar) {
        return zzmjVar.zza();
    }

    @Override
    final void zzb(zzmj zzmjVar, int i10, long j10) {
        zzmjVar.zza(i10 << 3, Long.valueOf(j10));
    }

    @Override
    final zzmj zza(zzmj zzmjVar, zzmj zzmjVar2) {
        zzmj zzmjVar3 = zzmjVar;
        zzmj zzmjVar4 = zzmjVar2;
        if (zzmj.zzc().equals(zzmjVar4)) {
            return zzmjVar3;
        }
        if (zzmj.zzc().equals(zzmjVar3)) {
            return zzmj.zza(zzmjVar3, zzmjVar4);
        }
        return zzmjVar3.zza(zzmjVar4);
    }

    @Override
    final void zzb(Object obj, zzmj zzmjVar) {
        zza(obj, zzmjVar);
    }

    @Override
    final void zzc(Object obj, zzmj zzmjVar) {
        zza(obj, zzmjVar);
    }

    @Override
    final void zzb(zzmj zzmjVar, zznb zznbVar) throws IOException {
        zzmjVar.zzb(zznbVar);
    }

    @Override
    final zzmj zza() {
        return zzmj.zzd();
    }

    @Override
    final void zza(zzmj zzmjVar, int i10, int i11) {
        zzmjVar.zza((i10 << 3) | 5, Integer.valueOf(i11));
    }

    @Override
    final void zza(zzmj zzmjVar, int i10, long j10) {
        zzmjVar.zza((i10 << 3) | 1, Long.valueOf(j10));
    }

    @Override
    final void zza(zzmj zzmjVar, int i10, zzmj zzmjVar2) {
        zzmjVar.zza((i10 << 3) | 3, zzmjVar2);
    }

    @Override
    final void zza(zzmj zzmjVar, int i10, zzik zzikVar) {
        zzmjVar.zza((i10 << 3) | 2, zzikVar);
    }

    private static void zza(Object obj, zzmj zzmjVar) {
        ((zzjt) obj).zzb = zzmjVar;
    }

    @Override
    final void zza(zzmj zzmjVar, zznb zznbVar) throws IOException {
        zzmjVar.zza(zznbVar);
    }
}

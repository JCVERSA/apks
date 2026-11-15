package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzv;
import defpackage.eff;
import defpackage.wrh;

final class zzdth extends zzblk {
    final Object zza;
    final String zzb;
    final long zzc;
    final wrh zzd;
    final eff zze;
    final t4 zzf;

    public zzdth(t4 t4Var, Object obj, String str, long j, wrh wrhVar, eff effVar) {
        this.zza = obj;
        this.zzb = str;
        this.zzc = j;
        this.zzd = wrhVar;
        this.zze = effVar;
        this.zzf = t4Var;
    }

    @Override
    public final void zze(String str) {
        synchronized (this.zza) {
            t4 t4Var = this.zzf;
            String str2 = this.zzb;
            t4Var.v(str2, false, str, (int) (zzv.zzC().elapsedRealtime() - this.zzc));
            t4Var.l.b(str2, "error");
            t4Var.o.zzb(str2, "error");
            zzfgq zzfgqVar = t4Var.p;
            wrh wrhVar = this.zzd;
            wrhVar.zzc(str);
            wrhVar.zzg(false);
            zzfgqVar.zzc(wrhVar.zzm());
            this.zze.c(Boolean.FALSE);
        }
    }

    @Override
    public final void zzf() {
        synchronized (this.zza) {
            t4 t4Var = this.zzf;
            String str = this.zzb;
            t4Var.v(str, true, "", (int) (zzv.zzC().elapsedRealtime() - this.zzc));
            t4Var.l.d(str);
            t4Var.o.zzd(str);
            zzfgq zzfgqVar = t4Var.p;
            wrh wrhVar = this.zzd;
            wrhVar.zzg(true);
            zzfgqVar.zzc(wrhVar.zzm());
            this.zze.c(Boolean.TRUE);
        }
    }
}

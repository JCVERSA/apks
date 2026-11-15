package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.b0g;
import defpackage.goh;
import defpackage.izf;
import defpackage.n4g;
import defpackage.o9g;
import defpackage.r4g;
import defpackage.r8g;
import defpackage.u0g;
import defpackage.w1g;
import defpackage.wzf;
import defpackage.z0g;

public class zzeho extends zzbpd {
    private final izf zza;
    private final r8g zzb;
    private final b0g zzc;
    private final u0g zzd;
    private final z0g zze;
    private final r4g zzf;
    private final w1g zzg;
    private final o9g zzh;
    private final n4g zzi;
    private final wzf zzj;

    public zzeho(izf izfVar, r8g r8gVar, b0g b0gVar, u0g u0gVar, z0g z0gVar, r4g r4gVar, w1g w1gVar, o9g o9gVar, n4g n4gVar, wzf wzfVar) {
        this.zza = izfVar;
        this.zzb = r8gVar;
        this.zzc = b0gVar;
        this.zzd = u0gVar;
        this.zze = z0gVar;
        this.zzf = r4gVar;
        this.zzg = w1gVar;
        this.zzh = o9gVar;
        this.zzi = n4gVar;
        this.zzj = wzfVar;
    }

    @Override
    public final void zze() {
        this.zza.onAdClicked();
        this.zzb.zzdd();
    }

    @Override
    public final void zzf() {
        this.zzg.zzds(4);
    }

    @Override
    public final void zzg(int i) {
    }

    @Override
    public final void zzh(zze zzeVar) {
    }

    @Override
    public final void zzi(int i, String str) {
    }

    @Override
    @Deprecated
    public final void zzj(int i) throws RemoteException {
        zzk(new zze(i, "", "undefined", null, null));
    }

    @Override
    public final void zzk(zze zzeVar) {
        this.zzj.a(goh.c(8, zzeVar));
    }

    @Override
    public final void zzl(String str) {
        zzk(new zze(0, str, "undefined", null, null));
    }

    public void zzm() {
        this.zzc.zza();
        this.zzi.zzb();
    }

    @Override
    public final void zzn() {
        this.zzd.zzb();
    }

    @Override
    public final void zzo() {
        this.zze.zzt();
    }

    @Override
    public final void zzp() {
        this.zzg.zzdp();
        this.zzi.zza();
    }

    @Override
    public final void zzq(String str, String str2) {
        this.zzf.zzb(str, str2);
    }

    @Override
    public final void zzr(zzbgn zzbgnVar, String str) {
    }

    public void zzs(zzbvw zzbvwVar) {
    }

    public void zzt(zzbwa zzbwaVar) throws RemoteException {
    }

    public void zzu() throws RemoteException {
    }

    public void zzv() throws RemoteException {
    }

    public void zzw() {
        this.zzh.zza();
    }

    @Override
    public final void zzx() {
        this.zzh.zzb();
    }

    @Override
    public final void zzy() throws RemoteException {
        this.zzh.zzc();
    }

    public void zzz() {
        this.zzh.F();
    }
}

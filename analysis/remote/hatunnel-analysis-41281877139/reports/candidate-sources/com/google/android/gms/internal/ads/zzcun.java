package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import app.fast.ssh.ProtectedFastSSH;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzcun implements zzddp, zzdfd, zzdej, com.google.android.gms.ads.internal.client.zza, zzdef, zzdln, zzdgk {
    private final Context zza;
    private final Executor zzb;
    private final Executor zzc;
    private final ScheduledExecutorService zzd;
    private final zzflo zze;
    private final zzfld zzf;
    private final zzfta zzg;
    private final zzfmj zzh;
    private final zzbbd zzi;
    private final zzbkn zzj;
    private final WeakReference zzk;
    private final WeakReference zzl;
    private final zzdcs zzm;
    private final zzdge zzn;
    private final zzdck zzo;
    private final Set zzp;
    private boolean zzq;
    private final AtomicBoolean zzr = new AtomicBoolean();
    private zzcfw zzs = null;

    zzcun(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzflo zzfloVar, zzfld zzfldVar, zzfta zzftaVar, zzfmj zzfmjVar, View view, zzclm zzclmVar, zzbbd zzbbdVar, zzbkn zzbknVar, zzbkp zzbkpVar, zzfrg zzfrgVar, zzdcs zzdcsVar, zzdge zzdgeVar, zzdck zzdckVar, Set set) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = executor2;
        this.zzd = scheduledExecutorService;
        this.zze = zzfloVar;
        this.zzf = zzfldVar;
        this.zzg = zzftaVar;
        this.zzh = zzfmjVar;
        this.zzi = zzbbdVar;
        this.zzk = new WeakReference(view);
        this.zzl = new WeakReference(zzclmVar);
        this.zzj = zzbknVar;
        this.zzm = zzdcsVar;
        this.zzn = zzdgeVar;
        this.zzo = zzdckVar;
        this.zzp = set;
    }

    private final List zzA() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmZ)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            Context context = this.zza;
            if (com.google.android.gms.ads.internal.util.zzs.zzE(context)) {
                com.google.android.gms.ads.internal.zzt.zzc();
                Integer numZzu = com.google.android.gms.ads.internal.util.zzs.zzu(context);
                if (numZzu != null) {
                    int iMin = Math.min(numZzu.intValue(), 20);
                    Integer numValueOf = Integer.valueOf(iMin);
                    ArrayList arrayList = new ArrayList();
                    Iterator it = this.zzf.zzd.iterator();
                    while (it.hasNext()) {
                        Uri.Builder builderBuildUpon = Uri.parse((String) it.next()).buildUpon();
                        numValueOf.getClass();
                        arrayList.add(builderBuildUpon.appendQueryParameter(ProtectedFastSSH.s("懼"), Integer.toString(iMin)).toString());
                    }
                    return arrayList;
                }
            }
        }
        return this.zzf.zzd;
    }

    private final void zzy(int i, int i2) {
        View view;
        if (i <= 0 || !((view = (View) this.zzk.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            zzz();
        } else {
            this.zzd.schedule(new zzcuj(this, i, i2), i2, TimeUnit.MILLISECONDS);
        }
    }

    private final void zzz() {
        String strZzj;
        int i;
        zzfld zzfldVar = this.zzf;
        List list = zzfldVar.zzd;
        if (list == null || list.isEmpty()) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzpB)).booleanValue() && this.zzs == null) {
            this.zzs = com.google.android.gms.ads.internal.zzt.zzh().zzs().zzm(this.zzp, this.zze.zza.zza.zzg);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeB)).booleanValue()) {
            strZzj = this.zzi.zzb().zzj(this.zza, (View) this.zzk.get(), null);
        } else {
            strZzj = null;
        }
        if ((((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzbi)).booleanValue() && this.zze.zzb.zzb.zzh) || !((Boolean) zzblg.zzh.zze()).booleanValue()) {
            this.zzh.zza(this.zzg.zzb(this.zze, zzfldVar, false, strZzj, null, zzA(), this.zzo, this.zzs), this.zzn);
            return;
        }
        if (((Boolean) zzblg.zzg.zze()).booleanValue() && ((i = zzfldVar.zzb) == 1 || i == 2 || i == 5)) {
        }
        zzhcy.zzr((zzhcq) zzhcy.zzi(zzhcq.zzw(zzhcy.zza(null)), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzbM)).longValue(), TimeUnit.MILLISECONDS, this.zzd), new zzcuh(this, strZzj), this.zzb);
    }

    @Override
    public final void onAdClicked() {
        if (!(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzbi)).booleanValue() && this.zze.zzb.zzb.zzh) && ((Boolean) zzblg.zzd.zze()).booleanValue()) {
            zzhcy.zzr((zzhcq) zzhcy.zzg(zzhcq.zzw(this.zzj.zzb()), Throwable.class, zzcum.zza, zzcgj.zzh), new zzcug(this), this.zzb);
            return;
        }
        zzfmj zzfmjVar = this.zzh;
        zzfta zzftaVar = this.zzg;
        zzflo zzfloVar = this.zze;
        zzfld zzfldVar = this.zzf;
        zzfmjVar.zzb(zzftaVar.zza(zzfloVar, zzfldVar, zzfldVar.zzc), true == com.google.android.gms.ads.internal.zzt.zzh().zzt(this.zza) ? 2 : 1);
    }

    @Override
    public final void zzd(zzcch zzcchVar, String str, String str2) {
        zzfta zzftaVar = this.zzg;
        zzfmj zzfmjVar = this.zzh;
        zzfld zzfldVar = this.zzf;
        zzfmjVar.zza(zzftaVar.zzc(zzfldVar, zzfldVar.zzh, zzcchVar), null);
    }

    @Override
    public final void zzdK() {
    }

    @Override
    public final void zzdr() {
        if (this.zzr.compareAndSet(false, true)) {
            int iIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeK)).intValue();
            if (iIntValue > 0) {
                zzy(iIntValue, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeL)).intValue());
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeJ)).booleanValue()) {
                this.zzc.execute(new zzcui(this));
            } else {
                zzz();
            }
        }
    }

    @Override
    public final void zzds() {
    }

    @Override
    public final void zzdt() {
    }

    @Override
    public final void zze() {
        zzfta zzftaVar = this.zzg;
        zzflo zzfloVar = this.zze;
        zzfmj zzfmjVar = this.zzh;
        zzfld zzfldVar = this.zzf;
        zzfmjVar.zza(zzftaVar.zza(zzfloVar, zzfldVar, zzfldVar.zzg), null);
    }

    @Override
    public final void zzf() {
        zzfta zzftaVar = this.zzg;
        zzflo zzfloVar = this.zze;
        zzfmj zzfmjVar = this.zzh;
        zzfld zzfldVar = this.zzf;
        zzfmjVar.zza(zzftaVar.zza(zzfloVar, zzfldVar, zzfldVar.zzi), null);
    }

    @Override
    public final synchronized void zzg() {
        zzdcs zzdcsVar;
        if (this.zzq) {
            ArrayList arrayList = new ArrayList(zzA());
            zzfld zzfldVar = this.zzf;
            arrayList.addAll(zzfldVar.zzf);
            this.zzh.zza(this.zzg.zzb(this.zze, zzfldVar, true, null, null, arrayList, null, null), null);
        } else {
            zzfmj zzfmjVar = this.zzh;
            zzfta zzftaVar = this.zzg;
            zzflo zzfloVar = this.zze;
            zzfld zzfldVar2 = this.zzf;
            zzfmjVar.zza(zzftaVar.zza(zzfloVar, zzfldVar2, zzfldVar2.zzm), null);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeG)).booleanValue() && (zzdcsVar = this.zzm) != null) {
                List list = zzdcsVar.zzb().zzm;
                String strZzg = zzdcsVar.zzc().zzg();
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList2.add(zzfta.zzd((String) it.next(), ProtectedFastSSH.s("懽"), strZzg));
                }
                long jZzh = zzdcsVar.zzc().zzh();
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(zzfta.zzd((String) it2.next(), ProtectedFastSSH.s("懾"), Long.toString(jZzh, 10)));
                }
                zzfmjVar.zza(zzftaVar.zza(zzdcsVar.zza(), zzdcsVar.zzb(), arrayList3), null);
            }
            zzfmjVar.zza(zzftaVar.zza(zzfloVar, zzfldVar2, zzfldVar2.zzf), null);
        }
        this.zzq = true;
    }

    @Override
    public final void zzi() {
        zzfta zzftaVar = this.zzg;
        zzflo zzfloVar = this.zze;
        zzfmj zzfmjVar = this.zzh;
        zzfld zzfldVar = this.zzf;
        zzfmjVar.zza(zzftaVar.zza(zzfloVar, zzfldVar, zzfldVar.zzau), null);
    }

    @Override
    public final void zzj(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcl)).booleanValue()) {
            int i = zzeVar.zza;
            zzfld zzfldVar = this.zzf;
            ArrayList arrayList = new ArrayList();
            for (String str : zzfldVar.zzo) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 2);
                sb.append(ProtectedFastSSH.s("懿"));
                sb.append(i);
                arrayList.add(zzfta.zzd(str, ProtectedFastSSH.s("戀"), sb.toString()));
            }
            this.zzh.zza(this.zzg.zza(this.zze, zzfldVar, arrayList), null);
        }
    }

    @Override
    public final void zzk() {
        zzfld zzfldVar = this.zzf;
        if (zzfldVar.zze == 4) {
            this.zzh.zza(this.zzg.zza(this.zze, zzfldVar, zzfldVar.zzaA), null);
        }
    }

    final void zzl() {
        this.zzb.execute(new zzcul(this));
    }

    final void zzm(int i, int i2) {
        this.zzb.execute(new zzcuk(this, i, i2));
    }

    final void zzn(int i, int i2) {
        zzy(i - 1, i2);
    }

    final void zzo() {
        zzz();
    }

    final List zzp() {
        return zzA();
    }

    final Context zzq() {
        return this.zza;
    }

    final zzflo zzr() {
        return this.zze;
    }

    final zzfld zzs() {
        return this.zzf;
    }

    final zzfta zzt() {
        return this.zzg;
    }

    final zzfmj zzu() {
        return this.zzh;
    }

    final zzdge zzv() {
        return this.zzn;
    }

    final zzdck zzw() {
        return this.zzo;
    }

    final zzcfw zzx() {
        return this.zzs;
    }
}

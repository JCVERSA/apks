package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import app.fast.ssh.ProtectedFastSSH;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzcub {
    zzcas zza;
    zzcas zzb;
    private final Context zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;
    private final zzemm zze;
    private final zzdxl zzf;
    private final zzhdi zzg;
    private final Executor zzh;
    private final ScheduledExecutorService zzi;

    zzcub(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar, zzemm zzemmVar, zzdxl zzdxlVar, zzhdi zzhdiVar, zzhdi zzhdiVar2, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = context;
        this.zzd = zzgVar;
        this.zze = zzemmVar;
        this.zzf = zzdxlVar;
        this.zzg = zzhdiVar;
        this.zzh = zzhdiVar2;
        this.zzi = scheduledExecutorService;
    }

    public static boolean zzc(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlO));
    }

    private final ListenableFuture zzk(String str, InputEvent inputEvent, Random random) {
        try {
            if (!str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlO)) || this.zzd.zzx()) {
                return zzhcy.zza(str);
            }
            Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlP), String.valueOf(random.nextInt(Integer.MAX_VALUE)));
            if (inputEvent != null) {
                return (zzhcq) zzhcy.zzh((zzhcq) zzhcy.zzj(zzhcq.zzw(this.zze.zza()), new zzctv(this, builderBuildUpon, str, inputEvent), this.zzh), Throwable.class, new zzctw(this, builderBuildUpon), this.zzg);
            }
            builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlQ), ProtectedFastSSH.s("懲"));
            return zzhcy.zza(builderBuildUpon.toString());
        } catch (Exception e) {
            return zzhcy.zzc(e);
        }
    }

    public final void zza(String str, zzfte zzfteVar, Random random, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzhcy.zzr(zzhcy.zzi(zzk(str, this.zzf.zzb(), random), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlU)).intValue(), TimeUnit.MILLISECONDS, this.zzi), new zzctu(this, zzfteVar, str, zzvVar), this.zzg);
    }

    public final ListenableFuture zzb(String str, Random random) {
        return TextUtils.isEmpty(str) ? zzhcy.zza(str) : zzhcy.zzh(zzk(str, this.zzf.zzb(), random), Throwable.class, new zzcua(this, str), this.zzg);
    }

    final ListenableFuture zzd(String str, Throwable th) {
        this.zzg.zza(new zzctz(this, th));
        return zzhcy.zza(str);
    }

    final ListenableFuture zze(Uri.Builder builder, String str, InputEvent inputEvent, Integer num) {
        if (num.intValue() != 1) {
            builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlQ), ProtectedFastSSH.s("懵"));
            return zzhcy.zza(builder.toString());
        }
        Uri.Builder builderBuildUpon = builder.build().buildUpon();
        builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlR), ProtectedFastSSH.s("懳"));
        builderBuildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlQ), ProtectedFastSSH.s("懴"));
        if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlS))) {
            builderBuildUpon.authority((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlT));
        }
        return (zzhcq) zzhcy.zzj(zzhcq.zzw(this.zze.zzb(builderBuildUpon.build(), inputEvent)), new zzctx(builder), this.zzh);
    }

    final ListenableFuture zzf(Uri.Builder builder, Throwable th) {
        this.zzg.zza(new zzcty(this, th));
        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlQ), ProtectedFastSSH.s("懶"));
        return zzhcy.zza(builder.toString());
    }

    final void zzg(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlV)).booleanValue()) {
            zzcas zzcasVarZzc = zzcaq.zzc(this.zzc);
            this.zzb = zzcasVarZzc;
            zzcasVarZzc.zzh(th, ProtectedFastSSH.s("懷"));
        } else {
            zzcas zzcasVarZza = zzcaq.zza(this.zzc);
            this.zza = zzcasVarZza;
            zzcasVarZza.zzh(th, ProtectedFastSSH.s("懸"));
        }
    }

    final void zzh(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlV)).booleanValue()) {
            zzcas zzcasVarZzc = zzcaq.zzc(this.zzc);
            this.zzb = zzcasVarZzc;
            zzcasVarZzc.zzh(th, ProtectedFastSSH.s("懹"));
        } else {
            zzcas zzcasVarZza = zzcaq.zza(this.zzc);
            this.zza = zzcasVarZza;
            zzcasVarZza.zzh(th, ProtectedFastSSH.s("懺"));
        }
    }

    final Context zzi() {
        return this.zzc;
    }

    final zzhdi zzj() {
        return this.zzg;
    }
}

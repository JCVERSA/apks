package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzcfv {
    private final Object zza = new Object();
    private final com.google.android.gms.ads.internal.util.zzj zzb;
    private final zzcga zzc;
    private boolean zzd;
    private Context zze;
    private VersionInfoParcel zzf;
    private String zzg;
    private zzbjl zzh;
    private zzeaj zzi;
    private Boolean zzj;
    private final AtomicInteger zzk;
    private final AtomicInteger zzl;
    private final zzcfu zzm;
    private final Object zzn;
    private ListenableFuture zzo;
    private final AtomicBoolean zzp;
    private final AtomicBoolean zzq;

    public zzcfv() {
        com.google.android.gms.ads.internal.util.zzj zzjVar = new com.google.android.gms.ads.internal.util.zzj();
        this.zzb = zzjVar;
        this.zzc = new zzcga(com.google.android.gms.ads.internal.client.zzay.zzf(), zzjVar);
        this.zzd = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = null;
        this.zzk = new AtomicInteger(0);
        this.zzl = new AtomicInteger(0);
        this.zzm = new zzcfu(null);
        this.zzn = new Object();
        this.zzp = new AtomicBoolean();
        this.zzq = new AtomicBoolean(false);
    }

    final Context zzA() {
        return this.zze;
    }

    final VersionInfoParcel zzB() {
        return this.zzf;
    }

    final zzbjl zzC() {
        return this.zzh;
    }

    final AtomicBoolean zzD() {
        return this.zzp;
    }

    public final zzbjl zza() {
        zzbjl zzbjlVar;
        synchronized (this.zza) {
            zzbjlVar = this.zzh;
        }
        return zzbjlVar;
    }

    public final void zzb(Boolean bool) {
        synchronized (this.zza) {
            this.zzj = bool;
        }
    }

    public final Boolean zzc() {
        Boolean bool;
        synchronized (this.zza) {
            bool = this.zzj;
        }
        return bool;
    }

    public final void zzd() {
        this.zzm.zza();
    }

    public final boolean zze(boolean z) {
        return this.zzq.getAndSet(true);
    }

    public final void zzf(Context context, VersionInfoParcel versionInfoParcel, zzeaj zzeajVar) {
        zzbjl zzbjlVar;
        synchronized (this.zza) {
            if (!this.zzd) {
                this.zze = context.getApplicationContext();
                this.zzf = versionInfoParcel;
                com.google.android.gms.ads.internal.zzt.zzg().zzb(this.zzc);
                this.zzb.zza(this.zze);
                zzcaq.zzb(this.zze, this.zzf);
                this.zzi = zzeajVar;
                com.google.android.gms.ads.internal.zzt.zzm();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcN)).booleanValue()) {
                    zzbjlVar = new zzbjl();
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("巹"));
                    zzbjlVar = null;
                }
                this.zzh = zzbjlVar;
                if (zzbjlVar != null) {
                    zzcgm.zza(new zzcfr(this).zzb(), ProtectedFastSSH.s("巺"), zzcgj.zzh);
                }
                Context context2 = this.zze;
                if (PlatformVersion.isAtLeastO()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzjN)).booleanValue()) {
                        try {
                            zzy$$ExternalSyntheticApiModelOutline0.m((ConnectivityManager) context2.getSystemService(ProtectedFastSSH.s("巻")), new zzcfs(this));
                        } catch (RuntimeException e) {
                            String strS = ProtectedFastSSH.s("巼");
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj(strS, e);
                            this.zzp.set(true);
                        }
                    }
                }
                this.zzd = true;
                zzr();
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzpJ)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzc().zze(context, versionInfoParcel.afmaVersion);
    }

    public final Resources zzg() {
        if (this.zzf.isClientJar) {
            return this.zze.getResources();
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmz)).booleanValue()) {
                return com.google.android.gms.ads.internal.util.client.zzs.zzb(this.zze).getResources();
            }
            com.google.android.gms.ads.internal.util.client.zzs.zzb(this.zze).getResources();
            return null;
        } catch (com.google.android.gms.ads.internal.util.client.zzr e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(ProtectedFastSSH.s("巽"), e);
            return null;
        }
    }

    public final void zzh(Throwable th, String str) {
        zzcaq.zzb(this.zze, this.zzf).zzh(th, str);
    }

    public final void zzi(Throwable th, String str) {
        zzcaq.zzb(this.zze, this.zzf).zzi(th, str, ((Double) zzblq.zzf.zze()).floatValue());
    }

    public final void zzj(Throwable th, String str) {
        zzcaq.zzd(this.zze, this.zzf).zzh(th, str);
    }

    public final void zzk() {
        this.zzk.incrementAndGet();
    }

    public final void zzl() {
        this.zzk.decrementAndGet();
    }

    public final int zzm() {
        return this.zzk.get();
    }

    public final void zzn() {
        this.zzl.incrementAndGet();
    }

    public final int zzo() {
        return this.zzl.get();
    }

    public final com.google.android.gms.ads.internal.util.zzg zzp() {
        com.google.android.gms.ads.internal.util.zzj zzjVar;
        synchronized (this.zza) {
            zzjVar = this.zzb;
        }
        return zzjVar;
    }

    public final Context zzq() {
        return this.zze;
    }

    public final ListenableFuture zzr() {
        if (this.zze != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzdV)).booleanValue()) {
                synchronized (this.zzn) {
                    ListenableFuture listenableFuture = this.zzo;
                    if (listenableFuture != null) {
                        return listenableFuture;
                    }
                    ListenableFuture listenableFutureZzc = zzcgj.zza.zzc(new zzcft(this));
                    this.zzo = listenableFutureZzc;
                    return listenableFutureZzc;
                }
            }
        }
        return zzhcy.zza(new ArrayList());
    }

    public final zzcga zzs() {
        return this.zzc;
    }

    public final boolean zzt(Context context) {
        if (PlatformVersion.isAtLeastO()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzjN)).booleanValue()) {
                return this.zzp.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService(ProtectedFastSSH.s("巻"))).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final void zzu(String str) {
        this.zzg = str;
    }

    public final String zzv() {
        return this.zzg;
    }

    public final zzeaj zzw() {
        return this.zzi;
    }

    public final ActivityManager.MemoryInfo zzx() {
        return com.google.android.gms.ads.internal.util.client.zzf.zze(this.zze);
    }

    final ArrayList zzy() {
        Context contextZza = zzccf.zza(this.zze);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(contextZza).getPackageInfo(contextZza.getApplicationInfo().packageName, 4096);
            if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                for (int i = 0; i < packageInfo.requestedPermissions.length; i++) {
                    if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(packageInfo.requestedPermissions[i]);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    final Object zzz() {
        return this.zza;
    }
}

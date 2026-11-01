package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Locale;

public final class zzcby {
    private int zzA;
    private final String zzB;
    private boolean zzC;
    private int zza;
    private boolean zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private String zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;
    private int zzl;
    private double zzm;
    private boolean zzn;
    private String zzo;
    private String zzp;
    private final boolean zzq;
    private final boolean zzr;
    private final String zzs;
    private final boolean zzt;
    private final boolean zzu;
    private final boolean zzv;
    private final String zzw;
    private final String zzx;
    private float zzy;
    private int zzz;

    /* JADX WARN: Code duplicated, block: B:12:0x0072  */
    public zzcby(Context context) {
        ActivityInfo activityInfo;
        String string;
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        zzbjg.zza(context);
        zzb(context);
        zzc(context);
        zzd(context);
        Locale locale = Locale.getDefault();
        this.zzq = zze(packageManager, ProtectedFastSSH.s("崹")) != null;
        this.zzr = zze(packageManager, ProtectedFastSSH.s("崺")) != null;
        this.zzs = locale.getCountry();
        com.google.android.gms.ads.internal.zzt.zzc();
        com.google.android.gms.ads.internal.client.zzay.zza();
        this.zzt = com.google.android.gms.ads.internal.util.client.zzf.zzy();
        this.zzu = DeviceProperties.isLatchsky(context);
        this.zzv = DeviceProperties.isSidewinder(context);
        this.zzw = locale.getLanguage();
        ResolveInfo resolveInfoZze = zze(packageManager, ProtectedFastSSH.s("崻"));
        String strS = ProtectedFastSSH.s("崼");
        String string2 = null;
        if (resolveInfoZze == null || (activityInfo = resolveInfoZze.activityInfo) == null) {
            string = null;
        } else {
            try {
                PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(activityInfo.packageName, 0);
                if (packageInfo != null) {
                    int i = packageInfo.versionCode;
                    String str = activityInfo.packageName;
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 1 + String.valueOf(str).length());
                    sb.append(i);
                    sb.append(strS);
                    sb.append(str);
                    string = sb.toString();
                } else {
                    string = null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        this.zzx = string;
        try {
            PackageInfo packageInfo2 = Wrappers.packageManager(context).getPackageInfo(ProtectedFastSSH.s("崽"), 128);
            if (packageInfo2 != null) {
                int i2 = packageInfo2.versionCode;
                String str2 = packageInfo2.packageName;
                StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 1 + String.valueOf(str2).length());
                sb2.append(i2);
                sb2.append(strS);
                sb2.append(str2);
                string2 = sb2.toString();
            }
        } catch (Exception unused2) {
        }
        this.zzB = string2;
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return;
        }
        this.zzy = displayMetrics.density;
        this.zzz = displayMetrics.widthPixels;
        this.zzA = displayMetrics.heightPixels;
    }

    public zzcby(Context context, zzcbz zzcbzVar) {
        zzbjg.zza(context);
        zzb(context);
        zzc(context);
        zzd(context);
        this.zzo = Build.FINGERPRINT;
        this.zzp = Build.DEVICE;
        this.zzC = zzbkh.zza(context);
        this.zzq = zzcbzVar.zza;
        this.zzr = zzcbzVar.zzb;
        this.zzs = zzcbzVar.zzc;
        this.zzt = zzcbzVar.zzd;
        this.zzu = zzcbzVar.zze;
        this.zzv = zzcbzVar.zzf;
        this.zzw = zzcbzVar.zzg;
        this.zzx = zzcbzVar.zzh;
        this.zzB = zzcbzVar.zzi;
        this.zzy = zzcbzVar.zzl;
        this.zzz = zzcbzVar.zzm;
        this.zzA = zzcbzVar.zzn;
    }

    private final void zzb(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(ProtectedFastSSH.s("崾"));
        if (audioManager != null) {
            try {
                this.zza = audioManager.getMode();
                this.zzb = audioManager.isMusicActive();
                this.zzc = audioManager.isSpeakerphoneOn();
                this.zzd = audioManager.getStreamVolume(3);
                this.zze = audioManager.getRingerMode();
                this.zzf = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.zzh().zzh(th, ProtectedFastSSH.s("崿"));
            }
        }
        this.zza = -2;
        this.zzb = false;
        this.zzc = false;
        this.zzd = 0;
        this.zze = 2;
        this.zzf = 0;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0039  */
    private final void zzc(Context context) {
        int networkType;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(ProtectedFastSSH.s("嵀"));
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(ProtectedFastSSH.s("嵁"));
        this.zzg = telephonyManager.getNetworkOperator();
        if (PlatformVersion.isAtLeastR()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzjZ)).booleanValue()) {
                networkType = 0;
            } else {
                networkType = telephonyManager.getNetworkType();
            }
        } else {
            networkType = telephonyManager.getNetworkType();
        }
        this.zzi = networkType;
        this.zzj = telephonyManager.getPhoneType();
        this.zzh = -2;
        this.zzk = false;
        this.zzl = -1;
        com.google.android.gms.ads.internal.zzt.zzc();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(context, ProtectedFastSSH.s("嵂"))) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.zzh = activeNetworkInfo.getType();
                this.zzl = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                this.zzh = -1;
            }
            this.zzk = connectivityManager.isActiveNetworkMetered();
        }
    }

    private final void zzd(Context context) {
        IntentFilter intentFilter = new IntentFilter(ProtectedFastSSH.s("嵃"));
        Intent intentRegisterReceiver = (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmF)).booleanValue() || Build.VERSION.SDK_INT < 33) ? context.registerReceiver(null, intentFilter) : zzy$$ExternalSyntheticApiModelOutline0.m(context, (BroadcastReceiver) null, intentFilter, 4);
        if (intentRegisterReceiver == null) {
            this.zzm = -1.0d;
            this.zzn = false;
        } else {
            int intExtra = intentRegisterReceiver.getIntExtra(ProtectedFastSSH.s("嵄"), -1);
            this.zzm = intentRegisterReceiver.getIntExtra(ProtectedFastSSH.s("嵅"), -1) / intentRegisterReceiver.getIntExtra(ProtectedFastSSH.s("嵆"), -1);
            this.zzn = intExtra == 2 || intExtra == 5;
        }
    }

    private static ResolveInfo zze(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent(ProtectedFastSSH.s("嵇"), Uri.parse(str)), 65536);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(th, ProtectedFastSSH.s("嵈"));
            return null;
        }
    }

    public final zzcbz zza() {
        return new zzcbz(this.zza, this.zzq, this.zzr, this.zzg, this.zzs, this.zzt, this.zzu, this.zzv, this.zzb, this.zzc, this.zzw, this.zzx, this.zzB, this.zzd, this.zzh, this.zzi, this.zzj, this.zze, this.zzf, this.zzy, this.zzz, this.zzA, this.zzm, this.zzn, this.zzk, this.zzl, this.zzo, this.zzC, this.zzp);
    }
}

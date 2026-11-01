package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import androidx.core.util.HalfKt$$ExternalSyntheticApiModelOutline0;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.material.chip.Chip$$ExternalSyntheticApiModelOutline0;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentRequestParameters;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

final class zzp {
    private final zzn zza;
    private final Activity zzb;
    private final ConsentDebugSettings zzc;
    private final ConsentRequestParameters zzd;

    zzp(zzn zznVar, Activity activity, ConsentDebugSettings consentDebugSettings, ConsentRequestParameters consentRequestParameters, zzo zzoVar) {
        this.zza = zznVar;
        this.zzb = activity;
        this.zzc = consentDebugSettings;
        this.zzd = consentRequestParameters;
    }

    static zzcl zza(zzp zzpVar) throws zzg {
        Bundle bundle;
        List list;
        List list2;
        PackageInfo packageInfo;
        zzcl zzclVar = new zzcl();
        String strZza = zzpVar.zzd.zza();
        if (TextUtils.isEmpty(strZza)) {
            try {
                zzn zznVar = zzpVar.zza;
                bundle = zzn.zza(zznVar).getPackageManager().getApplicationInfo(zzn.zza(zznVar).getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            if (bundle != null) {
                strZza = bundle.getString(ProtectedFastSSH.s("聜"));
            }
            if (TextUtils.isEmpty(strZza)) {
                throw new zzg(3, ProtectedFastSSH.s("聞"));
            }
        }
        zzclVar.zza = strZza;
        ConsentDebugSettings consentDebugSettings = zzpVar.zzc;
        if (consentDebugSettings.isTestDevice()) {
            ArrayList arrayList = new ArrayList();
            int debugGeography = consentDebugSettings.getDebugGeography();
            if (debugGeography == 1) {
                arrayList.add(zzcg.zzc);
            } else if (debugGeography == 2) {
                arrayList.add(zzcg.zzf);
            } else if (debugGeography == 3) {
                arrayList.add(zzcg.zzd);
            } else if (debugGeography == 4) {
                arrayList.add(zzcg.zze);
            }
            arrayList.add(zzcg.zzg);
            list = arrayList;
        } else {
            list = Collections.EMPTY_LIST;
        }
        zzclVar.zzj = list;
        zzn zznVar2 = zzpVar.zza;
        zzclVar.zzf = zzn.zzb(zznVar2).zzc();
        zzclVar.zze = Boolean.valueOf(zzpVar.zzd.isTagForUnderAgeOfConsent());
        zzclVar.zzd = Locale.getDefault().toLanguageTag();
        zzch zzchVar = new zzch();
        zzchVar.zzb = Integer.valueOf(Build.VERSION.SDK_INT);
        zzchVar.zza = Build.MODEL;
        zzchVar.zzc = 2;
        zzclVar.zzc = zzchVar;
        Configuration configuration = zzn.zza(zznVar2).getResources().getConfiguration();
        zzn.zza(zznVar2).getResources().getConfiguration();
        zzcj zzcjVar = new zzcj();
        zzcjVar.zza = Integer.valueOf(configuration.screenWidthDp);
        zzcjVar.zzb = Integer.valueOf(configuration.screenHeightDp);
        zzcjVar.zzc = Double.valueOf(zzn.zza(zznVar2).getResources().getDisplayMetrics().density);
        if (Build.VERSION.SDK_INT < 28) {
            list2 = Collections.EMPTY_LIST;
        } else {
            Activity activity = zzpVar.zzb;
            Window window = activity == null ? null : activity.getWindow();
            View decorView = window == null ? null : window.getDecorView();
            WindowInsets rootWindowInsets = decorView == null ? null : decorView.getRootWindowInsets();
            DisplayCutout displayCutoutM138m = rootWindowInsets == null ? null : HalfKt$$ExternalSyntheticApiModelOutline0.m138m(rootWindowInsets);
            if (displayCutoutM138m == null) {
                list2 = Collections.EMPTY_LIST;
            } else {
                zzy$$ExternalSyntheticApiModelOutline0.m$1(displayCutoutM138m);
                ArrayList arrayList2 = new ArrayList();
                for (Rect rect : zzy$$ExternalSyntheticApiModelOutline0.m508m(displayCutoutM138m)) {
                    if (rect != null) {
                        zzci zzciVar = new zzci();
                        zzciVar.zzb = Integer.valueOf(rect.left);
                        zzciVar.zzc = Integer.valueOf(rect.right);
                        zzciVar.zza = Integer.valueOf(rect.top);
                        zzciVar.zzd = Integer.valueOf(rect.bottom);
                        arrayList2.add(zzciVar);
                    }
                }
                list2 = arrayList2;
            }
        }
        zzcjVar.zzd = list2;
        zzclVar.zzg = zzcjVar;
        Application applicationZza = zzn.zza(zznVar2);
        try {
            packageInfo = zzn.zza(zznVar2).getPackageManager().getPackageInfo(applicationZza.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused2) {
            packageInfo = null;
        }
        zzcf zzcfVar = new zzcf();
        zzcfVar.zza = applicationZza.getPackageName();
        zzn zznVar3 = zzpVar.zza;
        CharSequence applicationLabel = zzn.zza(zznVar3).getPackageManager().getApplicationLabel(zzn.zza(zznVar3).getApplicationInfo());
        zzcfVar.zzb = applicationLabel != null ? applicationLabel.toString() : null;
        if (packageInfo != null) {
            zzcfVar.zzc = Long.toString(Build.VERSION.SDK_INT >= 28 ? Chip$$ExternalSyntheticApiModelOutline0.m(packageInfo) : packageInfo.versionCode);
        }
        zzclVar.zzh = zzcfVar;
        zzck zzckVar = new zzck();
        zzckVar.zza = ProtectedFastSSH.s("聝");
        zzclVar.zzi = zzckVar;
        zzclVar.zzb = zzpVar.zzd.getConsentSyncId();
        return zzclVar;
    }
}

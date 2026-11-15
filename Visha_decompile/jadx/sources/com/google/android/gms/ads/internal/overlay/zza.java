package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzs;
import defpackage.cye;
import defpackage.smg;

public final class zza {
    public static final boolean a(Context context, Uri uri, zzac zzacVar, zzaa zzaaVar) {
        int iZzn;
        try {
            iZzn = com.google.android.gms.ads.internal.zzv.zzq().zzn(context, uri);
            if (zzacVar != null) {
                zzacVar.zzg();
            }
        } catch (ActivityNotFoundException e) {
            String message = e.getMessage();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(message);
            iZzn = 6;
        }
        if (zzaaVar != null) {
            zzaaVar.zzb(iZzn);
        }
        return iZzn == 5;
    }

    public static final boolean zza(Context context, Intent intent, zzac zzacVar, @Nullable zzaa zzaaVar, boolean z, @Nullable smg smgVar, String str) {
        if (z) {
            return a(context, intent.getData(), zzacVar, zzaaVar);
        }
        try {
            com.google.android.gms.ads.internal.util.zze.zza("Launching an intent: " + intent.toURI());
            if (((Boolean) zzbd.zzc().b(cye.fd)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzY(context, intent, smgVar, str);
            } else {
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzU(context, intent);
            }
            if (zzacVar != null) {
                zzacVar.zzg();
            }
            if (zzaaVar != null) {
                zzaaVar.zza(true);
            }
            return true;
        } catch (ActivityNotFoundException e) {
            String message = e.getMessage();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(message);
            if (zzaaVar != null) {
                zzaaVar.zza(false);
            }
            return false;
        }
    }

    public static final boolean zzb(Context context, @Nullable zzc zzcVar, zzac zzacVar, @Nullable zzaa zzaaVar, @Nullable smg smgVar, String str) {
        int i = 0;
        if (zzcVar == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("No intent data for launcher overlay.");
            return false;
        }
        cye.a(context);
        Intent intent = zzcVar.zzh;
        if (intent != null) {
            return zza(context, intent, zzacVar, zzaaVar, zzcVar.zzj, smgVar, str);
        }
        Intent intent2 = new Intent();
        String str2 = zzcVar.zzb;
        if (TextUtils.isEmpty(str2)) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Open GMSG did not contain a URL.");
            return false;
        }
        String str3 = zzcVar.zzc;
        if (TextUtils.isEmpty(str3)) {
            intent2.setData(Uri.parse(str2));
        } else {
            intent2.setDataAndType(Uri.parse(str2), str3);
        }
        intent2.setAction("android.intent.action.VIEW");
        String str4 = zzcVar.zzd;
        if (!TextUtils.isEmpty(str4)) {
            intent2.setPackage(str4);
        }
        String str5 = zzcVar.zze;
        if (!TextUtils.isEmpty(str5)) {
            String[] strArrSplit = str5.split("/", 2);
            if (strArrSplit.length < 2) {
                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse component name from open GMSG: ".concat(str5));
                return false;
            }
            intent2.setClassName(strArrSplit[0], strArrSplit[1]);
        }
        String str6 = zzcVar.zzf;
        if (!TextUtils.isEmpty(str6)) {
            try {
                i = Integer.parseInt(str6);
            } catch (NumberFormatException unused) {
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzbd.zzc().b(cye.K4)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzbd.zzc().b(cye.J4)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzq();
                zzs.zzp(context, intent2);
            }
        }
        return zza(context, intent2, zzacVar, zzaaVar, zzcVar.zzj, smgVar, str);
    }
}

package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.a7f;
import defpackage.cff;
import defpackage.cye;
import defpackage.g8i;
import defpackage.ief;
import defpackage.im5;
import defpackage.j7f;
import defpackage.k7i;
import defpackage.mpc;
import defpackage.qxe;
import defpackage.rmg;
import defpackage.smg;
import defpackage.t6f;
import defpackage.vrh;
import defpackage.wrh;
import defpackage.x6f;
import defpackage.zef;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzf {
    public Context a;
    public long b = 0;

    public static final void b(smg smgVar, String str, long j) {
        if (smgVar != null) {
            if (((Boolean) zzbd.zzc().b(cye.Kc)).booleanValue()) {
                rmg rmgVarA = smgVar.a();
                rmgVarA.b("action", "lat_init");
                rmgVarA.b(str, Long.toString(j));
                rmgVarA.j();
            }
        }
    }

    public static im5 zza(zzf zzfVar, Long l, smg smgVar, wrh wrhVar, zzfgq zzfgqVar, JSONObject jSONObject) throws JSONException {
        boolean zOptBoolean = jSONObject.optBoolean("isSuccessful", false);
        if (zOptBoolean) {
            zzv.zzp().j().zzs(jSONObject.getString("appSettingsJson"));
            if (l != null) {
                b(smgVar, "cld_s", zzv.zzC().elapsedRealtime() - l.longValue());
            }
        }
        String strOptString = jSONObject.optString("errorMessage", "");
        if (!TextUtils.isEmpty(strOptString)) {
            wrhVar.zzc(strOptString);
        }
        wrhVar.zzg(zOptBoolean);
        zzfgqVar.zzc(wrhVar.zzm());
        return j8.h(null);
    }

    public final void a(Context context, VersionInfoParcel versionInfoParcel, boolean z, ief iefVar, String str, String str2, Runnable runnable, final zzfgq zzfgqVar, final smg smgVar, final Long l, boolean z2) {
        PackageInfo packageInfoF;
        if (zzv.zzC().elapsedRealtime() - this.b < 5000) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zzj("Not retrying to fetch app settings");
            return;
        }
        this.b = zzv.zzC().elapsedRealtime();
        if (iefVar != null && !TextUtils.isEmpty(iefVar.c())) {
            if (zzv.zzC().currentTimeMillis() - iefVar.a() <= ((Long) zzbd.zzc().b(cye.q4)).longValue() && iefVar.i()) {
                return;
            }
        }
        if (context == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zzj("Context not provided to fetch application settings");
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zzj("App settings could not be fetched. Required parameters missing");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.a = applicationContext;
        final wrh wrhVarA = vrh.a(context, 4);
        wrhVarA.zzi();
        j7f j7fVarA = zzv.zzg().a(this.a, versionInfoParcel, zzfgqVar);
        x6f x6fVar = a7f.b;
        t6f t6fVarA = j7fVarA.a("google.afma.config.fetchAppSettings", x6fVar, x6fVar);
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("app_id", str);
            } else if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("ad_unit_id", str2);
            }
            jSONObject.put("is_init", z);
            jSONObject.put("pn", context.getPackageName());
            qxe qxeVar = cye.a;
            jSONObject.put("experiment_ids", TextUtils.join(StringUtils.COMMA, zzbd.zza().a()));
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            if (((Boolean) zzbd.zzc().b(cye.E9)).booleanValue()) {
                jSONObject.put("inspector_enabled", z2);
            }
            try {
                ApplicationInfo applicationInfo = this.a.getApplicationInfo();
                if (applicationInfo != null && (packageInfoF = mpc.a(context).f(applicationInfo.packageName, 0)) != null) {
                    jSONObject.put("version", packageInfoF.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
            }
            im5 im5VarZzb = t6fVarA.zzb(jSONObject);
            k7i k7iVar = new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    return zzf.zza(this.zza, l, smgVar, wrhVarA, zzfgqVar, (JSONObject) obj);
                }
            };
            g8i g8iVar = zef.g;
            im5 im5VarN = j8.n(im5VarZzb, k7iVar, g8iVar);
            if (runnable != null) {
                im5VarZzb.addListener(runnable, g8iVar);
            }
            if (l != null) {
                im5VarZzb.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        zzf zzfVar = this.zza;
                        zzf.b(smgVar, "cld_r", zzv.zzC().elapsedRealtime() - l.longValue());
                    }
                }, g8iVar);
            }
            if (((Boolean) zzbd.zzc().b(cye.M7)).booleanValue()) {
                cff.b(im5VarN, "ConfigLoader.maybeFetchNewAppSettings");
            } else {
                cff.a(im5VarN, "ConfigLoader.maybeFetchNewAppSettings");
            }
        } catch (Exception e) {
            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zzh("Error requesting application settings", e);
            wrhVarA.f(e);
            wrhVarA.zzg(false);
            zzfgqVar.zzc(wrhVarA.zzm());
        }
    }

    public final void zzc(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable Runnable runnable, zzfgq zzfgqVar, @Nullable smg smgVar, @Nullable Long l, boolean z) {
        a(context, versionInfoParcel, true, null, str, null, runnable, zzfgqVar, smgVar, l, z);
    }

    public final void zze(Context context, VersionInfoParcel versionInfoParcel, String str, ief iefVar, zzfgq zzfgqVar, boolean z) {
        a(context, versionInfoParcel, false, iefVar, iefVar != null ? iefVar.b() : null, str, null, zzfgqVar, null, null, z);
    }
}

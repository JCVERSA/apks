package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzduc;
import defpackage.cye;
import defpackage.im5;
import defpackage.pv4;
import defpackage.zog;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzay {
    public final Object a = new Object();
    public String b = "";
    public String c = "";
    public boolean d = false;
    public boolean e = false;
    public String f = "";
    public zog g;

    public static final String c(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("User-Agent", com.google.android.gms.ads.internal.zzv.zzq().zzc(context, str2));
        im5 im5VarZzb = new zzbo(context).zzb(0, str, map, null);
        try {
            return (String) im5VarZzb.get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Y4)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String strValueOf = String.valueOf(str);
            int i = zze.zza;
            zzo.zzh("Interrupted while retrieving a response from: ".concat(strValueOf), e);
            im5VarZzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String strValueOf2 = String.valueOf(str);
            int i2 = zze.zza;
            zzo.zzh("Timeout while retrieving a response from: ".concat(strValueOf2), e2);
            im5VarZzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String strValueOf3 = String.valueOf(str);
            int i3 = zze.zza;
            zzo.zzh("Error retrieving a response from: ".concat(strValueOf3), e3);
            return null;
        }
    }

    public final void a(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzs.zza.post(new zzax(this, context, str, z, z2));
        } else {
            int i = zze.zza;
            zzo.zzi("Can not create dialog without Activity Context");
        }
    }

    public final boolean b(Context context, String str, String str2) {
        String strC = c(context, d(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.V4), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strC)) {
            int i = zze.zza;
            zzo.zze("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strC.trim());
            String strOptString = jSONObject.optString("gct");
            this.f = jSONObject.optString("status");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o9)).booleanValue()) {
                boolean z = "0".equals(this.f) || "2".equals(this.f);
                zzf(z);
                zzg zzgVarJ = com.google.android.gms.ads.internal.zzv.zzp().j();
                if (!z) {
                    str = "";
                }
                zzgVarJ.zzw(str);
            }
            synchronized (this.a) {
                this.c = strOptString;
            }
            return true;
        } catch (JSONException e) {
            int i2 = zze.zza;
            zzo.zzk("Fail to get in app preview response json.", e);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006a A[Catch: all -> 0x0029, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0013, B:7:0x0018, B:12:0x0034, B:14:0x003c, B:16:0x0051, B:19:0x0063, B:11:0x002b, B:20:0x006a, B:21:0x006c), top: B:26:0x000b, inners: #1, #2 }] */
    public final Uri d(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        synchronized (this.a) {
            if (TextUtils.isEmpty(this.b)) {
                com.google.android.gms.ads.internal.zzv.zzq();
                try {
                    str5 = new String(pv4.d(context.openFileInput("debug_signals_id.txt"), true), "UTF-8");
                } catch (IOException unused) {
                    int i = zze.zza;
                    zzo.zze("Error reading from internal storage.");
                    str5 = "";
                }
                this.b = str5;
                if (TextUtils.isEmpty(str5)) {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    this.b = UUID.randomUUID().toString();
                    com.google.android.gms.ads.internal.zzv.zzq();
                    String str6 = this.b;
                    try {
                        FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput("debug_signals_id.txt", 0);
                        fileOutputStreamOpenFileOutput.write(str6.getBytes("UTF-8"));
                        fileOutputStreamOpenFileOutput.close();
                    } catch (Exception e) {
                        int i2 = zze.zza;
                        zzo.zzh("Error writing to file in internal storage.", e);
                    }
                    str4 = this.b;
                } else {
                    str4 = this.b;
                }
            } else {
                str4 = this.b;
            }
            throw th;
        }
        builderBuildUpon.appendQueryParameter("linkedDeviceId", str4);
        builderBuildUpon.appendQueryParameter("adSlotPath", str2);
        builderBuildUpon.appendQueryParameter("afmaVersion", str3);
        return builderBuildUpon.build();
    }

    public final zog zza() {
        return this.g;
    }

    public final String zzb() {
        String str;
        synchronized (this.a) {
            str = this.c;
        }
        return str;
    }

    public final void zzc(Context context) {
        zog zogVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o9)).booleanValue() || (zogVar = this.g) == null) {
            return;
        }
        zogVar.i(new zzav(this, context), zzduc.DEBUG_MENU);
    }

    public final void zzd(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzV(context, d(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.U4), str, str2));
    }

    public final void zze(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = d(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.X4), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzM(context, str, builderBuildUpon.build().toString());
    }

    public final void zzf(boolean z) {
        synchronized (this.a) {
            try {
                this.e = z;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o9)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().j().zzx(z);
                    zog zogVar = this.g;
                    if (zogVar != null) {
                        zogVar.m(z);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzg(zog zogVar) {
        this.g = zogVar;
    }

    public final void zzh(boolean z) {
        synchronized (this.a) {
            this.d = z;
        }
    }

    public final boolean zzj(Context context, String str, String str2) {
        String strC = c(context, d(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.W4), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strC)) {
            int i = zze.zza;
            zzo.zze("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = "1".equals(new JSONObject(strC.trim()).optString("debug_mode"));
            zzf(zEquals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o9)).booleanValue()) {
                zzg zzgVarJ = com.google.android.gms.ads.internal.zzv.zzp().j();
                if (true != zEquals) {
                    str = "";
                }
                zzgVarJ.zzw(str);
            }
            return zEquals;
        } catch (JSONException e) {
            int i2 = zze.zza;
            zzo.zzk("Fail to get debug mode response json.", e);
            return false;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.a) {
            z = this.e;
        }
        return z;
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.a) {
            z = this.d;
        }
        return z;
    }

    public final boolean zzn(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzm()) {
            return false;
        }
        int i = zze.zza;
        zzo.zze("Sending troubleshooting signals to the server.");
        zze(context, str, str2, str3);
        return true;
    }
}

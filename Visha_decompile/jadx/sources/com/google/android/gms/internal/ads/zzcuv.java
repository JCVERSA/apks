package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdw;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cye;
import defpackage.hmh;
import defpackage.kmh;
import defpackage.oxg;
import java.util.List;
import org.json.JSONException;

public final class zzcuv extends zzdw {
    private final String zza;

    @Nullable
    private final String zzb;
    private final String zzc;

    @Nullable
    private final String zzd;
    private final List zze;
    private final long zzf;
    private final String zzg;

    @Nullable
    private final oxg zzh;
    private final Bundle zzi;
    private final double zzj;

    public zzcuv(@Nullable hmh hmhVar, String str, oxg oxgVar, @Nullable kmh kmhVar, String str2) {
        String string = null;
        this.zzb = hmhVar == null ? null : hmhVar.b0;
        this.zzc = str2;
        this.zzd = kmhVar == null ? null : kmhVar.b;
        if (("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) && hmhVar != null) {
            try {
                string = hmhVar.v.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.zza = string != null ? string : str;
        this.zze = oxgVar.c();
        this.zzh = oxgVar;
        this.zzj = hmhVar == null ? 0.0d : hmhVar.z0;
        this.zzf = zzv.zzC().currentTimeMillis() / 1000;
        if (!((Boolean) zzbd.zzc().b(cye.L6)).booleanValue() || kmhVar == null) {
            this.zzi = new Bundle();
        } else {
            this.zzi = kmhVar.k;
        }
        this.zzg = (!((Boolean) zzbd.zzc().b(cye.q9)).booleanValue() || kmhVar == null || TextUtils.isEmpty(kmhVar.i)) ? "" : kmhVar.i;
    }

    public final double zzc() {
        return this.zzj;
    }

    public final long zzd() {
        return this.zzf;
    }

    @Override
    public final Bundle zze() {
        return this.zzi;
    }

    @Override
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzv zzf() {
        oxg oxgVar = this.zzh;
        if (oxgVar != null) {
            return oxgVar.a();
        }
        return null;
    }

    @Override
    public final String zzg() {
        return this.zza;
    }

    @Override
    public final String zzh() {
        return this.zzc;
    }

    @Override
    @Nullable
    public final String zzi() {
        return this.zzb;
    }

    @Override
    public final List zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzg;
    }

    @Nullable
    public final String zzl() {
        return this.zzd;
    }
}

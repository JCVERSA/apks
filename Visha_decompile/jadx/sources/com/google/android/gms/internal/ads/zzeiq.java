package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cye;
import defpackage.eff;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzeiq extends zzbqz {
    private final String zza;
    private final zzbqx zzb;
    private final eff zzc;
    private final JSONObject zzd;
    private final long zze;
    private boolean zzf;

    public zzeiq(String str, zzbqx zzbqxVar, eff effVar, long j) {
        JSONObject jSONObject = new JSONObject();
        this.zzd = jSONObject;
        this.zzf = false;
        this.zzc = effVar;
        this.zza = str;
        this.zzb = zzbqxVar;
        this.zze = j;
        try {
            jSONObject.put("adapter_version", zzbqxVar.zzf().toString());
            jSONObject.put("sdk_version", zzbqxVar.zzg().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    public static synchronized void zzb(String str, eff effVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("name", str);
                jSONObject.put("signal_error", "Adapter failed to instantiate");
                if (((Boolean) zzbd.zzc().b(cye.M1)).booleanValue()) {
                    jSONObject.put("signal_error_code", 1);
                }
                effVar.c(jSONObject);
            } catch (JSONException unused) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void zzh(String str, int i) {
        try {
            if (this.zzf) {
                return;
            }
            try {
                JSONObject jSONObject = this.zzd;
                jSONObject.put("signal_error", str);
                if (((Boolean) zzbd.zzc().b(cye.N1)).booleanValue()) {
                    jSONObject.put("latency", zzv.zzC().elapsedRealtime() - this.zze);
                }
                if (((Boolean) zzbd.zzc().b(cye.M1)).booleanValue()) {
                    jSONObject.put("signal_error_code", i);
                }
            } catch (JSONException unused) {
            }
            this.zzc.c(this.zzd);
            this.zzf = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        zzh("Signal collection timeout.", 3);
    }

    public final synchronized void zzd() {
        if (this.zzf) {
            return;
        }
        try {
            if (((Boolean) zzbd.zzc().b(cye.M1)).booleanValue()) {
                this.zzd.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.zzc.c(this.zzd);
        this.zzf = true;
    }

    @Override
    public final synchronized void zze(String str) throws RemoteException {
        if (this.zzf) {
            return;
        }
        if (str == null) {
            zzf("Adapter returned null signals");
            return;
        }
        try {
            JSONObject jSONObject = this.zzd;
            jSONObject.put("signals", str);
            if (((Boolean) zzbd.zzc().b(cye.N1)).booleanValue()) {
                jSONObject.put("latency", zzv.zzC().elapsedRealtime() - this.zze);
            }
            if (((Boolean) zzbd.zzc().b(cye.M1)).booleanValue()) {
                jSONObject.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.zzc.c(this.zzd);
        this.zzf = true;
    }

    @Override
    public final synchronized void zzf(String str) throws RemoteException {
        zzh(str, 2);
    }

    @Override
    public final synchronized void zzg(zze zzeVar) throws RemoteException {
        zzh(zzeVar.zzb, 2);
    }
}

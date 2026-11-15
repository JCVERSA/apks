package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import com.google.android.gms.ads.nonagon.signalgeneration.zzbk;
import com.google.android.gms.internal.ads.zzbyf;
import com.google.android.gms.internal.ads.zzbym;
import com.google.android.gms.internal.ads.zzfgn;
import org.json.JSONException;
import org.json.JSONObject;

public final class rme implements v7i {
    public final im5 a;
    public final zzbym b;
    public final zzbyf c;
    public final wrh d;
    public final zzau e;

    public rme(zzau zzauVar, im5 im5Var, zzbym zzbymVar, zzbyf zzbyfVar, wrh wrhVar) {
        this.a = im5Var;
        this.b = zzbymVar;
        this.c = zzbyfVar;
        this.d = wrhVar;
        this.e = zzauVar;
    }

    @Override
    public final void zza(Throwable th) {
        String message = th.getMessage();
        if (((Boolean) zzbd.zzc().b(cye.M7)).booleanValue()) {
            zzv.zzp().w(th, "SignalGeneratorImpl.generateSignals");
        } else {
            zzv.zzp().x(th, "SignalGeneratorImpl.generateSignals");
        }
        zzfgn zzfgnVarZzs = zzau.zzs(this.a, this.b);
        if (((Boolean) sze.e.e()).booleanValue() && zzfgnVarZzs != null) {
            wrh wrhVar = this.d;
            wrhVar.f(th);
            wrhVar.zzg(false);
            zzfgnVarZzs.zza(wrhVar);
            zzfgnVarZzs.zzh();
        }
        zzbyf zzbyfVar = this.c;
        if (zzbyfVar == null) {
            return;
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                message = "Internal error. " + message;
            }
            zzbyfVar.zzb(message);
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzh("", e);
        }
    }

    @Override
    public final void zzb(Object obj) {
        zzbk zzbkVar = (zzbk) obj;
        zzfgn zzfgnVarZzs = zzau.zzs(this.a, this.b);
        this.e.zzG.set(true);
        if (!((Boolean) zzbd.zzc().b(cye.G7)).booleanValue()) {
            try {
                zzbyf zzbyfVar = this.c;
                if (zzbyfVar != null) {
                    zzbyfVar.zzb("QueryInfo generation has been disabled.");
                }
            } catch (RemoteException e) {
                String strConcat = "QueryInfo generation has been disabled.".concat(e.toString());
                int i = zze.zza;
                zzo.zzg(strConcat);
            }
            if (!((Boolean) sze.e.e()).booleanValue() || zzfgnVarZzs == null) {
                return;
            }
            wrh wrhVar = this.d;
            wrhVar.zzc("QueryInfo generation has been disabled.");
            wrhVar.zzg(false);
            zzfgnVarZzs.zza(wrhVar);
            zzfgnVarZzs.zzh();
            return;
        }
        try {
            if (zzbkVar == null) {
                zzbyf zzbyfVar2 = this.c;
                if (zzbyfVar2 != null) {
                    zzbyfVar2.zzc(null, null, null);
                }
                wrh wrhVar2 = this.d;
                wrhVar2.zzg(true);
                if (!((Boolean) sze.e.e()).booleanValue() || zzfgnVarZzs == null) {
                    return;
                }
                zzfgnVarZzs.zza(wrhVar2);
                zzfgnVarZzs.zzh();
                return;
            }
            try {
                if (TextUtils.isEmpty((!TextUtils.isEmpty(zzbkVar.zzc) ? new JSONObject(zzbkVar.zzc) : new JSONObject(zzbkVar.zzb)).optString("request_id", ""))) {
                    int i2 = zze.zza;
                    zzo.zzj("The request ID is empty in request JSON.");
                    zzbyf zzbyfVar3 = this.c;
                    if (zzbyfVar3 != null) {
                        zzbyfVar3.zzb("Internal error: request ID is empty in request JSON.");
                    }
                    wrh wrhVar3 = this.d;
                    wrhVar3.zzc("Request ID empty");
                    wrhVar3.zzg(false);
                    if (!((Boolean) sze.e.e()).booleanValue() || zzfgnVarZzs == null) {
                        return;
                    }
                    zzfgnVarZzs.zza(wrhVar3);
                    zzfgnVarZzs.zzh();
                    return;
                }
                Bundle bundle = zzbkVar.zzf;
                zzau zzauVar = this.e;
                if (zzauVar.zzu && bundle != null && bundle.getInt(zzauVar.zzw, -1) == -1) {
                    bundle.putInt(zzauVar.zzw, zzauVar.zzx.get());
                }
                if (zzauVar.zzt && bundle != null && TextUtils.isEmpty(bundle.getString(zzauVar.zzv))) {
                    if (TextUtils.isEmpty(zzauVar.zzz)) {
                        zzauVar.zzz = zzv.zzq().zzc(zzauVar.zzg, zzauVar.zzy.afmaVersion);
                    }
                    bundle.putString(zzauVar.zzv, zzauVar.zzz);
                }
                zzbyf zzbyfVar4 = this.c;
                if (zzbyfVar4 != null) {
                    if (TextUtils.isEmpty(zzbkVar.zzc)) {
                        zzbyfVar4.zzc(zzbkVar.zza, zzbkVar.zzb, bundle);
                    } else {
                        zzbyfVar4.zzc(zzbkVar.zza, zzbkVar.zzc, bundle);
                    }
                }
                this.d.zzg(true);
                if (!((Boolean) sze.e.e()).booleanValue() || zzfgnVarZzs == null) {
                    return;
                }
                zzfgnVarZzs.zza(this.d);
                zzfgnVarZzs.zzh();
            } catch (JSONException e2) {
                int i3 = zze.zza;
                zzo.zzj("Failed to create JSON object from the request string.");
                zzbyf zzbyfVar5 = this.c;
                if (zzbyfVar5 != null) {
                    zzbyfVar5.zzb("Internal error for request JSON: " + e2.toString());
                }
                wrh wrhVar4 = this.d;
                wrhVar4.f(e2);
                wrhVar4.zzg(false);
                zzv.zzp().x(e2, "SignalGeneratorImpl.generateSignals.onSuccess");
                if (!((Boolean) sze.e.e()).booleanValue() || zzfgnVarZzs == null) {
                    return;
                }
                zzfgnVarZzs.zza(wrhVar4);
                zzfgnVarZzs.zzh();
            }
        } catch (RemoteException e3) {
            wrh wrhVar5 = this.d;
            wrhVar5.f(e3);
            wrhVar5.zzg(false);
            int i4 = zze.zza;
            zzo.zzh("", e3);
            zzv.zzp().x(e3, "SignalGeneratorImpl.generateSignals.onSuccess");
        } finally {
            if (((Boolean) sze.e.e()).booleanValue() && zzfgnVarZzs != null) {
                zzfgnVarZzs.zza(this.d);
                zzfgnVarZzs.zzh();
            }
        }
    }
}

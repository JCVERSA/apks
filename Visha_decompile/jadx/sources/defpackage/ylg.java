package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.webkit.WebViewFeature;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzbk;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfww;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class ylg implements p2g, b1g, nzf, f9g {
    public final lmg b;
    public final xmg c;
    public final int d;

    public ylg(lmg lmgVar, xmg xmgVar, int i) {
        this.b = lmgVar;
        this.c = xmgVar;
        this.d = i;
    }

    @Override
    public final void A(zze zzeVar) {
        lmg lmgVar = this.b;
        lmgVar.b().put("action", "ftl");
        lmgVar.d("ftl", String.valueOf(zzeVar.zza));
        lmgVar.d("ed", zzeVar.zzc);
        if (((Boolean) zzbd.zzc().b(cye.h7)).booleanValue()) {
            lmgVar.d("emsg", zzeVar.zzb);
        }
        this.c.g(lmgVar.b());
    }

    public final void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (String str : bundle.keySet()) {
            long j = bundle.getLong(str);
            if (j >= 0) {
                this.b.d(str, String.valueOf(j));
            }
        }
    }

    public final void b(Bundle bundle, zzfww zzfwwVar) {
        if (!((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() || bundle == null) {
            return;
        }
        bundle.putLong(zzdqm.PUBLIC_API_CALLBACK.zza(), zzv.zzC().currentTimeMillis());
        lmg lmgVar = this.b;
        lmgVar.c();
        if (bundle.containsKey("ls")) {
            lmgVar.d("ls", true != bundle.getBoolean("ls") ? "0" : "1");
        }
        int size = zzfwwVar.size();
        for (int i = 0; i < size; i++) {
            amg amgVar = (amg) zzfwwVar.get(i);
            long j = bundle.getLong(amgVar.a().zza(), -1L);
            long j2 = bundle.getLong(amgVar.b().zza(), -1L);
            if (j > 0 && j2 > 0) {
                lmgVar.d(amgVar.c(), String.valueOf(j2 - j));
            }
        }
        a(bundle.getBundle("client_sig_latency_key"));
        a(bundle.getBundle("gms_sig_latency_key"));
        if (((Boolean) zzbd.zzc().b(cye.z7)).booleanValue()) {
            if (bundle.containsKey("sod_h")) {
                lmgVar.d("sod_h", true != bundle.getBoolean("sod_h") ? "0" : "1");
            }
            if (bundle.containsKey("cmr")) {
                lmgVar.d("cmr", String.valueOf(bundle.getInt("cmr")));
            }
        }
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
        this.b.f(zzbuyVar.zza);
    }

    @Override
    public final void w(vmh vmhVar) {
        this.b.e(vmhVar);
    }

    @Override
    public final void zze(zzbk zzbkVar) {
        String str;
        if (((Boolean) zzbd.zzc().b(cye.T6)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.z7)).booleanValue()) {
                this.b.b().put("sgw", String.valueOf(this.d));
            }
            if (zzbkVar == null) {
                lmg lmgVar = this.b;
                lmgVar.b().put("action", "sgs");
                lmgVar.b().put("request_id", "-1");
                this.c.g(lmgVar.b());
                return;
            }
            zzbuy zzbuyVar = zzbkVar.zzd;
            Bundle bundle = zzbkVar.zze;
            if (zzbuyVar != null) {
                b(zzbuyVar.zzm, amg.d);
            } else if (bundle != null && !bundle.isEmpty()) {
                b(bundle, amg.d);
            }
            try {
                JSONObject jSONObject = new JSONObject(TextUtils.isEmpty(zzbkVar.zzc) ? zzbkVar.zzb : zzbkVar.zzc);
                lmg lmgVar2 = this.b;
                lmgVar2.b().put("action", "sgs");
                Map mapB = lmgVar2.b();
                if (((Boolean) zzbd.zzc().b(cye.M9)).booleanValue()) {
                    try {
                        str = jSONObject.getJSONObject("extras").getBoolean("accept_3p_cookie") ? "1" : "0";
                    } catch (JSONException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        zzo.zzh("Error retrieving JSONObject from the requestJson, ", e);
                        str = "na";
                    }
                } else {
                    str = "na";
                }
                mapB.put("tpc", str);
                zzbuy zzbuyVar2 = zzbkVar.zzd;
                if (zzbuyVar2 != null) {
                    this.b.f(zzbuyVar2.zza);
                }
                this.c.g(this.b.b());
            } catch (JSONException unused) {
                lmg lmgVar3 = this.b;
                lmgVar3.b().put("action", "sgf");
                lmgVar3.b().put("sgf_reason", "request_invalid");
                this.c.g(lmgVar3.b());
            }
        }
    }

    @Override
    public final void zzf(String str) {
        if (((Boolean) zzbd.zzc().b(cye.T6)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.z7)).booleanValue()) {
                this.b.b().put("sgw", String.valueOf(this.d));
            }
            lmg lmgVar = this.b;
            lmgVar.b().put("action", "sgf");
            lmgVar.d("sgf_reason", str);
            this.c.g(lmgVar.b());
        }
    }

    @Override
    public final void zzt() {
        lmg lmgVar = this.b;
        lmgVar.b().put("action", "loaded");
        b(lmgVar.a(), amg.e);
        if (((Boolean) zzbd.zzc().b(cye.Ic)).booleanValue()) {
            lmgVar.b().put("mafe", true != WebViewFeature.isFeatureSupported(WebViewFeature.MUTE_AUDIO) ? "0" : "1");
        }
        this.c.g(lmgVar.b());
    }
}

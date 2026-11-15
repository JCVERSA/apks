package defpackage;

import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzcuv;
import com.google.android.gms.internal.ads.zzdtq;
import com.transsion.livecaption.constant.ICode;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class qog implements nzf, p2g, f1g {
    public final zog b;
    public final String c;
    public final String d;
    public zzcuv g;
    public zze h;
    public JSONObject l;
    public JSONObject m;
    public boolean n;
    public boolean o;
    public boolean p;
    public String i = "";
    public String j = "";
    public String k = "";
    public int e = 0;
    public zzdtq f = zzdtq.AD_REQUESTED;

    public qog(zog zogVar, enh enhVar, String str) {
        this.b = zogVar;
        this.d = str;
        this.c = enhVar.f;
    }

    public static JSONObject f(zze zzeVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", zzeVar.zzc);
        jSONObject.put("errorCode", zzeVar.zza);
        jSONObject.put("errorDescription", zzeVar.zzb);
        zze zzeVar2 = zzeVar.zzd;
        jSONObject.put("underlyingError", zzeVar2 == null ? null : f(zzeVar2));
        return jSONObject;
    }

    @Override
    public final void A(zze zzeVar) {
        zog zogVar = this.b;
        if (zogVar.r()) {
            this.f = zzdtq.AD_LOAD_FAILED;
            this.h = zzeVar;
            if (((Boolean) zzbd.zzc().b(cye.x9)).booleanValue()) {
                zogVar.g(this.c, this);
            }
        }
    }

    public final String a() {
        return this.d;
    }

    public final JSONObject b() throws JSONException {
        JSONObject jSONObjectH;
        IBinder iBinder;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ICode.CALL.CALL_KEY_STATE, this.f);
        jSONObject.put("format", hmh.a(this.e));
        if (((Boolean) zzbd.zzc().b(cye.x9)).booleanValue()) {
            jSONObject.put("isOutOfContext", this.n);
            if (this.n) {
                jSONObject.put("shown", this.o);
            }
        }
        zzcuv zzcuvVar = this.g;
        if (zzcuvVar != null) {
            jSONObjectH = h(zzcuvVar);
        } else {
            zze zzeVar = this.h;
            JSONObject jSONObjectH2 = null;
            if (zzeVar != null && (iBinder = zzeVar.zze) != null) {
                zzcuv zzcuvVar2 = (zzcuv) iBinder;
                jSONObjectH2 = h(zzcuvVar2);
                if (zzcuvVar2.zzj().isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(f(this.h));
                    jSONObjectH2.put("errors", jSONArray);
                }
            }
            jSONObjectH = jSONObjectH2;
        }
        jSONObject.put("responseInfo", jSONObjectH);
        return jSONObject;
    }

    public final void c() {
        this.n = true;
    }

    public final void d() {
        this.o = true;
    }

    public final boolean e() {
        return this.f != zzdtq.AD_REQUESTED;
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
        if (((Boolean) zzbd.zzc().b(cye.x9)).booleanValue()) {
            return;
        }
        zog zogVar = this.b;
        if (zogVar.r()) {
            zogVar.g(this.c, this);
        }
    }

    public final JSONObject h(zzcuv zzcuvVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", zzcuvVar.zzg());
        jSONObject.put("responseSecsSinceEpoch", zzcuvVar.zzd());
        jSONObject.put("responseId", zzcuvVar.zzi());
        if (((Boolean) zzbd.zzc().b(cye.q9)).booleanValue()) {
            String strZzk = zzcuvVar.zzk();
            if (!TextUtils.isEmpty(strZzk)) {
                String strValueOf = String.valueOf(strZzk);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                zzo.zze("Bidding data: ".concat(strValueOf));
                jSONObject.put("biddingData", new JSONObject(strZzk));
            }
        }
        if (!TextUtils.isEmpty(this.i)) {
            jSONObject.put("adRequestUrl", this.i);
        }
        if (!TextUtils.isEmpty(this.j)) {
            jSONObject.put("postBody", this.j);
        }
        if (!TextUtils.isEmpty(this.k)) {
            jSONObject.put("adResponseBody", this.k);
        }
        Object obj = this.l;
        if (obj != null) {
            jSONObject.put("adResponseHeaders", obj);
        }
        Object obj2 = this.m;
        if (obj2 != null) {
            jSONObject.put("transactionExtras", obj2);
        }
        if (((Boolean) zzbd.zzc().b(cye.t9)).booleanValue()) {
            jSONObject.put("hasExceededMemoryLimit", this.p);
        }
        JSONArray jSONArray = new JSONArray();
        for (zzv zzvVar : zzcuvVar.zzj()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("adapterClassName", zzvVar.zza);
            jSONObject2.put("latencyMillis", zzvVar.zzb);
            if (((Boolean) zzbd.zzc().b(cye.r9)).booleanValue()) {
                jSONObject2.put("credentials", zzbb.zzb().zzj(zzvVar.zzd));
            }
            zze zzeVar = zzvVar.zzc;
            jSONObject2.put("error", zzeVar == null ? null : f(zzeVar));
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    @Override
    public final void s(buf bufVar) {
        zog zogVar = this.b;
        if (zogVar.r()) {
            this.g = bufVar.c();
            this.f = zzdtq.AD_LOADED;
            if (((Boolean) zzbd.zzc().b(cye.x9)).booleanValue()) {
                zogVar.g(this.c, this);
            }
        }
    }

    @Override
    public final void w(vmh vmhVar) {
        zog zogVar = this.b;
        if (zogVar.r()) {
            umh umhVar = vmhVar.b;
            List list = umhVar.a;
            if (!list.isEmpty()) {
                this.e = ((hmh) list.get(0)).b;
            }
            kmh kmhVar = umhVar.b;
            String str = kmhVar.l;
            if (!TextUtils.isEmpty(str)) {
                this.i = str;
            }
            String str2 = kmhVar.m;
            if (!TextUtils.isEmpty(str2)) {
                this.j = str2;
            }
            JSONObject jSONObject = kmhVar.p;
            if (jSONObject.length() > 0) {
                this.m = jSONObject;
            }
            if (((Boolean) zzbd.zzc().b(cye.t9)).booleanValue()) {
                if (!zogVar.t()) {
                    this.p = true;
                    return;
                }
                String str3 = kmhVar.n;
                if (!TextUtils.isEmpty(str3)) {
                    this.k = str3;
                }
                JSONObject jSONObject2 = kmhVar.o;
                if (jSONObject2.length() > 0) {
                    this.l = jSONObject2;
                }
                JSONObject jSONObject3 = this.l;
                int length = jSONObject3 != null ? jSONObject3.toString().length() : 0;
                if (!TextUtils.isEmpty(this.k)) {
                    length += this.k.length();
                }
                zogVar.l(length);
            }
        }
    }
}

package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbnp;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzdvg;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class qzg implements kzg {
    public final ubg a;
    public final g8i b;
    public final zfg c;
    public final foh d;
    public final nig e;
    public final lmg f;

    public qzg(ubg ubgVar, g8i g8iVar, zfg zfgVar, foh fohVar, nig nigVar, lmg lmgVar) {
        this.a = ubgVar;
        this.b = g8iVar;
        this.c = zfgVar;
        this.d = fohVar;
        this.e = nigVar;
        this.f = lmgVar;
    }

    public static zcg c(qzg qzgVar, im5 im5Var, im5 im5Var2, vmh vmhVar, hmh hmhVar, JSONObject jSONObject) {
        ddg ddgVar = (ddg) im5Var.get();
        hig higVar = (hig) im5Var2.get();
        qxe qxeVar = cye.s2;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            qzgVar.f.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        }
        edg edgVarC = qzgVar.a.c(new puf(vmhVar, hmhVar, null), new tdg(ddgVar), new hcg(jSONObject, higVar));
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
            lmg lmgVar = qzgVar.f;
            lmgVar.a().putLong(zzdqm.RENDERING_AD_COMPONENT_CREATION_END.zza(), jCurrentTimeMillis);
            lmgVar.a().putLong(zzdqm.RENDERING_CONFIGURE_WEBVIEW_START.zza(), jCurrentTimeMillis);
        }
        edgVarC.j().b();
        edgVarC.k().a(higVar);
        edgVarC.i().c(ddgVar.f0());
        edgVarC.l().a(qzgVar.e, ddgVar.d0());
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            qzgVar.f.a().putLong(zzdqm.RENDERING_CONFIGURE_WEBVIEW_END.zza(), zzv.zzC().currentTimeMillis());
        }
        return edgVarC.h();
    }

    public static im5 d(qzg qzgVar, vmh vmhVar, hmh hmhVar, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return j8.g(new zzdvg(3));
        }
        int i = vmhVar.a.a.k;
        if (i <= 1) {
            return j8.m(qzgVar.g(vmhVar, hmhVar, jSONArray.getJSONObject(0)), new m2i() {
                @Override
                public final Object apply(Object obj) {
                    return Collections.singletonList(j8.h((zcg) obj));
                }
            }, qzgVar.b);
        }
        int length = jSONArray.length();
        if (((Boolean) zzbd.zzc().b(cye.t2)).booleanValue()) {
            qzgVar.f.d("nsl", String.valueOf(length));
        }
        qzgVar.d.c(Math.min(length, i));
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < length) {
                arrayList.add(qzgVar.g(vmhVar, hmhVar, jSONArray.getJSONObject(i2)));
            } else {
                arrayList.add(j8.g(new zzdvg(3)));
            }
        }
        return j8.h(arrayList);
    }

    public static im5 e(final qzg qzgVar, hmh hmhVar, final hig higVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) zzbd.zzc().b(cye.M8)).booleanValue() && d28.j()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", hmhVar.s.c);
        jSONObject2.put("sdk_params", jSONObject);
        return j8.n(higVar.g("google.afma.nativeAds.preProcessJson", jSONObject2), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return qzg.f(this.a, higVar, (JSONObject) obj);
            }
        }, qzgVar.b);
    }

    public static im5 f(qzg qzgVar, hig higVar, JSONObject jSONObject) throws zzbnp {
        qzgVar.d.b(j8.h(higVar));
        if (jSONObject.optBoolean("success")) {
            return j8.h(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzbnp("process json failed");
    }

    @Override
    public final im5 a(final vmh vmhVar, final hmh hmhVar) {
        im5 im5VarA = this.d.a();
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return qzg.e(this.a, hmhVar, (hig) obj);
            }
        };
        g8i g8iVar = this.b;
        return j8.n(j8.n(im5VarA, k7iVar, g8iVar), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return qzg.d(this.a, vmhVar, hmhVar, (JSONArray) obj);
            }
        }, g8iVar);
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        lmh lmhVar = hmhVar.s;
        return (lmhVar == null || lmhVar.c == null) ? false : true;
    }

    public final im5 g(final vmh vmhVar, final hmh hmhVar, final JSONObject jSONObject) {
        if (((Boolean) zzbd.zzc().b(cye.s2)).booleanValue()) {
            this.f.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_START.zza(), zzv.zzC().currentTimeMillis());
        }
        foh fohVar = this.d;
        zfg zfgVar = this.c;
        final im5 im5VarA = fohVar.a();
        final im5 im5VarB = zfgVar.b(vmhVar, hmhVar, jSONObject);
        return j8.c(im5VarA, im5VarB).a(new Callable() {
            @Override
            public final Object call() {
                return qzg.c(this.b, im5VarB, im5VarA, vmhVar, hmhVar, jSONObject);
            }
        }, this.b);
    }
}

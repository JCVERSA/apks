package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbft;
import com.google.android.gms.internal.ads.zzefy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class zfg {
    public final g8i a;
    public final ogg b;
    public final wgg c;

    public zfg(g8i g8iVar, ogg oggVar, wgg wggVar) {
        this.a = g8iVar;
        this.b = oggVar;
        this.c = wggVar;
    }

    public static ddg a(zfg zfgVar, im5 im5Var, im5 im5Var2, im5 im5Var3, im5 im5Var4, im5 im5Var5, JSONObject jSONObject, im5 im5Var6, im5 im5Var7, im5 im5Var8, im5 im5Var9, im5 im5Var10) {
        ddg ddgVar = (ddg) im5Var.get();
        ddgVar.p((List) im5Var2.get());
        ddgVar.m((zzbft) im5Var3.get());
        ddgVar.q((zzbft) im5Var4.get());
        ddgVar.j((zzbfm) im5Var5.get());
        ddgVar.s(ogg.j(jSONObject));
        ddgVar.l(ogg.i(jSONObject));
        ejf ejfVar = (ejf) im5Var6.get();
        if (ejfVar != null) {
            ddgVar.E(ejfVar);
            ddgVar.D(ejfVar.zzF());
            ddgVar.C(ejfVar.zzq());
        }
        ddgVar.Q().putAll((Bundle) im5Var7.get());
        ejf ejfVar2 = (ejf) im5Var8.get();
        if (ejfVar2 != null) {
            ddgVar.o(ejfVar2);
            ddgVar.F(ejfVar2.zzF());
        }
        if (!((Boolean) zzbd.zzc().b(cye.t5)).booleanValue() || c(jSONObject)) {
            ejf ejfVar3 = (ejf) im5Var9.get();
            if (ejfVar3 != null) {
                ddgVar.t(ejfVar3);
            }
        } else {
            ddgVar.u(im5Var9);
            ddgVar.x(new eff());
        }
        for (vgg vggVar : (List) im5Var10.get()) {
            if (vggVar.a != 1) {
                ddgVar.n(vggVar.b, vggVar.d);
            } else {
                ddgVar.z(vggVar.b, vggVar.c);
            }
        }
        return ddgVar;
    }

    public static final boolean c(JSONObject jSONObject) {
        return jSONObject.optInt("template_id") == 3;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a4  */
    public final im5 b(final vmh vmhVar, final hmh hmhVar, final JSONObject jSONObject) {
        im5 im5VarH;
        JSONObject jSONObjectOptJSONObject;
        im5 im5VarH2;
        JSONArray jSONArrayOptJSONArray;
        final im5 im5VarM = this.a.m(new Callable(this) {
            @Override
            public final Object call() throws zzefy {
                ddg ddgVar = new ddg();
                JSONObject jSONObject2 = jSONObject;
                ddgVar.B(jSONObject2.optInt("template_id", -1));
                ddgVar.k(jSONObject2.optString("custom_template_id"));
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                String strOptString = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("omid_partner_name") : null;
                vmh vmhVar2 = vmhVar;
                ddgVar.v(strOptString);
                enh enhVar = vmhVar2.a.a;
                if (!enhVar.g.contains(Integer.toString(ddgVar.P()))) {
                    throw new zzefy(1, "Invalid template ID: " + ddgVar.P());
                }
                if (ddgVar.P() == 3) {
                    if (ddgVar.a() == null) {
                        throw new zzefy(1, "No custom template id for custom template ad response.");
                    }
                    if (!enhVar.h.contains(ddgVar.a())) {
                        throw new zzefy(1, "Unexpected custom template id in the response.");
                    }
                }
                hmh hmhVar2 = hmhVar;
                ddgVar.y(jSONObject2.optDouble("rating", -1.0d));
                String strOptString2 = jSONObject2.optString("headline", null);
                if (hmhVar2.M) {
                    zzv.zzq();
                    strOptString2 = zzs.zzz() + " : " + strOptString2;
                }
                ddgVar.z("headline", strOptString2);
                ddgVar.z(TtmlNode.TAG_BODY, jSONObject2.optString(TtmlNode.TAG_BODY, null));
                ddgVar.z("call_to_action", jSONObject2.optString("call_to_action", null));
                ddgVar.z("store", jSONObject2.optString("store", null));
                ddgVar.z("price", jSONObject2.optString("price", null));
                ddgVar.z("advertiser", jSONObject2.optString("advertiser", null));
                return ddgVar;
            }
        });
        ogg oggVar = this.b;
        final im5 im5VarF = oggVar.f(jSONObject, "images");
        kmh kmhVar = vmhVar.b.b;
        final im5 im5VarG = oggVar.g(jSONObject, "images", hmhVar, kmhVar);
        final im5 im5VarE = oggVar.e(jSONObject, "secondary_image");
        final im5 im5VarE2 = oggVar.e(jSONObject, "app_icon");
        final im5 im5VarD = oggVar.d(jSONObject, "attribution");
        final im5 im5VarH3 = oggVar.h(jSONObject, hmhVar, kmhVar);
        if (!((Boolean) zzbd.zzc().b(cye.Zc)).booleanValue() || !jSONObject.has("video")) {
            im5VarH = j8.h(new Bundle());
            break;
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("video");
        if (jSONObjectOptJSONObject2.has("flags") && (jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("flags")) != null) {
            int i = 0;
            while (true) {
                if (i < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject3 == null || !jSONObjectOptJSONObject3.optString("key").equals("afma_video_player_type")) {
                        i++;
                    } else {
                        try {
                            if (Integer.parseInt(jSONObjectOptJSONObject3.optString(ES6Iterator.VALUE_PROPERTY)) == 3) {
                                ogg oggVar2 = this.b;
                                eff effVar = new eff();
                                j8.r(im5VarH3, new ngg(oggVar2, effVar), zef.f);
                                im5VarH = effVar;
                                break;
                            }
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
                im5VarH = j8.h(new Bundle());
                break;
            }
        }
        im5VarH = j8.h(new Bundle());
        break;
        final im5 im5VarA = this.c.a(jSONObject, "custom_assets");
        final ogg oggVar3 = this.b;
        if (jSONObject.optBoolean("enable_omid") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            final String strOptString = jSONObjectOptJSONObject.optString("omid_html");
            im5VarH2 = TextUtils.isEmpty(strOptString) ? j8.h(null) : j8.n(j8.h(null), new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    return ogg.c(oggVar3, strOptString, obj);
                }
            }, zef.f);
        } else {
            im5VarH2 = j8.h(null);
        }
        final im5 im5Var = im5VarH2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(im5VarM);
        arrayList.add(im5VarF);
        arrayList.add(im5VarG);
        arrayList.add(im5VarE);
        arrayList.add(im5VarE2);
        arrayList.add(im5VarD);
        arrayList.add(im5VarH3);
        arrayList.add(im5VarH);
        arrayList.add(im5VarA);
        if (!((Boolean) zzbd.zzc().b(cye.t5)).booleanValue() || c(jSONObject)) {
            arrayList.add(im5Var);
        }
        final im5 im5Var2 = im5VarH;
        return j8.a(arrayList).a(new Callable() {
            @Override
            public final Object call() {
                return zfg.a(this.b, im5VarM, im5VarF, im5VarE2, im5VarE, im5VarD, jSONObject, im5VarH3, im5Var2, im5VarG, im5Var, im5VarA);
            }
        }, this.a);
    }
}

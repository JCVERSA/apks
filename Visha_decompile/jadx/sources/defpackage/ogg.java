package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzev;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfg;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzebe;
import com.google.android.gms.internal.ads.zzefy;
import com.google.android.gms.internal.ads.zzfww;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ogg {
    public final Context a;
    public final vfg b;
    public final fre c;
    public final VersionInfoParcel d;
    public final zza e;
    public final o0 f;
    public final Executor g;
    public final zzbfi h;
    public final jhg i;
    public final ujg j;
    public final ScheduledExecutorService k;
    public final nig l;
    public final smg m;
    public final wth n;
    public final dwg o;
    public final zzebe p;
    public final inh q;

    public ogg(Context context, vfg vfgVar, fre freVar, VersionInfoParcel versionInfoParcel, zza zzaVar, o0 o0Var, Executor executor, enh enhVar, jhg jhgVar, ujg ujgVar, ScheduledExecutorService scheduledExecutorService, smg smgVar, wth wthVar, dwg dwgVar, nig nigVar, zzebe zzebeVar, inh inhVar) {
        this.a = context;
        this.b = vfgVar;
        this.c = freVar;
        this.d = versionInfoParcel;
        this.e = zzaVar;
        this.f = o0Var;
        this.g = executor;
        this.h = enhVar.i;
        this.i = jhgVar;
        this.j = ujgVar;
        this.k = scheduledExecutorService;
        this.m = smgVar;
        this.n = wthVar;
        this.o = dwgVar;
        this.l = nigVar;
        this.p = zzebeVar;
        this.q = inhVar;
    }

    public static zzbfd a(ogg oggVar, JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String strOptString = jSONObject.optString("text");
        Integer numQ = q(jSONObject, "bg_color");
        Integer numQ2 = q(jSONObject, "text_color");
        int iOptInt = jSONObject.optInt("text_size", -1);
        boolean zOptBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int iOptInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzbfd(strOptString, list, numQ, numQ2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject.optInt("presentation_ms", FlacTagCreator.DEFAULT_PADDING) + iOptInt2, oggVar.h.zze, zOptBoolean);
    }

    public static im5 b(ogg oggVar, zzr zzrVar, hmh hmhVar, kmh kmhVar, String str, String str2, Object obj) {
        ejf ejfVarA = oggVar.j.a(zzrVar, hmhVar, kmhVar);
        final dff dffVarE = dff.e(ejfVarA);
        kig kigVarB = oggVar.l.b();
        ejfVarA.zzN().d(kigVarB, kigVarB, kigVarB, kigVarB, kigVarB, false, null, new zzb(oggVar.a, null, null), null, null, oggVar.o, oggVar.n, oggVar.m, null, kigVarB, null, null, null, null);
        ejfVarA.zzag("/getNativeAdViewSignals", m3f.s);
        ejfVarA.zzag("/getNativeClickMeta", m3f.t);
        ejfVarA.zzN().c(true);
        ejfVarA.zzN().v(new gkf() {
            @Override
            public final void zza(boolean z, int i, String str3, String str4) {
                dff dffVar = dffVarE;
                if (z) {
                    dffVar.f();
                    return;
                }
                dffVar.d(new zzefy(1, "Image Web View failed to load. Error code: " + i + ", Description: " + str3 + ", Failing URL: " + str4));
            }
        });
        ejfVarA.zzae(str, str2, null);
        return dffVarE;
    }

    public static im5 c(ogg oggVar, String str, Object obj) throws zzcex {
        zzv.zzA();
        zza zzaVar = oggVar.e;
        o0 o0Var = oggVar.f;
        Context context = oggVar.a;
        kkf kkfVarA = kkf.a();
        zzebe zzebeVar = oggVar.p;
        inh inhVar = oggVar.q;
        smg smgVar = oggVar.m;
        ejf ejfVarA = mjf.a(context, kkfVarA, "native-omid", false, false, oggVar.c, null, oggVar.d, null, null, zzaVar, o0Var, null, null, zzebeVar, inhVar, smgVar);
        final dff dffVarE = dff.e(ejfVarA);
        ejfVarA.zzN().v(new gkf() {
            @Override
            public final void zza(boolean z, int i, String str2, String str3) {
                dffVarE.f();
            }
        });
        ejfVarA.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        return dffVarE;
    }

    public static final zzev i(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("mute");
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return r(jSONObjectOptJSONObject);
    }

    public static final List j(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mute");
        if (jSONObjectOptJSONObject == null) {
            return zzfww.zzn();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("reasons");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return zzfww.zzn();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            zzev zzevVarR = r(jSONArrayOptJSONArray.optJSONObject(i));
            if (zzevVarR != null) {
                arrayList.add(zzevVarR);
            }
        }
        return zzfww.zzl(arrayList);
    }

    public static im5 l(im5 im5Var, Object obj) {
        final Object obj2 = null;
        return j8.f(im5Var, Exception.class, new k7i(obj2) {
            @Override
            public final im5 zza(Object obj3) {
                zze.zzb("Error during loading assets.", (Exception) obj3);
                return j8.h(null);
            }
        }, zef.g);
    }

    public static im5 m(boolean z, final im5 im5Var, Object obj) {
        return z ? j8.n(im5Var, new k7i() {
            @Override
            public final im5 zza(Object obj2) {
                return obj2 != null ? im5Var : j8.g(new zzefy(1, "Retrieve required value in native ad response failed."));
            }
        }, zef.g) : l(im5Var, null);
    }

    public static Integer q(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt(GslbInterceptor.HEADER_KEY_GSLB), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static final zzev r(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("reason");
        String strOptString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new zzev(strOptString, strOptString2);
    }

    public final im5 d(JSONObject jSONObject, String str) {
        final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject == null) {
            return j8.h(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("images");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("image");
        if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject2 != null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
        }
        return m(jSONObjectOptJSONObject.optBoolean("require"), j8.m(o(jSONArrayOptJSONArray, false, true), new m2i() {
            @Override
            public final Object apply(Object obj) {
                return ogg.a(this.a, jSONObjectOptJSONObject, (List) obj);
            }
        }, this.g), null);
    }

    public final im5 e(JSONObject jSONObject, String str) {
        return n(jSONObject.optJSONObject(str), this.h.zzb);
    }

    public final im5 f(JSONObject jSONObject, String str) {
        zzbfi zzbfiVar = this.h;
        return o(jSONObject.optJSONArray("images"), zzbfiVar.zzb, zzbfiVar.zzd);
    }

    public final im5 g(JSONObject jSONObject, String str, final hmh hmhVar, final kmh kmhVar) {
        if (!((Boolean) zzbd.zzc().b(cye.fa)).booleanValue()) {
            return j8.h(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return j8.h(null);
        }
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
        if (jSONObjectOptJSONObject == null) {
            return j8.h(null);
        }
        final String strOptString = jSONObjectOptJSONObject.optString("base_url");
        final String strOptString2 = jSONObjectOptJSONObject.optString("html");
        final zzr zzrVarK = k(jSONObjectOptJSONObject.optInt("width", 0), jSONObjectOptJSONObject.optInt("height", 0));
        if (TextUtils.isEmpty(strOptString2)) {
            return j8.h(null);
        }
        final im5 im5VarN = j8.n(j8.h(null), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return ogg.b(this.a, zzrVarK, hmhVar, kmhVar, strOptString, strOptString2, obj);
            }
        }, zef.f);
        return j8.n(im5VarN, new k7i() {
            @Override
            public final im5 zza(Object obj) throws zzefy {
                if (((ejf) obj) != null) {
                    return im5VarN;
                }
                throw new zzefy(1, "Retrieve Web View from image ad response failed.");
            }
        }, zef.g);
    }

    public final im5 h(JSONObject jSONObject, hmh hmhVar, kmh kmhVar) {
        im5 im5VarD;
        JSONObject jSONObjectZzh = zzbs.zzh(jSONObject, "html_containers", "instream");
        if (jSONObjectZzh != null) {
            return p(jSONObjectZzh, hmhVar, kmhVar);
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("video");
        if (jSONObjectOptJSONObject == null) {
            return j8.h(null);
        }
        String strOptString = jSONObjectOptJSONObject.optString("vast_xml");
        boolean z = false;
        if (((Boolean) zzbd.zzc().b(cye.ea)).booleanValue() && jSONObjectOptJSONObject.has("html")) {
            z = true;
        }
        if (!TextUtils.isEmpty(strOptString)) {
            if (!z) {
                im5VarD = this.i.d(jSONObjectOptJSONObject);
            }
            return l(j8.o(im5VarD, ((Integer) zzbd.zzc().b(cye.Z3)).intValue(), TimeUnit.SECONDS, this.k), null);
        }
        if (!z) {
            int i = zze.zza;
            zzo.zzj("Required field 'vast_xml' or 'html' is missing");
            return j8.h(null);
        }
        im5VarD = p(jSONObjectOptJSONObject, hmhVar, kmhVar);
        return l(j8.o(im5VarD, ((Integer) zzbd.zzc().b(cye.Z3)).intValue(), TimeUnit.SECONDS, this.k), null);
    }

    public final zzr k(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return zzr.zzc();
            }
            i = 0;
        }
        return new zzr(this.a, new AdSize(i, i2));
    }

    public final im5 n(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return j8.h(null);
        }
        final String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            return j8.h(null);
        }
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        final int iOptInt = jSONObject.optInt("width", -1);
        final int iOptInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return j8.h(new zzbfg(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2));
        }
        return m(jSONObject.optBoolean("require"), j8.m(this.b.b(strOptString, dOptDouble, zOptBoolean), new m2i() {
            @Override
            public final Object apply(Object obj) {
                return new zzbfg(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2);
            }
        }, this.g), null);
    }

    public final im5 o(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return j8.h(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(n(jSONArray.optJSONObject(i), z));
        }
        return j8.m(j8.d(arrayList), new m2i() {
            @Override
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzbfg zzbfgVar : (List) obj) {
                    if (zzbfgVar != null) {
                        arrayList2.add(zzbfgVar);
                    }
                }
                return arrayList2;
            }
        }, this.g);
    }

    public final im5 p(JSONObject jSONObject, hmh hmhVar, kmh kmhVar) {
        final im5 im5VarE = this.i.e(jSONObject.optString("base_url"), jSONObject.optString("html"), hmhVar, kmhVar, k(jSONObject.optInt("width", 0), jSONObject.optInt("height", 0)));
        return j8.n(im5VarE, new k7i() {
            @Override
            public final im5 zza(Object obj) throws zzefy {
                ejf ejfVar = (ejf) obj;
                if (ejfVar == null || ejfVar.zzq() == null) {
                    throw new zzefy(1, "Retrieve video view in html5 ad response failed.");
                }
                return im5VarE;
            }
        }, zef.g);
    }
}

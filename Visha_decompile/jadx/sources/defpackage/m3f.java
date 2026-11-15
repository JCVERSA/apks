package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbw;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzauz;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class m3f {
    public static final n3f a = new n3f() {
        @Override
        public final void a(Object obj, Map map) {
            ujf ujfVar = (ujf) obj;
            n3f n3fVar = m3f.a;
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                int i2 = zze.zza;
                zzo.zzj("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] strArrSplit = str.split(StringUtils.COMMA);
            HashMap map2 = new HashMap();
            PackageManager packageManager = ujfVar.getContext().getPackageManager();
            for (String str2 : strArrSplit) {
                String[] strArrSplit2 = str2.split(ProcessInfo.SPLIT_NEW_VERSION, 2);
                Boolean boolValueOf = Boolean.valueOf(packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), 65536) != null);
                map2.put(str2, boolValueOf);
                zze.zza("/canOpenURLs;" + str2 + ProcessInfo.SPLIT_NEW_VERSION + boolValueOf);
            }
            ((p5f) ujfVar).zzd("openableURLs", map2);
        }
    };
    public static final n3f b = new n3f() {
        @Override
        public final void a(Object obj, Map map) {
            ujf ujfVar = (ujf) obj;
            n3f n3fVar = m3f.a;
            if (!((Boolean) zzbd.zzc().b(cye.p8)).booleanValue()) {
                int i2 = zze.zza;
                zzo.zzj("canOpenAppGmsgHandler disabled.");
                return;
            }
            String str = (String) map.get(TrackingKey.PACKAGE_NAME);
            if (TextUtils.isEmpty(str)) {
                int i3 = zze.zza;
                zzo.zzj("Package name missing in canOpenApp GMSG.");
                return;
            }
            HashMap map2 = new HashMap();
            Boolean boolValueOf = Boolean.valueOf(ujfVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
            map2.put(str, boolValueOf);
            zze.zza("/canOpenApp;" + str + ProcessInfo.SPLIT_NEW_VERSION + boolValueOf);
            ((p5f) ujfVar).zzd("openableApp", map2);
        }
    };
    public static final n3f c = new n3f() {
        @Override
        public final void a(Object obj, Map map) {
            m3f.b((ujf) obj, map);
        }
    };
    public static final n3f d = new e3f();
    public static final n3f e = new f3f();
    public static final n3f f = new n3f() {
        @Override
        public final void a(Object obj, Map map) {
            ujf ujfVar = (ujf) obj;
            n3f n3fVar = m3f.a;
            String str = (String) map.get("u");
            if (str == null) {
                int i2 = zze.zza;
                zzo.zzj("URL missing from httpTrack GMSG.");
            } else {
                vif vifVar = (vif) ujfVar;
                new zzbw(ujfVar.getContext(), ((bkf) ujfVar).zzm().afmaVersion, str, null, vifVar.zzD() != null ? vifVar.zzD().x0 : null).zzb();
            }
        }
    };
    public static final n3f g = new g3f();
    public static final n3f h = new h3f();
    public static final n3f i = new n3f() {
        @Override
        public final void a(Object obj, Map map) {
            akf akfVar = (akf) obj;
            n3f n3fVar = m3f.a;
            String str = (String) map.get("tx");
            String str2 = (String) map.get("ty");
            String str3 = (String) map.get("td");
            try {
                int i2 = Integer.parseInt(str);
                int i3 = Integer.parseInt(str2);
                int i4 = Integer.parseInt(str3);
                fre freVarZzI = akfVar.zzI();
                if (freVarZzI != null) {
                    freVarZzI.c().zzl(i2, i3, i4);
                }
            } catch (NumberFormatException unused) {
                int i5 = zze.zza;
                zzo.zzj("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final n3f j = new i3f();
    public static final n3f k = new j3f();
    public static final n3f l = new phf();
    public static final n3f m = new qhf();
    public static final n3f n = new a2f();
    public static final d4f o = new d4f();
    public static final n3f p = new k3f();
    public static final n3f q = new l3f();
    public static final n3f r = new l2f();
    public static final n3f s = new m2f();
    public static final n3f t = new n2f();
    public static final n3f u = new o2f();
    public static final n3f v = new p2f();
    public static final n3f w = new q2f();
    public static final n3f x = new r2f();
    public static final n3f y = new s2f();
    public static final n3f z = new t2f();
    public static final n3f A = new u2f();
    public static final n3f B = new w2f();
    public static final n3f C = new x2f();

    public static im5 a(ejf ejfVar, String str) {
        Uri uriA = Uri.parse(str);
        try {
            fre freVarZzI = ejfVar.zzI();
            inh inhVarZzS = ejfVar.zzS();
            if (!((Boolean) zzbd.zzc().b(cye.dc)).booleanValue() || inhVarZzS == null) {
                if (freVarZzI != null && freVarZzI.f(uriA)) {
                    uriA = freVarZzI.a(uriA, ejfVar.getContext(), ejfVar.zzF(), ejfVar.zzi());
                }
            } else if (freVarZzI != null && freVarZzI.f(uriA)) {
                uriA = inhVarZzS.a(uriA, ejfVar.getContext(), ejfVar.zzF(), ejfVar.zzi());
            }
        } catch (zzauz unused) {
            String strConcat = "Unable to append parameter to URL: ".concat(str);
            int i2 = zze.zza;
            zzo.zzj(strConcat);
        }
        Map map = new HashMap();
        if (ejfVar.zzD() != null) {
            map = ejfVar.zzD().w0;
        }
        final String strB = tdf.b(uriA, ejfVar.getContext(), map);
        long jLongValue = ((Long) yze.e.e()).longValue();
        if (jLongValue <= 0 || jLongValue > 251310000) {
            return j8.h(strB);
        }
        q7i q7iVarZzE = q7i.zzE(ejfVar.zzT());
        m2i m2iVar = new m2i() {
            @Override
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                n3f n3fVar = m3f.a;
                if (!((Boolean) yze.i.e()).booleanValue()) {
                    return "failure_click_attok";
                }
                zzv.zzp().x(th, "prepareClickUrl.attestation1");
                return "failure_click_attok";
            }
        };
        g8i g8iVar = zef.g;
        return (q7i) j8.e((q7i) j8.m((q7i) j8.e(q7iVarZzE, Throwable.class, m2iVar, g8iVar), new m2i() {
            @Override
            public final Object apply(Object obj) {
                String str2 = (String) obj;
                n3f n3fVar = m3f.a;
                String strReplace = strB;
                if (str2 == null) {
                    return strReplace;
                }
                if (((Boolean) yze.f.e()).booleanValue()) {
                    String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                    String host = Uri.parse(strReplace).getHost();
                    for (int i3 = 0; i3 < 3; i3++) {
                        if (!host.endsWith(strArr[i3])) {
                        }
                    }
                    return strReplace;
                }
                String str3 = (String) yze.a.e();
                String str4 = (String) yze.b.e();
                if (!TextUtils.isEmpty(str3)) {
                    strReplace = strReplace.replace(str3, str2);
                }
                if (TextUtils.isEmpty(str4)) {
                    return strReplace;
                }
                Uri uri = Uri.parse(strReplace);
                return TextUtils.isEmpty(uri.getQueryParameter(str4)) ? uri.buildUpon().appendQueryParameter(str4, str2).toString() : strReplace;
            }
        }, g8iVar), Throwable.class, new m2i() {
            @Override
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                n3f n3fVar = m3f.a;
                if (((Boolean) yze.i.e()).booleanValue()) {
                    zzv.zzp().x(th, "prepareClickUrl.attestation2");
                }
                return strB;
            }
        }, g8iVar);
    }

    public static void b(ujf ujfVar, Map map) {
        Intent uri;
        ResolveInfo resolveInfoResolveActivity;
        PackageManager packageManager = ujfVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        String strOptString = jSONObject2.optString(TtmlNode.ATTR_ID);
                        String strOptString2 = jSONObject2.optString("u");
                        String strOptString3 = jSONObject2.optString(CmcdData.OBJECT_TYPE_INIT_SEGMENT);
                        String strOptString4 = jSONObject2.optString(CmcdData.OBJECT_TYPE_MANIFEST);
                        String strOptString5 = jSONObject2.optString(TtmlNode.TAG_P);
                        String strOptString6 = jSONObject2.optString("c");
                        String strOptString7 = jSONObject2.optString("intent_url");
                        if (TextUtils.isEmpty(strOptString7)) {
                            uri = null;
                        } else {
                            try {
                                uri = Intent.parseUri(strOptString7, 0);
                            } catch (URISyntaxException e2) {
                                String strValueOf = String.valueOf(strOptString7);
                                int i3 = zze.zza;
                                zzo.zzh("Error parsing the url: ".concat(strValueOf), e2);
                                uri = null;
                            }
                        }
                        if (uri == null) {
                            uri = new Intent();
                            if (!TextUtils.isEmpty(strOptString2)) {
                                uri.setData(Uri.parse(strOptString2));
                            }
                            if (!TextUtils.isEmpty(strOptString3)) {
                                uri.setAction(strOptString3);
                            }
                            if (!TextUtils.isEmpty(strOptString4)) {
                                uri.setType(strOptString4);
                            }
                            if (!TextUtils.isEmpty(strOptString5)) {
                                uri.setPackage(strOptString5);
                            }
                            if (!TextUtils.isEmpty(strOptString6)) {
                                String[] strArrSplit = strOptString6.split("/", 2);
                                if (strArrSplit.length == 2) {
                                    uri.setComponent(new ComponentName(strArrSplit[0], strArrSplit[1]));
                                }
                            }
                        }
                        Intent intent = uri;
                        try {
                            resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
                        } catch (NullPointerException e3) {
                            zzv.zzp().x(e3, intent.toString());
                            resolveInfoResolveActivity = null;
                        }
                        try {
                            jSONObject.put(strOptString, resolveInfoResolveActivity != null);
                        } catch (JSONException e4) {
                            int i4 = zze.zza;
                            zzo.zzh("Error constructing openable urls response.", e4);
                        }
                    } catch (JSONException e5) {
                        int i5 = zze.zza;
                        zzo.zzh("Error parsing the intent data.", e5);
                    }
                }
                ((p5f) ujfVar).zze("openableIntents", jSONObject);
            } catch (JSONException unused) {
                ((p5f) ujfVar).zze("openableIntents", new JSONObject());
            }
        } catch (JSONException unused2) {
            ((p5f) ujfVar).zze("openableIntents", new JSONObject());
        }
    }

    public static void c(Map map, t8g t8gVar) {
        if (((Boolean) zzbd.zzc().b(cye.Qa)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("1") && t8gVar != null) {
            t8gVar.zzdd();
        }
    }
}

package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzeil;
import com.google.android.gms.internal.ads.zzfwz;
import defpackage.h3h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class h3h {
    public final Map a = new HashMap();
    public final Map b = new HashMap();
    public final Map c = new HashMap();
    public final Map d = new HashMap();
    public final Map e = new HashMap();
    public final Executor f;
    public JSONObject g;

    public h3h(Executor executor) {
        this.f = executor;
    }

    public static final Bundle o(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle.putString(next, jSONObject.optString(next, ""));
            }
        }
        return bundle;
    }

    public final synchronized Map a(String str, String str2) {
        HashMap map;
        try {
            Map mapB = b(str, str2);
            zzfwz zzfwzVarH = h(str2);
            map = new HashMap();
            for (Map.Entry entry : ((zzfwz) mapB).entrySet()) {
                String str3 = (String) entry.getKey();
                if (zzfwzVarH.containsKey(str3)) {
                    k3h k3hVar = (k3h) zzfwzVarH.get(str3);
                    List list = (List) entry.getValue();
                    map.put(str3, new k3h(str3, k3hVar.b, k3hVar.c, k3hVar.d, (list == null || list.isEmpty()) ? new Bundle() : (Bundle) list.get(0)));
                }
            }
            x5i x5iVarZze = zzfwzVarH.entrySet().iterator();
            while (x5iVarZze.hasNext()) {
                Map.Entry entry2 = (Map.Entry) x5iVarZze.next();
                String str4 = (String) entry2.getKey();
                if (!map.containsKey(str4) && ((k3h) entry2.getValue()).d) {
                    map.put(str4, (k3h) entry2.getValue());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return map;
    }

    public final synchronized Map b(String str, String str2) {
        Map map;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(zzv.zzp().j().zzg().c()) && (map = (Map) this.c.get(str)) != null) {
                List<j3h> list = (List) map.get(str2);
                if (list == null) {
                    String strA = pkg.a(this.g, str2, str);
                    if (((Boolean) zzbd.zzc().b(cye.Za)).booleanValue()) {
                        strA = strA.toLowerCase(Locale.ROOT);
                    }
                    list = (List) map.get(strA);
                }
                if (list != null) {
                    HashMap map2 = new HashMap();
                    for (j3h j3hVar : list) {
                        String str3 = j3hVar.a;
                        if (!map2.containsKey(str3)) {
                            map2.put(str3, new ArrayList());
                        }
                        ((List) map2.get(str3)).add(j3hVar.b);
                    }
                    return zzfwz.zzc(map2);
                }
            }
            return zzfwz.zzd();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Map c() {
        if (TextUtils.isEmpty(zzv.zzp().j().zzg().c())) {
            return zzfwz.zzd();
        }
        return zzfwz.zzc(this.b);
    }

    public final void f() {
        zzv.zzp().j().zzo(new Runnable() {
            @Override
            public final void run() {
                h3h h3hVar = this.zza;
                h3hVar.f.execute(new zzeil(h3hVar));
            }
        });
        this.f.execute(new zzeil(this));
    }

    public final synchronized void g(String str) {
        if (!TextUtils.isEmpty(str)) {
            Map map = this.a;
            if (!map.containsKey(str)) {
                map.put(str, new j3h(str, "", new Bundle()));
            }
        }
    }

    public final synchronized zzfwz h(String str) {
        HashMap map;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(zzv.zzp().j().zzg().c())) {
                boolean zMatches = Pattern.matches((String) zzbd.zzc().b(cye.u3), str);
                boolean zMatches2 = Pattern.matches((String) zzbd.zzc().b(cye.v3), str);
                if (zMatches) {
                    map = new HashMap(this.e);
                } else if (zMatches2) {
                    map = new HashMap(this.d);
                }
                return zzfwz.zzc(map);
            }
            return zzfwz.zzd();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized List i(JSONObject jSONObject, String str) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            if (jSONObject != null) {
                Bundle bundleO = o(jSONObject.optJSONObject("data"));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rtb_adapters");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i, "");
                        if (!TextUtils.isEmpty(strOptString)) {
                            arrayList2.add(strOptString);
                        }
                    }
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str2 = (String) arrayList2.get(i2);
                        g(str2);
                        if (((j3h) this.a.get(str2)) != null) {
                            arrayList.add(new j3h(str2, str, bundleO));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized void j() {
        this.b.clear();
        this.a.clear();
        this.e.clear();
        this.d.clear();
        m();
        n();
        k();
    }

    public final synchronized void k() {
        JSONObject jSONObjectF;
        try {
            if (!((Boolean) f0f.b.e()).booleanValue()) {
                if (((Boolean) zzbd.zzc().b(cye.Y1)).booleanValue() && (jSONObjectF = zzv.zzp().j().zzg().f()) != null) {
                    try {
                        JSONArray jSONArray = jSONObjectF.getJSONArray("adapter_settings");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String strOptString = jSONObject.optString("adapter_class_name");
                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("permission_set");
                            if (!TextUtils.isEmpty(strOptString) && jSONArrayOptJSONArray != null) {
                                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i2);
                                    boolean zOptBoolean = jSONObject2.optBoolean("enable_rendering", false);
                                    boolean zOptBoolean2 = jSONObject2.optBoolean("collect_secure_signals", false);
                                    boolean zOptBoolean3 = jSONObject2.optBoolean("collect_secure_signals_on_full_app", false);
                                    String strOptString2 = jSONObject2.optString("platform");
                                    k3h k3hVar = new k3h(strOptString, zOptBoolean2, zOptBoolean, zOptBoolean3, new Bundle());
                                    if (strOptString2.equals("ADMOB")) {
                                        this.d.put(strOptString, k3hVar);
                                    } else if (strOptString2.equals("AD_MANAGER")) {
                                        this.e.put(strOptString, k3hVar);
                                    }
                                }
                            }
                        }
                    } catch (JSONException e) {
                        zze.zzb("Malformed config loading JSON.", e);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void l(String str, String str2, List list) {
        try {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            Map map = this.c;
            Map map2 = (Map) map.get(str);
            if (map2 == null) {
                map2 = new HashMap();
            }
            map.put(str, map2);
            List arrayList = (List) map2.get(str2);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.addAll(list);
            map2.put(str2, arrayList);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void m() {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObjectF = zzv.zzp().j().zzg().f();
            if (jSONObjectF != null) {
                try {
                    JSONArray jSONArrayOptJSONArray2 = jSONObjectF.optJSONArray("ad_unit_id_settings");
                    this.g = jSONObjectF.optJSONObject("ad_unit_patterns");
                    if (jSONArrayOptJSONArray2 != null) {
                        for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                            JSONObject jSONObject = jSONArrayOptJSONArray2.getJSONObject(i);
                            String lowerCase = ((Boolean) zzbd.zzc().b(cye.Za)).booleanValue() ? jSONObject.optString("ad_unit_id", "").toLowerCase(Locale.ROOT) : jSONObject.optString("ad_unit_id", "");
                            String strOptString = jSONObject.optString("format", "");
                            ArrayList arrayList = new ArrayList();
                            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mediation_config");
                            if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                                    arrayList.addAll(i(jSONArrayOptJSONArray.getJSONObject(i2), strOptString));
                                }
                            }
                            l(strOptString, lowerCase, arrayList);
                        }
                    }
                } catch (JSONException e) {
                    zze.zzb("Malformed config loading JSON.", e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void n() {
        JSONObject jSONObjectF;
        if (!((Boolean) f0f.e.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.X1)).booleanValue() && (jSONObjectF = zzv.zzp().j().zzg().f()) != null) {
                try {
                    JSONArray jSONArray = jSONObjectF.getJSONArray("signal_adapters");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        Bundle bundleO = o(jSONObject.optJSONObject("data"));
                        String strOptString = jSONObject.optString("adapter_class_name");
                        boolean zOptBoolean = jSONObject.optBoolean("render", false);
                        boolean zOptBoolean2 = jSONObject.optBoolean("collect_signals", false);
                        if (!TextUtils.isEmpty(strOptString)) {
                            this.b.put(strOptString, new k3h(strOptString, zOptBoolean2, zOptBoolean, true, bundleO));
                        }
                    }
                } catch (JSONException e) {
                    zze.zzb("Malformed config loading JSON.", e);
                }
            }
        }
    }
}

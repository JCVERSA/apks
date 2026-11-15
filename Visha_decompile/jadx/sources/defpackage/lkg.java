package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import defpackage.lkg;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

public final class lkg {
    public JSONObject b;
    public final Executor c;
    public boolean d;
    public JSONObject e;
    public final Map a = new ConcurrentHashMap();
    public final AtomicBoolean f = new AtomicBoolean(false);

    public lkg(Executor executor) {
        this.c = executor;
    }

    public final JSONObject a() {
        if (((Boolean) zzbd.zzc().b(cye.m4)).booleanValue()) {
            return this.b;
        }
        return null;
    }

    public final JSONObject b(String str, String str2) {
        if (!((Boolean) zzbd.zzc().b(cye.k4)).booleanValue() || str == null || str2 == null) {
            return null;
        }
        if (!this.d) {
            h();
            if (((Boolean) zzbd.zzc().b(cye.l4)).booleanValue()) {
                g();
            }
        }
        Map map = (Map) this.a.get(str2);
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = (JSONObject) map.get(str);
        if (jSONObject != null) {
            return jSONObject;
        }
        String strA = pkg.a(this.e, str, str2);
        if (strA != null) {
            return (JSONObject) map.get(strA);
        }
        return null;
    }

    public final void f() {
        g();
        this.c.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.h();
            }
        });
    }

    public final void g() {
        if (this.f.getAndSet(true)) {
            return;
        }
        zzv.zzp().j().zzo(new Runnable() {
            @Override
            public final void run() {
                lkg lkgVar = this.zza;
                lkgVar.c.execute(new Runnable() {
                    @Override
                    public final void run() {
                        lkgVar.h();
                    }
                });
            }
        });
    }

    public final synchronized void h() {
        JSONObject jSONObjectF;
        Map map;
        try {
            this.d = true;
            ief iefVarZzg = zzv.zzp().j().zzg();
            if (iefVarZzg != null && (jSONObjectF = iefVarZzg.f()) != null) {
                this.b = ((Boolean) zzbd.zzc().b(cye.m4)).booleanValue() ? jSONObjectF.optJSONObject("common_settings") : null;
                this.e = jSONObjectF.optJSONObject("ad_unit_patterns");
                JSONArray jSONArrayOptJSONArray = jSONObjectF.optJSONArray("ad_unit_id_settings");
                if (jSONArrayOptJSONArray != null) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject != null) {
                            String strOptString = jSONObjectOptJSONObject.optString("ad_unit_id");
                            String strOptString2 = jSONObjectOptJSONObject.optString("format");
                            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("request_signals");
                            if (strOptString != null && jSONObjectOptJSONObject2 != null && strOptString2 != null) {
                                Map map2 = this.a;
                                if (map2.containsKey(strOptString2)) {
                                    map = (Map) map2.get(strOptString2);
                                } else {
                                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                                    map2.put(strOptString2, concurrentHashMap);
                                    map = concurrentHashMap;
                                }
                                map.put(strOptString, jSONObjectOptJSONObject2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}

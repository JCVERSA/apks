package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class f {

    private static final Date f31675h = new Date(0);

    private JSONObject f31676a;

    private JSONObject f31677b;

    private Date f31678c;

    private JSONArray f31679d;

    private JSONObject f31680e;

    private long f31681f;

    private JSONArray f31682g;

    public static class b {

        private JSONObject f31683a;

        private Date f31684b;

        private JSONArray f31685c;

        private JSONObject f31686d;

        private long f31687e;

        private JSONArray f31688f;

        public f a() {
            return new f(this.f31683a, this.f31684b, this.f31685c, this.f31686d, this.f31687e, this.f31688f);
        }

        public b b(JSONObject jSONObject) {
            try {
                this.f31683a = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b c(JSONArray jSONArray) {
            try {
                this.f31685c = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b d(Date date) {
            this.f31684b = date;
            return this;
        }

        public b e(JSONObject jSONObject) {
            try {
                this.f31686d = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b f(JSONArray jSONArray) {
            try {
                this.f31688f = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public b g(long j10) {
            this.f31687e = j10;
            return this;
        }

        private b() {
            this.f31683a = new JSONObject();
            this.f31684b = f.f31675h;
            this.f31685c = new JSONArray();
            this.f31686d = new JSONObject();
            this.f31687e = 0L;
            this.f31688f = new JSONArray();
        }
    }

    static f b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        JSONObject jSONObject2 = jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rollout_metadata_key");
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
        }
        return new f(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2, jSONObject.optLong("template_version_number_key"), jSONArrayOptJSONArray);
    }

    private Map c() throws JSONException {
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < j().length(); i10++) {
            JSONObject jSONObject = j().getJSONObject(i10);
            String string = jSONObject.getString("rolloutId");
            String string2 = jSONObject.getString("variantId");
            JSONArray jSONArray = jSONObject.getJSONArray("affectedParameterKeys");
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                String string3 = jSONArray.getString(i11);
                if (!map.containsKey(string3)) {
                    map.put(string3, new HashMap());
                }
                Map map2 = (Map) map.get(string3);
                if (map2 != null) {
                    map2.put(string, string2);
                }
            }
        }
        return map;
    }

    private static f d(JSONObject jSONObject) {
        return b(new JSONObject(jSONObject.toString()));
    }

    public static b l() {
        return new b();
    }

    public JSONArray e() {
        return this.f31679d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            return this.f31676a.toString().equals(((f) obj).toString());
        }
        return false;
    }

    public Set f(f fVar) throws JSONException {
        JSONObject jSONObjectG = d(fVar.f31676a).g();
        Map mapC = c();
        Map mapC2 = fVar.c();
        HashSet hashSet = new HashSet();
        Iterator<String> itKeys = g().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!fVar.g().has(next)) {
                hashSet.add(next);
            } else if (!g().get(next).equals(fVar.g().get(next))) {
                hashSet.add(next);
            } else if ((i().has(next) && !fVar.i().has(next)) || (!i().has(next) && fVar.i().has(next))) {
                hashSet.add(next);
            } else if (i().has(next) && fVar.i().has(next) && !i().getJSONObject(next).toString().equals(fVar.i().getJSONObject(next).toString())) {
                hashSet.add(next);
            } else if (mapC.containsKey(next) != mapC2.containsKey(next)) {
                hashSet.add(next);
            } else if (mapC.containsKey(next) && mapC2.containsKey(next) && !((Map) mapC.get(next)).equals(mapC2.get(next))) {
                hashSet.add(next);
            } else {
                jSONObjectG.remove(next);
            }
        }
        Iterator<String> itKeys2 = jSONObjectG.keys();
        while (itKeys2.hasNext()) {
            hashSet.add(itKeys2.next());
        }
        return hashSet;
    }

    public JSONObject g() {
        return this.f31677b;
    }

    public Date h() {
        return this.f31678c;
    }

    public int hashCode() {
        return this.f31676a.hashCode();
    }

    public JSONObject i() {
        return this.f31680e;
    }

    public JSONArray j() {
        return this.f31682g;
    }

    public long k() {
        return this.f31681f;
    }

    public String toString() {
        return this.f31676a.toString();
    }

    private f(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2, long j10, JSONArray jSONArray2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        jSONObject3.put("template_version_number_key", j10);
        jSONObject3.put("rollout_metadata_key", jSONArray2);
        this.f31677b = jSONObject;
        this.f31678c = date;
        this.f31679d = jSONArray;
        this.f31680e = jSONObject2;
        this.f31681f = j10;
        this.f31682g = jSONArray2;
        this.f31676a = jSONObject3;
    }
}

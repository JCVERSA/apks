package com.bytedance.sdk.component.adexpress.Sj.TKC;

import android.text.TextUtils;
import android.util.Pair;
import com.cloud.tmc.integration.permission.PermissionConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

public class Sj {
    private List<C0197Sj> EjP;
    private sP HiB;
    private Map<String, Sj> Jcg = new ConcurrentHashMap();
    private String Sj;
    private String TKC;
    private String sP;
    private String vS;

    public static class C0197Sj {
        private String Sj;
        private int TKC;
        private String sP;

        public String Sj() {
            return this.Sj;
        }

        public int TKC() {
            return this.TKC;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof C0197Sj)) {
                return super.equals(obj);
            }
            String str2 = this.Sj;
            if (str2 != null) {
                C0197Sj c0197Sj = (C0197Sj) obj;
                if (str2.equals(c0197Sj.Sj()) && (str = this.sP) != null && str.equals(c0197Sj.sP())) {
                    return true;
                }
            }
            return false;
        }

        public String sP() {
            return this.sP;
        }

        public void Sj(String str) {
            this.Sj = str;
        }

        public void sP(String str) {
            this.sP = str;
        }

        public void Sj(int i10) {
            this.TKC = i10;
        }
    }

    public static class sP {
        private String Sj;
        private List<Pair<String, String>> TKC;
        private String sP;

        public String Sj() {
            return this.Sj;
        }

        public void sP(String str) {
            this.sP = str;
        }

        public void Sj(String str) {
            this.Sj = str;
        }

        public List<Pair<String, String>> sP() {
            return this.TKC;
        }

        public void Sj(List<Pair<String, String>> list) {
            this.TKC = list;
        }
    }

    public boolean Dq() {
        return (TextUtils.isEmpty(EjP()) || TextUtils.isEmpty(TKC()) || TextUtils.isEmpty(sP())) ? false : true;
    }

    public String EjP() {
        return this.TKC;
    }

    public sP HiB() {
        return this.HiB;
    }

    public String Jcg() {
        return this.vS;
    }

    public Map<String, Sj> Sj() {
        return this.Jcg;
    }

    public String TEQ() {
        JSONObject jSONObjectUA;
        if (!Dq() || (jSONObjectUA = uA()) == null) {
            return null;
        }
        return jSONObjectUA.toString();
    }

    public String TKC() {
        return this.sP;
    }

    public String sP() {
        return this.Sj;
    }

    public JSONObject uA() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", sP());
            jSONObject.putOpt("version", TKC());
            jSONObject.putOpt("main", EjP());
            if (!TextUtils.isEmpty(this.vS)) {
                jSONObject.put("template_fetch_url", this.vS);
            }
            JSONArray jSONArray = new JSONArray();
            if (vS() != null) {
                for (C0197Sj c0197Sj : vS()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", c0197Sj.Sj());
                    jSONObject2.putOpt("md5", c0197Sj.sP());
                    jSONObject2.putOpt(PermissionConstant.level, Integer.valueOf(c0197Sj.TKC()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            if (!this.Jcg.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                boolean z10 = false;
                for (String str : this.Jcg.keySet()) {
                    Sj sj2 = this.Jcg.get(str);
                    if (sj2 != null) {
                        jSONObject3.put(str, sj2.uA());
                        z10 = true;
                    }
                }
                if (z10) {
                    jSONObject.put("engines", jSONObject3);
                }
            }
            sP sPVarHiB = HiB();
            if (sPVarHiB != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("url", sPVarHiB.Sj);
                jSONObject4.put("md5", sPVarHiB.sP);
                JSONObject jSONObject5 = new JSONObject();
                List<Pair<String, String>> listSP = sPVarHiB.sP();
                if (listSP != null) {
                    for (Pair<String, String> pair : listSP) {
                        jSONObject5.put((String) pair.first, pair.second);
                    }
                }
                jSONObject4.put("map", jSONObject5);
                jSONObject.putOpt("resources_archive", jSONObject4);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public List<C0197Sj> vS() {
        if (this.EjP == null) {
            this.EjP = new ArrayList();
        }
        return this.EjP;
    }

    public static Sj HiB(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Sj(new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public void EjP(String str) {
        this.vS = str;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void TKC(String str) {
        this.TKC = str;
    }

    public void sP(String str) {
        this.sP = str;
    }

    public void Sj(sP sPVar) {
        this.HiB = sPVar;
    }

    public void Sj(List<C0197Sj> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.EjP = list;
    }

    public static Sj Sj(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return null;
        }
        Sj sj2 = new Sj();
        sj2.Sj(jSONObject.optString("name"));
        sj2.sP(jSONObject.optString("version"));
        sj2.TKC(jSONObject.optString("main"));
        sj2.EjP(jSONObject.optString("template_fetch_url", ""));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i10);
                C0197Sj c0197Sj = new C0197Sj();
                c0197Sj.Sj(jSONObjectOptJSONObject2.optString("url"));
                c0197Sj.sP(jSONObjectOptJSONObject2.optString("md5"));
                c0197Sj.Sj(jSONObjectOptJSONObject2.optInt(PermissionConstant.level));
                arrayList.add(c0197Sj);
            }
        }
        sj2.Sj(arrayList);
        try {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("engines");
            if (jSONObjectOptJSONObject3 != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject3.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Sj Sj = Sj(jSONObjectOptJSONObject3.optJSONObject(next));
                    if (Sj != null) {
                        sj2.Sj().put(next, Sj);
                    }
                }
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
        if (jSONObject.has("resources_archive") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("resources_archive")) != null) {
            sP sPVar = new sP();
            sPVar.Sj(jSONObjectOptJSONObject.optString("url"));
            sPVar.sP(jSONObjectOptJSONObject.optString("md5"));
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("map");
            if (jSONObjectOptJSONObject4 != null) {
                Iterator<String> itKeys2 = jSONObjectOptJSONObject4.keys();
                ArrayList arrayList2 = new ArrayList();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    arrayList2.add(new Pair<>(next2, jSONObjectOptJSONObject4.optString(next2)));
                }
                sPVar.Sj(arrayList2);
            }
            sj2.Sj(sPVar);
        }
        if (sj2.Dq()) {
            return sj2;
        }
        return null;
    }
}

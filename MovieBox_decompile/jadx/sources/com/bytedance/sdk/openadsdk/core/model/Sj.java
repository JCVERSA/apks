package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class Sj {
    private long Dq;
    private C0256Sj EjP;
    private String Fmk;
    private boolean HiB;
    private String Jcg;
    private String Sj;
    private String TKC;

    private int f20446aa;
    private int sP;
    private boolean uA;
    private List<sU> vS = new ArrayList();
    private JSONObject TEQ = new JSONObject();
    private volatile boolean Ym = false;

    public static class C0256Sj extends sU.Sj {
        private int Sj;

        public void Sj(int i10) {
            this.Sj = i10;
        }

        public JSONObject sP() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", vS());
                jSONObject.put("md5", Jcg());
                jSONObject.put("url", Dq());
                jSONObject.put("data", uA());
                jSONObject.put("diff_data", TEQ());
                jSONObject.put("version", HiB());
                jSONObject.put("dynamic_creative", Ym());
                jSONObject.put("count_down_time", Sj());
                return jSONObject;
            } catch (Throwable unused) {
                return null;
            }
        }

        public int Sj() {
            return this.Sj;
        }

        public static C0256Sj Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            C0256Sj c0256Sj = new C0256Sj();
            c0256Sj.TKC(jSONObject.optString("id"));
            c0256Sj.EjP(jSONObject.optString("md5"));
            c0256Sj.HiB(jSONObject.optString("url"));
            c0256Sj.vS(jSONObject.optString("data"));
            c0256Sj.Jcg(jSONObject.optString("diff_data"));
            c0256Sj.sP(jSONObject.optString("version"));
            c0256Sj.Dq(jSONObject.optString("dynamic_creative"));
            c0256Sj.Sj(jSONObject.optInt("count_down_time"));
            if (Sj(c0256Sj)) {
                return c0256Sj;
            }
            return null;
        }

        private static boolean Sj(C0256Sj c0256Sj) {
            return (c0256Sj == null || TextUtils.isEmpty(c0256Sj.vS()) || TextUtils.isEmpty(c0256Sj.Dq())) ? false : true;
        }
    }

    public boolean Dq() {
        return this.uA;
    }

    public List<sU> EjP() {
        return this.vS;
    }

    @Nullable
    public JSONObject Fmk() {
        try {
            JSONObject jSONObject = new JSONObject();
            C0256Sj c0256SjUA = uA();
            if (c0256SjUA != null) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObjectSP = c0256SjUA.sP();
                if (jSONObjectSP != null) {
                    jSONObject2.put("tpl_info", jSONObjectSP);
                    jSONObject.put("choose_ui_data", jSONObject2);
                }
            }
            List<sU> list = this.vS;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < this.vS.size(); i10++) {
                    jSONArray.put(this.vS.get(i10).SP());
                }
                jSONObject.put("creatives", jSONArray);
            }
            jSONObject.put("is_choose_ad_original", this.uA);
            jSONObject.put("multi_ad_style", this.f20446aa);
            jSONObject.put(TrackingKey.REQUEST_ID, this.Sj);
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("AdInfo", "toJsonObj: ", th2);
            return null;
        }
    }

    public boolean HiB() {
        List<sU> list = this.vS;
        return list != null && list.size() > 0;
    }

    public boolean Jcg() {
        if (uA() == null || EjP() == null || EjP().size() <= 1) {
            this.HiB = false;
            Sj((C0256Sj) null);
        } else {
            this.HiB = true;
        }
        return this.HiB;
    }

    public JSONObject Sj() {
        return this.TEQ;
    }

    public boolean TEQ() {
        return this.Ym;
    }

    public int TKC() {
        return this.sP;
    }

    public void Ym() {
        this.Ym = false;
    }

    public boolean aa() {
        return this.f20446aa == 1;
    }

    public String sP() {
        sU sUVarVS = vS();
        return sUVarVS != null ? sUVarVS.cKW() : "";
    }

    public String sef() {
        return this.Fmk;
    }

    public C0256Sj uA() {
        return this.EjP;
    }

    public sU vS() {
        if (this.vS.size() > 0) {
            return this.vS.get(0);
        }
        return null;
    }

    public void EjP(String str) {
        this.Fmk = str;
    }

    public void Sj(JSONObject jSONObject) {
        this.TEQ = jSONObject;
    }

    public void TKC(String str) {
        this.Jcg = str;
    }

    public static Sj TKC(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            Sj sj2 = new Sj();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("choose_ui_data");
            if (jSONObjectOptJSONObject != null) {
                sj2.sP(jSONObjectOptJSONObject);
            }
            sj2.sP(jSONObject.optInt("multi_ad_style", 0));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            if (jSONArrayOptJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    sU sUVarSj = com.bytedance.sdk.openadsdk.core.sP.Sj(jSONArrayOptJSONArray.optJSONObject(i10));
                    if (sUVarSj != null) {
                        sUVarSj.uA(sj2.aa());
                        arrayList.add(sUVarSj);
                    }
                }
                sj2.Sj(arrayList);
            }
            sj2.Sj(jSONObject.optBoolean("is_choose_ad_original", false));
            sj2.Sj(jSONObject.optString(TrackingKey.REQUEST_ID, ""));
            return sj2;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("AdInfo", "fromJson: ", th2);
            return null;
        }
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void Sj(int i10) {
        this.sP = i10;
    }

    public void sP(String str) {
        this.TKC = str;
    }

    public void Sj(sU sUVar) {
        this.vS.add(sUVar);
    }

    public void sP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        Sj(C0256Sj.Sj(jSONObject.optJSONObject("tpl_info")));
    }

    public void Sj(List<sU> list) {
        this.vS = list;
    }

    public void sP(int i10) {
        this.f20446aa = i10;
    }

    public void Sj(long j10) {
        this.Dq = j10;
    }

    public static Map<String, sU> Sj(Sj sj2) {
        if (sj2 == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (sU sUVar : sj2.EjP()) {
            if (!TextUtils.isEmpty(sUVar.eMB())) {
                map.put(sUVar.eMB(), sUVar);
            }
        }
        if (map.size() != 0) {
            return map;
        }
        return null;
    }

    public void Sj(boolean z10) {
        this.uA = z10;
    }

    public void Sj(C0256Sj c0256Sj) {
        this.EjP = c0256Sj;
        if (c0256Sj == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(sU.Sj.Sj(c0256Sj, ""));
    }
}

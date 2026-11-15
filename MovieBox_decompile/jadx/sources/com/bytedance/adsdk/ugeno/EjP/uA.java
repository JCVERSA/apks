package com.bytedance.adsdk.ugeno.EjP;

import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class uA implements Ym {
    private boolean EjP;
    private Sj Sj;
    private com.bytedance.adsdk.ugeno.sP.TKC TKC;
    private Map<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> sP;

    public static class Sj {
        public Map<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> Sj;
        public Map<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> sP;

        public Sj(Map<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> map, Map<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> map2) {
            this.Sj = map;
            this.sP = map2;
        }
    }

    public uA(com.bytedance.adsdk.ugeno.sP.TKC tkc, Sj sj2) {
        this.TKC = tkc;
        this.Sj = sj2;
        if (sj2 != null) {
            this.sP = sj2.Sj;
        }
    }

    public void EjP() {
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj2 = Sj("timer");
        if (Sj2 != null) {
            Sj2.Sj(this);
            Sj2.Sj(new Object[0]);
        }
    }

    public void Sj() {
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj2 = Sj("shake");
        if (Sj2 != null) {
            Sj2.Sj(this);
            Sj2.Sj(new Object[0]);
        }
    }

    public void TKC() {
        Sj sj2 = this.Sj;
        if (sj2 == null) {
            return;
        }
        for (Map.Entry<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> entry : sj2.Sj.entrySet()) {
            if (entry != null) {
                com.bytedance.adsdk.ugeno.EjP.EjP.Sj value = entry.getValue();
                if (value instanceof com.bytedance.adsdk.ugeno.EjP.EjP.sP) {
                    value.Sj(this);
                    value.Sj(new Object[0]);
                }
            }
        }
    }

    public void sP() {
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj2 = Sj("twist");
        if (Sj2 != null) {
            Sj2.Sj(this);
            Sj2.Sj(new Object[0]);
        }
    }

    public boolean Sj(MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj2 = Sj("tap");
        if (Sj2 instanceof com.bytedance.adsdk.ugeno.EjP.EjP.Jcg) {
            Sj2.Sj(this);
            this.EjP = Sj2.Sj(motionEvent);
        }
        if (this.EjP) {
            return true;
        }
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj3 = Sj("slide");
        if (Sj3 instanceof com.bytedance.adsdk.ugeno.EjP.EjP.TKC) {
            Sj3.Sj(this);
            return Sj3.Sj(motionEvent);
        }
        return this.EjP;
    }

    public com.bytedance.adsdk.ugeno.EjP.EjP.Sj sP(String str) {
        Map<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> map;
        if (this.Sj == null || TextUtils.isEmpty(str) || (map = this.Sj.sP) == null) {
            return null;
        }
        return map.get(str);
    }

    private void Sj(String str, List<vS.Sj> list) {
        com.bytedance.adsdk.ugeno.EjP.sP.Sj Sj2;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (vS.Sj sj2 : list) {
            if (sj2 != null && (Sj2 = com.bytedance.adsdk.ugeno.EjP.sP.Sj.C0178Sj.Sj(this.TKC, str, sj2)) != null) {
                Sj2.Sj();
            }
        }
    }

    public com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj(String str) {
        Map<String, com.bytedance.adsdk.ugeno.EjP.EjP.Sj> map = this.sP;
        if (map == null || map.isEmpty() || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.sP.get(str);
    }

    public void Sj(String str, Object... objArr) {
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj sjSP = sP(str);
        if (sjSP != null) {
            sjSP.Sj(this);
            sjSP.Sj(objArr);
        }
    }

    @Override
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, List<vS.Sj> list) {
        Sj(str, list);
    }

    public static uA Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str) {
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj Sj2;
        if (tkc != null && !TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() <= 0) {
                    return null;
                }
                Sj sj2 = new Sj(new HashMap(), new HashMap());
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && (Sj2 = com.bytedance.adsdk.ugeno.EjP.EjP.Sj.C0177Sj.Sj(tkc.Ym().getContext(), tkc, jSONObjectOptJSONObject, tkc.aa())) != null) {
                        sj2.Sj.put(Sj2.sP(), Sj2);
                        sj2.sP.put(Sj2.TKC(), Sj2);
                    }
                }
                return new uA(tkc, sj2);
            } catch (JSONException unused) {
            }
        }
        return null;
    }
}

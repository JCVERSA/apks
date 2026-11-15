package com.bytedance.adsdk.ugeno.EjP;

import com.cloud.tmc.kernel.framework.FrameworkConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class vS {
    private Sj Sj;
    private List<Sj> sP;

    public static class Sj {
        private String EjP;
        private Map<String, String> HiB;
        private String Sj;
        private String TKC = FrameworkConstants.GLOBAL_KEY_GLOBAL;
        private String sP;
        private Map<String, Object> vS;

        public String EjP() {
            return this.Sj;
        }

        public String HiB() {
            return this.sP;
        }

        public String Sj() {
            return this.TKC;
        }

        public Map<String, String> TKC() {
            return this.HiB;
        }

        public String sP() {
            return this.EjP;
        }

        public String toString() {
            return "Action{scheme='" + this.TKC + "', name='" + this.EjP + "', params=" + this.HiB + ", host='" + this.sP + "', origin='" + this.Sj + "', extra=" + this.vS + '}';
        }

        public void EjP(String str) {
            this.sP = str;
        }

        public void Sj(String str) {
            this.TKC = str;
        }

        public void TKC(String str) {
            this.Sj = str;
        }

        public void sP(String str) {
            this.EjP = str;
        }

        public void Sj(Map<String, String> map) {
            this.HiB = map;
        }

        public void sP(Map<String, Object> map) {
            this.vS = map;
        }
    }

    public Sj Sj() {
        return this.Sj;
    }

    public List<Sj> sP() {
        return this.sP;
    }

    public static vS Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return null;
        }
        vS vSVar = new vS();
        String strOptString = jSONObject.optString("on");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("handlers");
        vSVar.Sj = aa.Sj(strOptString, jSONObject2);
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            Sj Sj2 = aa.Sj(jSONArrayOptJSONArray.optString(i10), jSONObject2);
            if (Sj2 != null) {
                arrayList.add(Sj2);
            }
        }
        vSVar.sP = arrayList;
        return vSVar;
    }
}

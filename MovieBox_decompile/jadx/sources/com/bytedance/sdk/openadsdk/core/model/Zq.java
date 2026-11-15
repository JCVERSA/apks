package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONObject;

public class Zq {
    private Sj Sj;

    public Zq(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("easy_playable")) == null) {
            return;
        }
        this.Sj = new Sj(jSONObjectOptJSONObject.optJSONObject("components"));
    }

    public static boolean Sj(sU sUVar) {
        Zq zqTX;
        Sj sj2;
        return (sUVar == null || (zqTX = sUVar.tX()) == null || (sj2 = zqTX.Sj) == null || !sj2.Sj()) ? false : true;
    }

    public static Sj sP(sU sUVar) {
        Zq zqTX;
        if (sUVar == null || (zqTX = sUVar.tX()) == null) {
            return null;
        }
        return zqTX.Sj;
    }

    public static class Sj {
        C0257Sj Sj;
        C0257Sj sP;

        public static class C0257Sj {
            String Sj;

            public C0257Sj(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                this.Sj = jSONObject.optString("entry");
            }

            public boolean Sj() {
                return !TextUtils.isEmpty(this.Sj);
            }
        }

        public Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            if (jSONObject.has("vertical")) {
                this.Sj = new C0257Sj(jSONObject.optJSONObject("vertical"));
            }
            if (jSONObject.has("horizontal")) {
                this.sP = new C0257Sj(jSONObject.optJSONObject("horizontal"));
            }
        }

        public boolean Sj() {
            C0257Sj c0257Sj = this.sP;
            if (c0257Sj != null && c0257Sj.Sj()) {
                return true;
            }
            C0257Sj c0257Sj2 = this.Sj;
            return c0257Sj2 != null && c0257Sj2.Sj();
        }

        public String Sj(boolean z10) {
            if (z10) {
                C0257Sj c0257Sj = this.Sj;
                if (c0257Sj != null) {
                    return c0257Sj.Sj;
                }
                return "";
            }
            C0257Sj c0257Sj2 = this.sP;
            if (c0257Sj2 != null) {
                return c0257Sj2.Sj;
            }
            return "";
        }
    }
}

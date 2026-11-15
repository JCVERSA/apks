package com.bytedance.sdk.openadsdk.core.Ym.sP;

import org.json.JSONException;
import org.json.JSONObject;

public class sP extends TKC implements Comparable<sP> {
    private final float Sj;

    public static class Sj {
        private final String Sj;
        private final float sP;
        private TKC.EnumC0249TKC TKC = TKC.EnumC0249TKC.TRACKING_URL;
        private boolean EjP = false;

        public Sj(String str, float f10) {
            this.Sj = str;
            this.sP = f10;
        }

        public sP Sj() {
            return new sP(this.sP, this.Sj, this.TKC, Boolean.valueOf(this.EjP));
        }
    }

    public boolean Sj(float f10) {
        return this.Sj <= f10 && !HiB();
    }

    @Override
    public void j_() {
        super.j_();
    }

    public JSONObject sP() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", TKC());
        jSONObject.put("trackingFraction", this.Sj);
        return jSONObject;
    }

    private sP(float f10, String str, TKC.EnumC0249TKC enumC0249TKC, Boolean bool) {
        super(str, enumC0249TKC, bool);
        this.Sj = f10;
    }

    @Override
    public int compareTo(sP sPVar) {
        if (sPVar == null) {
            return 1;
        }
        float f10 = this.Sj;
        float f11 = sPVar.Sj;
        if (f10 > f11) {
            return 1;
        }
        return f10 < f11 ? -1 : 0;
    }
}

package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONException;
import org.json.JSONObject;

public class Fmk {
    private final int EjP;
    private final int Sj;
    private final int TKC;
    private final int sP;

    public Fmk(JSONObject jSONObject) {
        this.Sj = jSONObject.optInt("auto_click", 0);
        this.sP = jSONObject.optInt("close_jump_probability", 0);
        this.TKC = jSONObject.optInt("skip_jump_probability", 0);
        this.EjP = jSONObject.optInt("hidden_bar", 0);
    }

    public boolean EjP() {
        return this.EjP == 1;
    }

    public JSONObject HiB() {
        try {
            JSONObject jSONObject = new JSONObject();
            int i10 = this.Sj;
            if (i10 == 1) {
                jSONObject.put("auto_click", i10);
            }
            int i11 = this.sP;
            if (i11 > 0 && i11 <= 100) {
                jSONObject.put("close_jump_probability", i11);
            }
            int i12 = this.TKC;
            if (i12 > 0 && i12 <= 100) {
                jSONObject.put("skip_jump_probability", i12);
            }
            if (this.EjP == 1) {
                jSONObject.put("hidden_bar", 1);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public int Sj() {
        return this.Sj;
    }

    public int TKC() {
        int i10 = this.TKC;
        if (i10 < 0 || i10 > 100) {
            return 0;
        }
        return i10;
    }

    public int sP() {
        int i10 = this.sP;
        if (i10 < 0 || i10 > 100) {
            return 0;
        }
        return i10;
    }

    public static boolean Sj(sU sUVar) {
        if (sUVar == null || !sUVar.Ph() || sUVar.DPc() == null) {
            return false;
        }
        return sUVar.DPc().EjP();
    }
}

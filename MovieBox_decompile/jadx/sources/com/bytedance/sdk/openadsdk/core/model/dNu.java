package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONObject;

public class dNu {
    public static int Sj = 1;
    public static int sP = 2;
    private int TKC = 5;
    private int EjP = 30;
    private int HiB = 70;
    private int vS = 1;
    private int Jcg = Sj;
    private int Dq = 0;
    private int uA = 0;
    private int TEQ = 3;

    public int Dq() {
        return this.Jcg;
    }

    public int EjP() {
        return this.TKC;
    }

    public int HiB() {
        return this.EjP;
    }

    public int Jcg() {
        return this.vS;
    }

    public int Sj() {
        return this.TEQ;
    }

    public int TKC() {
        return this.Dq;
    }

    public int sP() {
        return this.uA;
    }

    public int vS() {
        return this.HiB;
    }

    public void Dq(int i10) {
        this.Jcg = i10;
    }

    public void EjP(int i10) {
        this.TKC = i10;
    }

    public void HiB(int i10) {
        this.EjP = i10;
    }

    public void Jcg(int i10) {
        this.vS = i10;
    }

    public void Sj(int i10) {
        this.TEQ = i10;
    }

    public void TKC(int i10) {
        this.Dq = i10;
    }

    public void sP(int i10) {
        this.uA = i10;
    }

    public void vS(int i10) {
        this.HiB = i10;
    }

    public boolean Sj(boolean z10) {
        if (z10) {
            int i10 = this.Dq;
            return i10 == 1 || i10 == 3;
        }
        int i11 = this.Dq;
        return i11 == 3 || i11 == 2;
    }

    public JSONObject Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("ceiling_time", this.TKC);
            jSONObject.put("ceiling_ratio", this.EjP);
            jSONObject.put("expand_ratio", this.HiB);
            jSONObject.put("back_type", this.vS);
            jSONObject.put("boc_return_type", this.Jcg);
            jSONObject.put("pre_render_status", this.Dq);
            jSONObject.put("pre_render_use_gecko", this.uA);
            jSONObject.put("pre_render_add_type", this.TEQ);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("InteractionParams", th2.getMessage());
        }
        return jSONObject;
    }
}

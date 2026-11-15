package com.bytedance.sdk.openadsdk.core.model;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;

public class EjP {
    private int Jcg;
    private String Sj = "";
    private String sP = "";
    private String TKC = "";
    private String EjP = "";
    private double HiB = -1.0d;
    private int vS = -1;

    public JSONObject Dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", sP());
            jSONObject.put(CampaignEx.JSON_KEY_APP_SIZE, vS());
            jSONObject.put("comment_num", HiB());
            jSONObject.put("download_url", Sj());
            jSONObject.put("package_name", TKC());
            jSONObject.put("score", EjP());
            jSONObject.put("app_category", Jcg());
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.sU.sP(e10.toString(), new Object[0]);
        }
        return jSONObject;
    }

    public double EjP() {
        return this.HiB;
    }

    public int HiB() {
        return this.vS;
    }

    public String Jcg() {
        return this.EjP;
    }

    public String Sj() {
        return this.Sj;
    }

    public String TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }

    public int vS() {
        return this.Jcg;
    }

    public void EjP(String str) {
        this.EjP = str;
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

    public void Sj(double d10) {
        if (d10 >= 1.0d && d10 <= 5.0d) {
            this.HiB = d10;
        } else {
            this.HiB = -1.0d;
        }
    }

    public void sP(int i10) {
        this.Jcg = i10;
    }

    public void Sj(int i10) {
        if (i10 <= 0) {
            this.vS = -1;
        } else {
            this.vS = i10;
        }
    }
}

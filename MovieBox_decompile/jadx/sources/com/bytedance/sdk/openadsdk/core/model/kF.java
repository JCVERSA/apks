package com.bytedance.sdk.openadsdk.core.model;

import android.content.Intent;
import android.text.TextUtils;
import java.util.Iterator;
import org.json.JSONObject;

public class kF {
    private int Dq;
    private int EjP;
    private String HiB;
    private String Jcg;
    private String Sj;
    private String TEQ;
    private int TKC;
    private int Ym;
    private String sP;
    private String uA;
    private String vS;

    public boolean Dq() {
        return this.Ym == 1;
    }

    public String EjP() {
        return this.HiB;
    }

    public String HiB() {
        return this.vS;
    }

    public void Jcg(String str) {
        this.sP = str;
    }

    public String Sj() {
        return this.Jcg;
    }

    public JSONObject TEQ() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.Sj)) {
                jSONObject.put("market_dpl", this.Sj);
            }
            if (!TextUtils.isEmpty(this.sP)) {
                jSONObject.put("market_dpl_auto", this.sP);
            }
            if (!TextUtils.isEmpty(this.HiB)) {
                jSONObject.put("market_pkg", this.HiB);
            }
            if (!TextUtils.isEmpty(this.Jcg)) {
                jSONObject.put("app_pkg", this.Jcg);
            }
            if (!TextUtils.isEmpty(this.vS)) {
                jSONObject.put("regex", this.vS);
            }
            jSONObject.put("exec_type", this.TKC);
            jSONObject.put("oem_vendor_type", this.EjP);
            jSONObject.put("overlay", this.Dq);
            jSONObject.put("gp_card", this.Ym);
            if (!TextUtils.isEmpty(this.uA)) {
                jSONObject.put("caller_id", this.uA);
            }
            if (!TextUtils.isEmpty(this.TEQ)) {
                jSONObject.put("ext_map", this.TEQ);
            }
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("OemModel", th2.getMessage());
            return null;
        }
    }

    public String TKC() {
        return this.uA;
    }

    public int sP() {
        return this.Dq;
    }

    public String uA() {
        return this.TKC == 2 ? this.sP : this.Sj;
    }

    public void vS(String str) {
        this.Sj = str;
    }

    public void EjP(String str) {
        this.HiB = str;
    }

    public void HiB(String str) {
        this.vS = str;
    }

    public boolean Jcg() {
        return this.EjP == 1;
    }

    public void Sj(String str) {
        this.Jcg = str;
    }

    public void TKC(String str) {
        this.TEQ = str;
    }

    public void sP(int i10) {
        this.Dq = i10;
    }

    public int vS() {
        return this.EjP;
    }

    public void EjP(int i10) {
        this.EjP = i10;
    }

    public void Sj(int i10) {
        this.Ym = i10;
    }

    public void TKC(int i10) {
        this.TKC = i10;
    }

    public void sP(String str) {
        this.uA = str;
    }

    public static kF Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        kF kFVar = new kF();
        try {
            kFVar.vS(jSONObject.optString("market_dpl", ""));
            kFVar.Jcg(jSONObject.optString("market_dpl_auto", ""));
            kFVar.TKC(jSONObject.optInt("exec_type", 0));
            kFVar.EjP(jSONObject.optInt("oem_vendor_type", 0));
            kFVar.EjP(jSONObject.optString("market_pkg", ""));
            kFVar.HiB(jSONObject.optString("regex", ""));
            kFVar.sP(jSONObject.optInt("overlay", 1));
            kFVar.sP(jSONObject.optString("caller_id", ""));
            kFVar.TKC(jSONObject.optString("ext_map", null));
            kFVar.Sj(jSONObject.optInt("gp_card", 0));
            kFVar.Sj(jSONObject.optString("app_pkg", ""));
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("OemModel", th2.getMessage());
        }
        return kFVar;
    }

    public void Sj(Intent intent) {
        if (TextUtils.isEmpty(this.TEQ)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.TEQ);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    intent.putExtra(next, (String) obj);
                } else if (obj instanceof Integer) {
                    intent.putExtra(next, (Integer) obj);
                } else if (obj instanceof Boolean) {
                    intent.putExtra(next, (Boolean) obj);
                } else if (obj instanceof Long) {
                    intent.putExtra(next, (Long) obj);
                } else if (obj instanceof Double) {
                    intent.putExtra(next, (Double) obj);
                } else if (obj instanceof Float) {
                    intent.putExtra(next, (Float) obj);
                }
            }
        } catch (Throwable unused) {
        }
    }
}

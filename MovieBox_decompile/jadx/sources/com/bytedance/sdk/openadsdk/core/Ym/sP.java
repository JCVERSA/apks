package com.bytedance.sdk.openadsdk.core.Ym;

import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class sP extends TKC {
    private long TEQ;
    private long Ym;

    public sP(int i10, int i11, long j10, long j11, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj enumC0247Sj, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar, String str, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list2, String str2) {
        super(i10, i11, enumC0247Sj, sPVar, str, list, list2, str2);
        this.TEQ = j10;
        this.Ym = j11;
        this.uA = "icon_click";
    }

    @Override
    public JSONObject Sj() throws JSONException {
        JSONObject jSONObjectSj = super.Sj();
        if (jSONObjectSj != null) {
            jSONObjectSj.put("offset", this.TEQ);
            jSONObjectSj.put("duration", this.Ym);
        }
        return jSONObjectSj;
    }

    public static sP Sj(JSONObject jSONObject) {
        TKC tkcSP = TKC.sP(jSONObject);
        if (tkcSP == null) {
            return null;
        }
        return new sP(tkcSP.Sj, tkcSP.sP, jSONObject.optLong("offset", -1L), jSONObject.optLong("duration", -1L), tkcSP.TKC, tkcSP.EjP, tkcSP.HiB, tkcSP.vS, tkcSP.Jcg, tkcSP.Dq);
    }
}

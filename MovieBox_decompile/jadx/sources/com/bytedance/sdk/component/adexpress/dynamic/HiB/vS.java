package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class vS {
    private static HashMap<String, String> Jcg;
    private Sj EjP;
    private TKC HiB;
    private JSONObject Sj;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.TKC TKC;
    private JSONObject sP;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.EjP vS;

    static class Sj {
        float Sj;
        boolean TKC;
        float sP;

        public static Sj Sj(JSONObject jSONObject) {
            Sj sj2 = new Sj();
            if (jSONObject != null) {
                sj2.Sj = (float) jSONObject.optDouble("width");
                sj2.sP = (float) jSONObject.optDouble("height");
                sj2.TKC = jSONObject.optBoolean("isLandscape");
            }
            return sj2;
        }
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        Jcg = map;
        map.put("subtitle", TrackingKey.DESCRIPTION);
        Jcg.put(EventConstants.KEY_SOURCE, "source|app.app_name");
        Jcg.put("screenshot", "dynamic_creative.screenshot");
    }

    public vS(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.Sj = jSONObject;
        this.sP = jSONObject2;
        this.TKC = new com.bytedance.sdk.component.adexpress.dynamic.EjP.TKC(jSONObject2);
        this.EjP = Sj.Sj(jSONObject3);
        this.vS = com.bytedance.sdk.component.adexpress.dynamic.EjP.EjP.Sj(jSONObject4);
    }

    private void sP(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.TKC tkc;
        Object objSj;
        Object objSj2;
        Object objSj3;
        Object objSj4;
        if (dq2 == null || (tkc = this.TKC) == null || (objSj = tkc.Sj("image.0.url")) == null) {
            return;
        }
        String strValueOf = String.valueOf(objSj);
        if (TextUtils.isEmpty(strValueOf) || (objSj2 = this.TKC.Sj(CampaignEx.JSON_KEY_TITLE)) == null) {
            return;
        }
        String strValueOf2 = String.valueOf(objSj2);
        if (TextUtils.isEmpty(strValueOf2) || (objSj3 = this.TKC.Sj(TrackingKey.DESCRIPTION)) == null) {
            return;
        }
        String strValueOf3 = String.valueOf(objSj3);
        if (TextUtils.isEmpty(strValueOf3) || (objSj4 = this.TKC.Sj(RewardPlus.ICON)) == null) {
            return;
        }
        String strValueOf4 = String.valueOf(objSj4);
        if (TextUtils.isEmpty(strValueOf4)) {
            return;
        }
        Object objSj5 = this.TKC.Sj("app.app_name");
        Object objSj6 = this.TKC.Sj(EventConstants.KEY_SOURCE);
        if (objSj5 == null && objSj6 == null) {
            return;
        }
        if (objSj5 == null) {
            objSj5 = objSj6;
        }
        String strValueOf5 = String.valueOf(objSj5);
        if (TextUtils.isEmpty(strValueOf5)) {
            return;
        }
        dq2.Sj("imageUrl", strValueOf);
        dq2.Sj(CampaignEx.JSON_KEY_TITLE, strValueOf2);
        dq2.Sj(TrackingKey.DESCRIPTION, strValueOf3);
        dq2.Sj(RewardPlus.ICON, strValueOf4);
        dq2.Sj("app_name", strValueOf5);
        dq2.Sj(true);
    }

    public com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq Sj(double d10, int i10, double d11, String str, Fmk fmk) {
        JSONObject jSONObject;
        this.TKC.Sj();
        try {
            jSONObject = new JSONObject(this.vS.sP);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dqSj = Sj(EjP.Sj(this.Sj, jSONObject), (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq) null);
        Sj(dqSj);
        HiB hiB = new HiB(d10, i10, d11, str, fmk);
        HiB.Sj sj2 = new HiB.Sj();
        Sj sj3 = this.EjP;
        sj2.Sj = sj3.Sj;
        sj2.sP = sj3.sP;
        sj2.TKC = 0.0f;
        hiB.Sj(sj2);
        hiB.Sj(dqSj, 0.0f, 0.0f);
        hiB.Sj();
        com.bytedance.sdk.component.adexpress.dynamic.EjP.sP sPVar = hiB.Sj;
        if (sPVar.EjP == 65536.0f) {
            return null;
        }
        return sPVar.vS;
    }

    private void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        int iSj;
        if (dq2 == null) {
            return;
        }
        if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC() != null) {
            iSj = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().Zq();
        } else {
            iSj = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj());
        }
        int iSP = com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), iSj);
        Sj sj2 = this.EjP;
        float fMin = sj2.TKC ? sj2.Sj : Math.min(sj2.Sj, iSP);
        if (this.EjP.sP == 0.0f) {
            dq2.HiB(fMin);
            dq2.TEQ().HiB().TEQ("auto");
            dq2.vS(0.0f);
        } else {
            dq2.HiB(fMin);
            int iSP2 = com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj()));
            Sj sj3 = this.EjP;
            dq2.vS(sj3.TKC ? sj3.sP : Math.min(sj3.sP, iSP2));
            dq2.TEQ().HiB().TEQ("fixed");
        }
    }

    public com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq Sj(JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        int length;
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        if (TextUtils.equals(strOptString, "custom-component-vessel")) {
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_ID);
            if (this.vS != null) {
                TKC tkc = new TKC();
                this.HiB = tkc;
                JSONObject jSONObjectSj = tkc.Sj(this.vS.Sj, iOptInt, jSONObject);
                if (jSONObjectSj != null) {
                    jSONObject = jSONObjectSj;
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dqSj = Sj(jSONObject);
        dqSj.Sj(dq2);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray == null) {
            dqSj.Sj((List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq>) null);
            return dqSj;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i10);
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList();
                if (TextUtils.equals(strOptString, "tag-group")) {
                    length = dqSj.TEQ().HiB().xu();
                } else {
                    length = jSONArrayOptJSONArray2.length();
                }
                for (int i11 = 0; i11 < length; i11++) {
                    com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dqSj2 = Sj(jSONArrayOptJSONArray2.optJSONObject(i11), dqSj);
                    if (com.bytedance.sdk.component.adexpress.EjP.sP() && "skip-with-time".equals(dqSj.TEQ().sP()) && !TmcStartParams.KEY_TRANSPARENT.equals(dqSj.ib()) && !TextUtils.isEmpty(dqSj.ib())) {
                        dqSj2.TKC(dqSj.ib());
                    }
                    arrayList.add(dqSj2);
                    arrayList3.add(dqSj2);
                }
                arrayList2.add(arrayList3);
            }
        }
        if (arrayList.size() > 0) {
            dqSj.Sj(arrayList);
        }
        if (arrayList2.size() > 0) {
            dqSj.sP(arrayList2);
        }
        return dqSj;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq Sj(JSONObject jSONObject) {
        String strSj;
        JSONObject jSONObject2;
        String strOptString = jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        String strOptString2 = jSONObject.optString("id");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("values");
        uA.Sj(strOptString, jSONObjectOptJSONObject);
        JSONObject jSONObjectSj = uA.Sj(strOptString, uA.Sj(jSONObject.optJSONArray("sceneValues")), jSONObjectOptJSONObject);
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = new com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq();
        if (TextUtils.isEmpty(strOptString2)) {
            dq2.sP(String.valueOf(dq2.hashCode()));
        } else {
            dq2.sP(strOptString2);
        }
        if (jSONObjectOptJSONObject != null) {
            sP(dq2);
            dq2.TKC((float) jSONObjectOptJSONObject.optDouble("x"));
            dq2.EjP((float) jSONObjectOptJSONObject.optDouble("y"));
            dq2.HiB((float) jSONObjectOptJSONObject.optDouble("width"));
            dq2.vS((float) jSONObjectOptJSONObject.optDouble("height"));
            dq2.Jcg(jSONObjectOptJSONObject.optInt("remainWidth"));
            com.bytedance.sdk.component.adexpress.dynamic.EjP.HiB hiB = new com.bytedance.sdk.component.adexpress.dynamic.EjP.HiB();
            hiB.Sj(strOptString);
            hiB.sP(jSONObjectOptJSONObject.optString("data"));
            hiB.TKC(jSONObjectOptJSONObject.optString("dataExtraInfo"));
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarSj = com.bytedance.sdk.component.adexpress.dynamic.EjP.vS.Sj(jSONObjectOptJSONObject);
            hiB.Sj(vSVarSj);
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarSj2 = com.bytedance.sdk.component.adexpress.dynamic.EjP.vS.Sj(jSONObjectSj);
            if (vSVarSj2 == null) {
                hiB.sP(vSVarSj);
            } else {
                hiB.sP(vSVarSj2);
            }
            Sj(vSVarSj);
            Sj(vSVarSj2);
            if (TextUtils.equals(strOptString, "video-image-budget") && (jSONObject2 = this.sP) != null) {
                Sj(hiB, jSONObject2.optInt("image_mode"));
            }
            String strSP = hiB.sP();
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = hiB.HiB();
            if (Jcg.containsKey(strSP) && !vSVarHiB.MuB()) {
                vSVarHiB.sU(Jcg.get(strSP));
            }
            if (vSVarHiB.MuB()) {
                strSj = hiB.TKC();
            } else {
                strSj = Sj(hiB.TKC());
            }
            if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                if (TextUtils.equals(strSP, "star") || TextUtils.equals(strSP, "text_star")) {
                    strSj = Sj("dynamic_creative.score_exact_i18n|");
                }
                if (TextUtils.equals(strSP, "score-count") || TextUtils.equals(strSP, "score-count-type-1") || TextUtils.equals(strSP, "score-count-type-2")) {
                    strSj = Sj("dynamic_creative.comment_num_i18n|");
                }
                if ("root".equals(strSP) && vSVarSj.GMp()) {
                    strSj = Sj("image.0.url");
                }
            }
            if (!TextUtils.isEmpty(Sj()) && (TextUtils.equals("logo-union", strOptString) || TextUtils.equals("logo", strOptString))) {
                hiB.sP(strSj + "adx:" + Sj());
            } else {
                hiB.sP(strSj);
            }
            dq2.Sj(hiB);
        }
        return dq2;
    }

    private void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.HiB hiB, int i10) {
        int iLastIndexOf;
        if (i10 != 5 && i10 != 15 && i10 != 50 && i10 != 154) {
            hiB.Sj("image");
            String strSj = uA.Sj("image");
            com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = hiB.HiB();
            vSVarHiB.sU(strSj);
            hiB.Jcg().sU(strSj);
            String strSj2 = uA.Sj("image", "clickArea");
            if (!TextUtils.isEmpty(strSj2)) {
                vSVarHiB.Zq(strSj2);
                hiB.Jcg().Zq(strSj2);
            }
            JSONObject jSONObjectOv = vSVarHiB.Ov();
            if (jSONObjectOv != null) {
                vSVarHiB.ib(jSONObjectOv.optString("imageLottieTosPath"));
                vSVarHiB.aa(jSONObjectOv.optBoolean("animationsLoop"));
                vSVarHiB.wE(jSONObjectOv.optInt("lottieAppNameMaxLength"));
                vSVarHiB.LqL(jSONObjectOv.optInt("lottieAdDescMaxLength"));
                vSVarHiB.ley(jSONObjectOv.optInt("lottieAdTitleMaxLength"));
            }
            hiB.sP(strSj);
            if (strSj != null && (iLastIndexOf = strSj.lastIndexOf(".")) > 0) {
                String strSubstring = strSj.substring(0, iLastIndexOf);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("width", Sj(strSubstring + ".width"));
                    jSONObject.put("height", Sj(strSubstring + ".height"));
                } catch (JSONException unused) {
                }
                hiB.TKC(jSONObject.toString());
            }
            vSVarHiB.dU();
            return;
        }
        hiB.Sj("video");
        String strSj3 = uA.Sj("video");
        hiB.HiB().sU(strSj3);
        String strSj4 = uA.Sj("video", "clickArea");
        if (!TextUtils.isEmpty(strSj4)) {
            hiB.HiB().Zq(strSj4);
            hiB.Jcg().Zq(strSj4);
        }
        hiB.Jcg().sU(strSj3);
        hiB.sP(strSj3);
        hiB.HiB().WxP();
    }

    private String Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : str.split("\\|")) {
            if (this.TKC.sP(str2)) {
                String strValueOf = String.valueOf(this.TKC.Sj(str2));
                if (!TextUtils.isEmpty(strValueOf)) {
                    return strValueOf;
                }
            }
        }
        return "";
    }

    private String Sj() {
        Object objSj;
        com.bytedance.sdk.component.adexpress.dynamic.EjP.TKC tkc = this.TKC;
        return (tkc == null || (objSj = tkc.Sj("adx_name")) == null) ? "" : String.valueOf(objSj);
    }

    private void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVar) {
        if (vSVar == null) {
            return;
        }
        String strYf = vSVar.Yf();
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            String strTKC = com.bytedance.sdk.component.adexpress.EjP.Jcg.TKC(com.bytedance.sdk.component.adexpress.EjP.Sj());
            if ("zh".equals(strTKC)) {
                strTKC = "cn";
            }
            if (!TextUtils.isEmpty(strTKC) && vSVar.vS() != null) {
                String strOptString = vSVar.vS().optString(strTKC);
                if (!TextUtils.isEmpty(strOptString)) {
                    strYf = strOptString;
                }
            }
        }
        if (TextUtils.isEmpty(strYf)) {
            return;
        }
        int iIndexOf = strYf.indexOf("{{");
        int iIndexOf2 = strYf.indexOf("}}");
        if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf2 >= iIndexOf) {
            String strSj = Sj(strYf.substring(iIndexOf + 2, iIndexOf2));
            StringBuilder sb2 = new StringBuilder(strYf.substring(0, iIndexOf));
            if (!TextUtils.isEmpty(strSj)) {
                sb2.append(strSj);
            }
            sb2.append(strYf.substring(iIndexOf2 + 2));
            vSVar.aa(sb2.toString());
            return;
        }
        vSVar.aa(strYf);
    }
}

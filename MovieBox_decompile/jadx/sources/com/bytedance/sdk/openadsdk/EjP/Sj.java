package com.bytedance.sdk.openadsdk.EjP;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.ib;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj implements com.bytedance.sdk.component.vS.Sj.EjP.Sj.sP {
    private static final Set<String> TEQ = new HashSet(Arrays.asList("insight_log"));
    private static final Map<String, String> Ym = new HashMap<String, String>() {
        {
            put("id", "extra_id");
            put(EventConstants.KEY_SOURCE, "extra_source");
            put("url", "extra_url");
            put("toolType", "extra_tool_type");
            put("storeOpenType", "store_open_type");
            put("errorCode", "error_code");
            put("md5", "extra_md5");
            put("areaType", "area_type");
            put("rectInfo", "rect_info");
        }
    };
    private int Dq;
    private long EjP;
    private JSONObject Fmk;
    private long HiB;
    private int Jcg;
    private String RiZ;
    public final String Sj;
    private boolean TKC;
    private String TzV;
    private String Zq;

    private final AtomicBoolean f20319aa;
    private String dNu;

    private String f20320dx;

    private int f20321ib;
    private String kF;
    protected final JSONObject sP;
    private com.bytedance.sdk.openadsdk.EjP.sP.Sj sU;
    private String sef;
    private int uA;
    private String uvD;
    private final String vS;
    private String zR;

    public static final class C0214Sj {
        private String Dq;
        private String EjP;
        private String Fmk;
        private String HiB;
        private String Jcg;
        private boolean RiZ;
        public int Sj;
        private JSONObject TEQ;
        private String TKC;
        private int TzV;
        private String Ym;
        private com.bytedance.sdk.openadsdk.EjP.sP.Sj Zq;

        private final int f20322aa;
        private int dNu;
        private String sP;
        private String sU;
        private com.bytedance.sdk.openadsdk.EjP.sP.sP sef;
        private String uA;
        private final long uvD;
        private String vS;

        public C0214Sj(long j10, sU sUVar) {
            this.dNu = -1;
            this.TzV = -1;
            this.Sj = -1;
            if (sUVar != null) {
                this.RiZ = uP.sP(sUVar);
                this.dNu = sUVar.zR();
                this.TzV = sUVar.dx();
                this.Sj = sUVar.HcZ();
            }
            this.uvD = j10;
            this.f20322aa = TzV.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj());
        }

        public C0214Sj Dq(String str) {
            this.sU = str;
            return this;
        }

        public C0214Sj EjP(String str) {
            this.HiB = str;
            return this;
        }

        public C0214Sj HiB(String str) {
            this.Dq = str;
            return this;
        }

        public C0214Sj Jcg(String str) {
            this.Jcg = str;
            return this;
        }

        public C0214Sj TKC(String str) {
            this.EjP = str;
            return this;
        }

        public C0214Sj sP(String str) {
            this.TKC = str;
            return this;
        }

        public C0214Sj vS(String str) {
            this.uA = str;
            return this;
        }

        public C0214Sj Sj(String str) {
            this.Fmk = str;
            return this;
        }

        public C0214Sj Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return this;
            }
            this.TEQ = jSONObject;
            return this;
        }

        public void Sj(com.bytedance.sdk.openadsdk.EjP.sP.Sj sj2) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj(this.EjP, this.sU, this.Jcg, this.TKC);
            this.Zq = sj2;
            final Sj sj3 = new Sj(this);
            try {
                com.bytedance.sdk.openadsdk.EjP.sP.sP sPVar = this.sef;
                if (sPVar != null) {
                    sPVar.Sj(sj3.sP, this.uvD);
                } else {
                    new com.bytedance.sdk.openadsdk.EjP.sP.TKC().Sj(sj3.sP, this.uvD);
                }
            } catch (Throwable unused) {
            }
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("dispatchEvent") {
                    @Override
                    public void run() {
                        com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(sj3);
                    }
                });
            } else {
                com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(sj3);
            }
        }
    }

    public Sj(String str, JSONObject jSONObject) {
        this.vS = "adiff";
        this.f20319aa = new AtomicBoolean(false);
        this.Fmk = new JSONObject();
        this.Sj = str;
        this.sP = jSONObject;
    }

    private void Jcg() throws JSONException {
        this.sP.putOpt("app_log_url", this.kF);
        this.sP.putOpt("tag", this.sef);
        this.sP.putOpt("label", this.Zq);
        this.sP.putOpt("category", this.uvD);
        if (!TextUtils.isEmpty(this.dNu)) {
            try {
                this.sP.putOpt(AppMeasurementSdk.ConditionalUserProperty.VALUE, Long.valueOf(Long.parseLong(this.dNu)));
            } catch (NumberFormatException unused) {
                this.sP.putOpt(AppMeasurementSdk.ConditionalUserProperty.VALUE, 0L);
            }
        }
        if (!TextUtils.isEmpty(this.RiZ)) {
            try {
                this.sP.putOpt("ext_value", Long.valueOf(Long.parseLong(this.RiZ)));
            } catch (Exception unused2) {
            }
        }
        if (!TextUtils.isEmpty(this.zR)) {
            this.sP.putOpt("log_extra", this.zR);
        }
        if (!TextUtils.isEmpty(this.f20320dx)) {
            try {
                this.sP.putOpt("ua_policy", Integer.valueOf(Integer.parseInt(this.f20320dx)));
            } catch (NumberFormatException unused3) {
            }
        }
        Sj(this.sP, this.Zq);
        try {
            this.sP.putOpt("nt", Integer.valueOf(this.f20321ib));
        } catch (Exception unused4) {
        }
        Iterator<String> itKeys = this.Fmk.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            this.sP.putOpt(next, this.Fmk.opt(next));
        }
    }

    private boolean Sj(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "0") || TextUtils.isEmpty(str3)) {
            return false;
        }
        str2.hashCode();
        switch (str2) {
            case "umeng":
            case "event_v1":
            case "event_v3":
            case "app_union":
                return true;
            default:
                return false;
        }
    }

    private boolean sP(String str) {
        str.hashCode();
        switch (str) {
            case "umeng":
            case "event_v1":
            case "event_v3":
            case "app_union":
                return true;
            default:
                return false;
        }
    }

    private void vS() {
        JSONObject jSONObject = this.Fmk;
        if (jSONObject != null) {
            String strOptString = jSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            String strOptString2 = this.Fmk.optString("category");
            String strOptString3 = this.Fmk.optString("log_extra");
            if (Sj(this.dNu, this.uvD, this.zR)) {
                if (!TextUtils.isEmpty(strOptString) && TextUtils.equals(strOptString, "0")) {
                    return;
                }
                if (!TextUtils.isEmpty(strOptString2) && !sP(strOptString2)) {
                    return;
                }
            } else {
                if ((TextUtils.isEmpty(strOptString) || TextUtils.equals(strOptString, "0")) && (TextUtils.isEmpty(this.dNu) || TextUtils.equals(this.dNu, "0"))) {
                    return;
                }
                if ((TextUtils.isEmpty(this.uvD) || !sP(this.uvD)) && (TextUtils.isEmpty(strOptString2) || !sP(strOptString2))) {
                    return;
                }
                if (TextUtils.isEmpty(this.zR) && TextUtils.isEmpty(strOptString3)) {
                    return;
                }
            }
        } else if (!Sj(this.dNu, this.uvD, this.zR)) {
            return;
        }
        this.EjP = com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj.incrementAndGet();
    }

    public String EjP() {
        return this.Sj;
    }

    public boolean HiB() {
        Set<String> setAa;
        if (this.sP == null || (setAa = com.bytedance.sdk.openadsdk.core.dNu.EjP().aa()) == null) {
            return false;
        }
        String strOptString = this.sP.optString("label");
        if (!TextUtils.isEmpty(strOptString)) {
            return setAa.contains(strOptString);
        }
        if (TextUtils.isEmpty(this.Zq)) {
            return false;
        }
        return setAa.contains(this.Zq);
    }

    public JSONObject TKC() {
        if (this.f20319aa.get()) {
            return this.sP;
        }
        try {
            Jcg();
            if (this.sP.has("ad_extra_data")) {
                Object objOpt = this.sP.opt("ad_extra_data");
                if (objOpt != null) {
                    try {
                        if (objOpt instanceof JSONObject) {
                            this.sP.put("ad_extra_data", Sj((JSONObject) objOpt).toString());
                        } else if (objOpt instanceof String) {
                            this.sP.put("ad_extra_data", Sj(new JSONObject((String) objOpt)).toString());
                        }
                    } catch (JSONException e10) {
                        com.bytedance.sdk.component.utils.sU.sP("AdEvent", "json error", e10.getMessage());
                    }
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("adiff", this.Sj);
                    if (this.TKC) {
                        jSONObject.put("interaction_method", this.Jcg);
                        jSONObject.put("real_interaction_method", this.Dq);
                        jSONObject.put("image_mode", this.uA);
                    }
                    this.sP.put("ad_extra_data", jSONObject.toString());
                } catch (JSONException e11) {
                    com.bytedance.sdk.component.utils.sU.sP("AdEvent", "json error", e11.getMessage());
                }
            }
            this.f20319aa.set(true);
        } catch (Throwable unused) {
        }
        return this.sP;
    }

    private void sP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        for (String str : Ym.keySet()) {
            try {
                if (jSONObject.has(str)) {
                    Object objOpt = jSONObject.opt(str);
                    jSONObject.remove(str);
                    jSONObject.put(Ym.get(str), objOpt);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private JSONObject Sj(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("adiff")) {
                jSONObject.put("adiff", this.Sj);
            }
            if (this.TKC) {
                if (!jSONObject.has("interaction_method")) {
                    jSONObject.put("interaction_method", this.Jcg);
                }
                if (!jSONObject.has("real_interaction_method")) {
                    jSONObject.put("real_interaction_method", this.Dq);
                }
                if (!jSONObject.has("image_mode")) {
                    jSONObject.put("image_mode", this.uA);
                }
            }
            if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("replace_log_extra_key", false)) {
                sP(jSONObject);
            }
            jSONObject.put("pangle_client_unique_id", "pangle-" + this.Sj + "-" + System.currentTimeMillis());
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("AdEvent", th2.getMessage() == null ? "error " : th2.getMessage());
            return jSONObject;
        }
    }

    Sj(C0214Sj c0214Sj) {
        this.vS = "adiff";
        this.f20319aa = new AtomicBoolean(false);
        this.Fmk = new JSONObject();
        if (!TextUtils.isEmpty(c0214Sj.sP)) {
            this.Sj = c0214Sj.sP;
        } else {
            this.Sj = ib.Sj();
        }
        this.sU = c0214Sj.Zq;
        this.zR = c0214Sj.vS;
        this.sef = c0214Sj.TKC;
        this.Zq = c0214Sj.EjP;
        if (!TextUtils.isEmpty(c0214Sj.HiB)) {
            this.uvD = c0214Sj.HiB;
        } else {
            this.uvD = "app_union";
        }
        this.f20320dx = c0214Sj.Ym;
        this.dNu = c0214Sj.Dq;
        this.RiZ = c0214Sj.uA;
        this.TzV = c0214Sj.Jcg;
        this.f20321ib = c0214Sj.f20322aa;
        this.kF = c0214Sj.Fmk;
        this.Fmk = c0214Sj.TEQ = c0214Sj.TEQ != null ? c0214Sj.TEQ : new JSONObject();
        JSONObject jSONObject = new JSONObject();
        this.sP = jSONObject;
        if (!TextUtils.isEmpty(c0214Sj.Fmk)) {
            try {
                jSONObject.put("app_log_url", c0214Sj.Fmk);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.sP("AdEvent", e10.getMessage());
            }
        }
        this.Jcg = c0214Sj.dNu;
        this.Dq = c0214Sj.TzV;
        this.uA = c0214Sj.Sj;
        this.TKC = c0214Sj.RiZ;
        this.HiB = System.currentTimeMillis();
        vS();
    }

    @Override
    public long sP() {
        return this.EjP;
    }

    public JSONObject Sj(boolean z10) {
        JSONObject jSONObjectTKC = TKC();
        try {
            if (z10) {
                JSONObject jSONObject = new JSONObject(jSONObjectTKC.toString());
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
                if (jSONObjectOptJSONObject != null) {
                    jSONObjectOptJSONObject.remove("app_log_url");
                }
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(jSONObjectTKC.toString());
            jSONObject2.remove("app_log_url");
            return jSONObject2;
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.sU.sP("AdEvent", e10.getMessage());
            return jSONObjectTKC;
        }
    }

    @Override
    public JSONObject Sj(String str) {
        return TKC();
    }

    @Override
    public long Sj() {
        return this.HiB;
    }

    private static void Sj(JSONObject jSONObject, String str) {
        try {
            Set<String> set = TEQ;
            if (!set.contains(str) && !set.contains(jSONObject.get("label"))) {
                jSONObject.putOpt("is_ad_event", "1");
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("AdEvent", th2);
        }
    }
}

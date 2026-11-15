package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj {
    private long EjP;
    private long HiB;
    private String Sj;
    private List<C0183Sj> TKC;
    private float sP;
    private String vS;

    public static class C0183Sj {
        private float[] Dq;
        private long EjP;
        private String HiB;
        private float Jcg;
        private long Sj;
        private String TEQ;
        private String TKC;
        private float sP;
        private String uA;
        private float vS;

        public float[] Dq() {
            return this.Dq;
        }

        public long EjP() {
            return this.EjP;
        }

        public String HiB() {
            return this.HiB;
        }

        public float Jcg() {
            return this.Jcg;
        }

        public long Sj() {
            return this.Sj;
        }

        public String TEQ() {
            return this.TEQ;
        }

        public String TKC() {
            return this.TKC;
        }

        public float sP() {
            return this.sP;
        }

        public String uA() {
            return this.uA;
        }

        public float vS() {
            return this.vS;
        }

        public void EjP(String str) {
            this.uA = str;
        }

        public void Sj(long j10) {
            this.Sj = j10;
        }

        public void TKC(float f10) {
            this.Jcg = f10;
        }

        public void sP(long j10) {
            this.EjP = j10;
        }

        public void Sj(float f10) {
            this.sP = f10;
        }

        public void TKC(String str) {
            this.TEQ = str;
        }

        public void sP(String str) {
            this.HiB = str;
        }

        public void Sj(String str) {
            this.TKC = str;
        }

        public void sP(float f10) {
            this.vS = f10;
        }

        public void Sj(float[] fArr) {
            this.Dq = fArr;
        }

        public static C0183Sj Sj(JSONObject jSONObject, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
            if (jSONObject == null) {
                return null;
            }
            C0183Sj c0183Sj = new C0183Sj();
            c0183Sj.Sj(jSONObject.optLong("duration"));
            String strOptString = jSONObject.optString("loop");
            if (TextUtils.equals("infinite", strOptString)) {
                c0183Sj.Sj(-1.0f);
            } else {
                try {
                    c0183Sj.Sj(Float.parseFloat(strOptString));
                } catch (NumberFormatException unused) {
                    c0183Sj.Sj(0.0f);
                }
            }
            c0183Sj.Sj(jSONObject.optString("loopMode"));
            c0183Sj.sP(jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE));
            if (TextUtils.equals(c0183Sj.HiB(), "ripple")) {
                c0183Sj.TKC(jSONObject.optString("rippleColor"));
            }
            View viewYm = tkc.Ym();
            Context context = viewYm != null ? viewYm.getContext() : null;
            if (TextUtils.equals(c0183Sj.HiB(), "backgroundColor")) {
                String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("valueTo"), tkc.aa());
                int iSj = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(jSONObject.optString("valueFrom"));
                int iSj2 = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(strSj);
                c0183Sj.sP(iSj);
                c0183Sj.TKC(iSj2);
            } else if ((TextUtils.equals(c0183Sj.HiB(), "translateX") || TextUtils.equals(c0183Sj.HiB(), "translateY")) && context != null) {
                try {
                    float fSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, (float) jSONObject.optDouble("valueFrom"));
                    float fSj2 = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, (float) jSONObject.optDouble("valueTo"));
                    c0183Sj.sP(fSj);
                    c0183Sj.TKC(fSj2);
                } catch (Exception unused2) {
                    Log.e("animation", "animation ");
                }
            } else {
                c0183Sj.sP((float) jSONObject.optDouble("valueFrom"));
                c0183Sj.TKC((float) jSONObject.optDouble("valueTo"));
            }
            c0183Sj.EjP(jSONObject.optString("interpolator"));
            c0183Sj.sP(com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("startDelay"), tkc.aa()), 0L));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("values");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                float[] fArr = new float[jSONArrayOptJSONArray.length()];
                int i10 = 0;
                if ((TextUtils.equals(c0183Sj.HiB(), "translateX") || TextUtils.equals(c0183Sj.HiB(), "translateY")) && context != null) {
                    while (i10 < jSONArrayOptJSONArray.length()) {
                        fArr[i10] = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, (float) Sj.Sj(jSONArrayOptJSONArray.optString(i10), tkc.aa()));
                        i10++;
                    }
                } else {
                    while (i10 < jSONArrayOptJSONArray.length()) {
                        fArr[i10] = (float) Sj.Sj(jSONArrayOptJSONArray.optString(i10), tkc.aa());
                        i10++;
                    }
                }
                c0183Sj.Sj(fArr);
            }
            return c0183Sj;
        }
    }

    public long EjP() {
        return this.EjP;
    }

    public long HiB() {
        return this.HiB;
    }

    public String Sj() {
        return this.Sj;
    }

    public List<C0183Sj> TKC() {
        return this.TKC;
    }

    public float sP() {
        return this.sP;
    }

    public String vS() {
        return this.vS;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void sP(long j10) {
        this.HiB = j10;
    }

    public void Sj(float f10) {
        this.sP = f10;
    }

    public void sP(String str) {
        this.vS = str;
    }

    public void Sj(List<C0183Sj> list) {
        this.TKC = list;
    }

    public void Sj(long j10) {
        this.EjP = j10;
    }

    public static Sj Sj(String str, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Sj(new JSONObject(str), tkc);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static Sj Sj(JSONObject jSONObject, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        return Sj(jSONObject, null, tkc);
    }

    public static Sj Sj(JSONObject jSONObject, JSONObject jSONObject2, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        if (jSONObject == null) {
            return null;
        }
        Sj sj2 = new Sj();
        sj2.Sj(jSONObject.optString("ordering"));
        String strOptString = jSONObject.optString("loop");
        if (TextUtils.equals("infinite", strOptString)) {
            sj2.Sj(-1.0f);
        } else {
            try {
                sj2.Sj(Float.parseFloat(strOptString));
            } catch (NumberFormatException unused) {
                sj2.Sj(0.0f);
            }
        }
        sj2.Sj(jSONObject.optLong("duration", 0L));
        sj2.sP(com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("startDelay"), tkc.aa()), 0L));
        sj2.sP(jSONObject.optString("loopMode"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("animators");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObject2 != null) {
                    com.bytedance.adsdk.ugeno.Jcg.sP.Sj(jSONObject2, jSONObjectOptJSONObject);
                }
                arrayList.add(C0183Sj.Sj(jSONObjectOptJSONObject, tkc));
            }
            sj2.Sj(arrayList);
        }
        return sj2;
    }

    public static double Sj(Object obj, JSONObject jSONObject) {
        if (obj instanceof String) {
            return com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(com.bytedance.adsdk.ugeno.TKC.sP.Sj((String) obj, jSONObject), 0.0d);
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Long) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Integer) {
            return ((Double) obj).doubleValue();
        }
        return 0.0d;
    }
}

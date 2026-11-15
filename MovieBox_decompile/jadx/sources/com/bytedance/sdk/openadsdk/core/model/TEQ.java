package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.event.EventConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TEQ {
    private final float Dq;
    private final int[] EjP;
    private final int Fmk;
    private final float HiB;
    private final float Jcg;
    private final JSONObject RiZ;
    private final int[] Sj;
    private final long TEQ;
    private final int[] TKC;
    private final String TzV;
    private final int Ym;
    private final SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> Zq;

    private final int f20447aa;
    private final JSONObject dNu;
    private final int[] sP;
    private final int sef;
    private final long uA;
    private final int uvD;
    private final float vS;

    public static class Sj {
        private float Dq;
        private long EjP;
        private int[] Fmk;
        private long HiB;
        private float Jcg;
        private String RiZ;
        float Sj;
        private int[] TEQ;
        float TKC;
        private int TzV;
        private int[] Ym;
        private int Zq;

        private int[] f20448aa;
        private SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> dNu;

        private JSONObject f20449dx;
        int sP;
        private int sU;
        private int sef;
        private float uA;
        private int uvD;
        private float vS;
        private JSONObject zR;

        public Sj EjP(float f10) {
            this.Jcg = f10;
            return this;
        }

        public Sj HiB(float f10) {
            this.Dq = f10;
            return this;
        }

        public Sj Sj(int i10) {
            this.sU = i10;
            return this;
        }

        public Sj TKC(int i10) {
            this.sP = i10;
            return this;
        }

        public Sj sP(JSONObject jSONObject) {
            this.zR = jSONObject;
            return this;
        }

        public Sj vS(float f10) {
            this.uA = f10;
            return this;
        }

        public Sj EjP(int[] iArr) {
            this.Fmk = iArr;
            return this;
        }

        public Sj HiB(int i10) {
            this.Zq = i10;
            return this;
        }

        public Sj Sj(JSONObject jSONObject) {
            this.f20449dx = jSONObject;
            return this;
        }

        public Sj TKC(float f10) {
            this.vS = f10;
            return this;
        }

        public Sj sP(int i10) {
            this.TzV = i10;
            return this;
        }

        public Sj vS(int i10) {
            this.uvD = i10;
            return this;
        }

        public Sj EjP(int i10) {
            this.sef = i10;
            return this;
        }

        public Sj Sj(SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray) {
            this.dNu = sparseArray;
            return this;
        }

        public Sj TKC(int[] iArr) {
            this.f20448aa = iArr;
            return this;
        }

        public Sj sP(float f10) {
            this.TKC = f10;
            return this;
        }

        public Sj Sj(float f10) {
            this.Sj = f10;
            return this;
        }

        public Sj sP(long j10) {
            this.HiB = j10;
            return this;
        }

        public Sj Sj(long j10) {
            this.EjP = j10;
            return this;
        }

        public Sj sP(int[] iArr) {
            this.Ym = iArr;
            return this;
        }

        public Sj Sj(int[] iArr) {
            this.TEQ = iArr;
            return this;
        }

        public Sj Sj(String str) {
            this.RiZ = str;
            return this;
        }

        public TEQ Sj() {
            return new TEQ(this);
        }
    }

    public JSONObject Sj() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = this.RiZ;
            if (jSONObject2 != null) {
                try {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObject.putOpt(next, this.RiZ.opt(next));
                    }
                } catch (Exception unused) {
                }
            }
            int[] iArr = this.Sj;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.Sj[1]));
            }
            int[] iArr2 = this.sP;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt("width", Integer.valueOf(iArr2[0])).putOpt("height", Integer.valueOf(this.sP[1]));
            }
            int[] iArr3 = this.TKC;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.TKC[1]));
            }
            int[] iArr4 = this.EjP;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.EjP[1]));
            }
            jSONObject.putOpt("down_x", Float.toString(this.HiB)).putOpt("down_y", Float.toString(this.vS)).putOpt("up_x", Float.toString(this.Jcg)).putOpt("up_y", Float.toString(this.Dq)).putOpt("down_time", Long.valueOf(this.uA)).putOpt("up_time", Long.valueOf(this.TEQ)).putOpt("toolType", Integer.valueOf(this.Ym)).putOpt("deviceId", Integer.valueOf(this.f20447aa)).putOpt(EventConstants.KEY_SOURCE, Integer.valueOf(this.Fmk)).putOpt("ft", Sj(this.Zq, this.sef)).putOpt("click_area_type", this.TzV);
            int i10 = this.uvD;
            if (i10 > 0) {
                jSONObject.putOpt("areaType", Integer.valueOf(i10));
            }
            JSONObject jSONObject3 = this.dNu;
            if (jSONObject3 != null) {
                jSONObject.putOpt("rectInfo", jSONObject3);
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    private TEQ(@NonNull Sj sj2) {
        this.Sj = sj2.Ym;
        this.sP = sj2.f20448aa;
        this.EjP = sj2.Fmk;
        this.TKC = sj2.TEQ;
        this.HiB = sj2.uA;
        this.vS = sj2.Dq;
        this.Jcg = sj2.Jcg;
        this.Dq = sj2.vS;
        this.uA = sj2.HiB;
        this.TEQ = sj2.EjP;
        this.Ym = sj2.sef;
        this.f20447aa = sj2.Zq;
        this.Fmk = sj2.uvD;
        this.sef = sj2.TzV;
        this.Zq = sj2.dNu;
        this.TzV = sj2.RiZ;
        this.uvD = sj2.sU;
        this.dNu = sj2.f20449dx;
        this.RiZ = sj2.zR;
    }

    public static JSONObject Sj(SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (sparseArray != null) {
                for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                    com.bytedance.sdk.openadsdk.core.sP.TKC.Sj sjValueAt = sparseArray.valueAt(i11);
                    if (sjValueAt != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("force", Double.valueOf(sjValueAt.TKC)).putOpt("mr", Double.valueOf(sjValueAt.sP)).putOpt("phase", Integer.valueOf(sjValueAt.Sj)).putOpt("ts", Long.valueOf(sjValueAt.EjP));
                        jSONArray.put(jSONObject2);
                        jSONObject.putOpt("ftc", Integer.valueOf(i10)).putOpt("info", jSONArray);
                    }
                }
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}

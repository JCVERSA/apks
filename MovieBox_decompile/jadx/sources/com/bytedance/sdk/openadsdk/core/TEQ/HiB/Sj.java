package com.bytedance.sdk.openadsdk.core.TEQ.HiB;

import com.bytedance.adsdk.ugeno.core.Zq;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import org.json.JSONObject;

public class Sj extends Fmk {
    private float EjP;
    private JSONObject Sj;
    private float TKC;
    private Zq sP;

    public static class C0238Sj extends Fmk.Sj {
        private float EjP;
        private JSONObject Sj;
        private float TKC;
        private Zq sP;

        public C0238Sj sP(float f10) {
            this.EjP = f10;
            return this;
        }

        public C0238Sj Sj(JSONObject jSONObject) {
            this.Sj = jSONObject;
            return this;
        }

        @Override
        public Sj Sj() {
            return new Sj(this);
        }

        public C0238Sj Sj(Zq zq2) {
            this.sP = zq2;
            return this;
        }

        public C0238Sj Sj(float f10) {
            this.TKC = f10;
            return this;
        }
    }

    public Sj(C0238Sj c0238Sj) {
        super(c0238Sj);
        this.Sj = c0238Sj.Sj;
        this.sP = c0238Sj.sP;
        this.TKC = c0238Sj.TKC;
        this.EjP = c0238Sj.EjP;
    }

    public JSONObject LD() {
        return this.Sj;
    }

    public float LqL() {
        return this.TKC;
    }

    public float Yf() {
        return this.EjP;
    }

    public Zq fF() {
        return this.sP;
    }
}

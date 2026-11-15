package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import org.json.JSONObject;

public class sef implements com.bytedance.sdk.component.adexpress.TKC {
    public final int Dq;
    public final float EjP;
    public JSONObject Fmk;
    public final long HiB;
    public final int Jcg;
    public final float Sj;
    public final int TEQ;
    public final float TKC;
    public boolean TzV;
    public final String Ym;
    public final boolean Zq;

    public int f20460aa;
    public JSONObject dNu;
    public final float sP;
    public SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sef;
    public final int uA;
    public int uvD;
    public final long vS;

    public static class Sj {
        private int Dq;
        private float EjP;
        private int Fmk;
        private float HiB;
        private float Jcg;
        private int TEQ;
        private long TKC;
        private boolean TzV;
        private int Ym;
        private int Zq;

        private String f20461aa;
        private long sP;
        private JSONObject sef;
        private int uA;
        private JSONObject uvD;
        private float vS;
        private boolean dNu = false;
        protected SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> Sj = new SparseArray<>();

        public Sj EjP(float f10) {
            this.Jcg = f10;
            return this;
        }

        public Sj HiB(int i10) {
            this.TEQ = i10;
            return this;
        }

        public Sj Sj(int i10) {
            this.Zq = i10;
            return this;
        }

        public Sj TKC(float f10) {
            this.vS = f10;
            return this;
        }

        public Sj sP(int i10) {
            this.Fmk = i10;
            return this;
        }

        public Sj vS(int i10) {
            this.Ym = i10;
            return this;
        }

        public Sj EjP(int i10) {
            this.uA = i10;
            return this;
        }

        public Sj Sj(JSONObject jSONObject) {
            this.sef = jSONObject;
            return this;
        }

        public Sj TKC(int i10) {
            this.Dq = i10;
            return this;
        }

        public Sj sP(long j10) {
            this.TKC = j10;
            return this;
        }

        public Sj Sj(boolean z10) {
            this.TzV = z10;
            return this;
        }

        public Sj sP(float f10) {
            this.HiB = f10;
            return this;
        }

        public Sj Sj(long j10) {
            this.sP = j10;
            return this;
        }

        public Sj sP(JSONObject jSONObject) {
            this.uvD = jSONObject;
            return this;
        }

        public Sj Sj(float f10) {
            this.EjP = f10;
            return this;
        }

        public Sj sP(boolean z10) {
            this.dNu = z10;
            return this;
        }

        public Sj Sj(String str) {
            this.f20461aa = str;
            return this;
        }

        public Sj Sj(SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray) {
            this.Sj = sparseArray;
            return this;
        }

        public sef Sj() {
            return new sef(this);
        }
    }

    private sef(@NonNull Sj sj2) {
        this.TzV = false;
        this.Sj = sj2.Jcg;
        this.sP = sj2.vS;
        this.TKC = sj2.HiB;
        this.EjP = sj2.EjP;
        this.HiB = sj2.TKC;
        this.vS = sj2.sP;
        this.Jcg = sj2.Dq;
        this.Dq = sj2.uA;
        this.uA = sj2.TEQ;
        this.TEQ = sj2.Ym;
        this.Ym = sj2.f20461aa;
        this.sef = sj2.Sj;
        this.Zq = sj2.TzV;
        this.f20460aa = sj2.Fmk;
        this.Fmk = sj2.sef;
        this.uvD = sj2.Zq;
        this.dNu = sj2.uvD;
        this.TzV = sj2.dNu;
    }
}

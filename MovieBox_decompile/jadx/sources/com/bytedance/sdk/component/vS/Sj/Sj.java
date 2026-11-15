package com.bytedance.sdk.component.vS.Sj;

public class Sj {
    private boolean Dq;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj EjP;
    private long Fmk;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj HiB;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Jcg;
    private com.bytedance.sdk.component.vS.Sj.Sj.HiB Sj;
    private boolean TEQ;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TKC;
    private int Ym;

    private int f20301aa;
    private com.bytedance.sdk.component.vS.Sj.sP.TKC sP;
    private HiB uA;
    private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj vS;

    public static class C0210Sj {
        private com.bytedance.sdk.component.vS.Sj.Sj.HiB Dq;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj EjP;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj HiB;
        private HiB Jcg;
        private com.bytedance.sdk.component.vS.Sj.sP.TKC Sj;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj TKC;

        private long f20302aa;
        private com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sP;
        private boolean uA;
        private boolean vS;
        private int TEQ = 5000;
        private int Ym = 10;

        public C0210Sj Sj(long j10) {
            this.f20302aa = j10;
            return this;
        }

        public C0210Sj TKC(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
            this.EjP = sj2;
            return this;
        }

        public C0210Sj sP(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
            this.TKC = sj2;
            return this;
        }

        public C0210Sj Sj(com.bytedance.sdk.component.vS.Sj.Sj.HiB hiB) {
            this.Dq = hiB;
            return this;
        }

        public C0210Sj sP(int i10) {
            this.Ym = i10;
            return this;
        }

        public C0210Sj Sj(HiB hiB) {
            this.Jcg = hiB;
            return this;
        }

        public C0210Sj Sj(boolean z10) {
            this.vS = z10;
            return this;
        }

        public C0210Sj Sj(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sj2) {
            this.sP = sj2;
            return this;
        }

        public C0210Sj Sj(com.bytedance.sdk.component.vS.Sj.sP.TKC tkc) {
            this.Sj = tkc;
            return this;
        }

        public C0210Sj Sj(int i10) {
            this.TEQ = i10;
            return this;
        }

        public Sj Sj() {
            Sj sj2 = new Sj();
            sj2.sP = this.Sj;
            sj2.TKC = this.sP;
            sj2.EjP = this.TKC;
            sj2.HiB = this.EjP;
            sj2.vS = this.HiB;
            sj2.Dq = this.vS;
            sj2.uA = this.Jcg;
            sj2.Sj = this.Dq;
            sj2.TEQ = this.uA;
            sj2.f20301aa = this.Ym;
            sj2.Ym = this.TEQ;
            sj2.Fmk = this.f20302aa;
            return sj2;
        }
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Dq() {
        return this.EjP;
    }

    public int Fmk() {
        return this.f20301aa;
    }

    public long HiB() {
        return this.Fmk;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj Jcg() {
        return this.TKC;
    }

    public com.bytedance.sdk.component.vS.Sj.sP.TKC TEQ() {
        return this.sP;
    }

    public boolean Ym() {
        return this.Dq;
    }

    public int aa() {
        return this.Ym;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj uA() {
        return this.HiB;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj vS() {
        return this.Jcg;
    }

    private Sj() {
        this.Ym = 200;
        this.f20301aa = 10;
    }

    public HiB EjP() {
        return this.uA;
    }

    public boolean TKC() {
        return this.TEQ;
    }

    public com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj sP() {
        return this.vS;
    }

    public com.bytedance.sdk.component.vS.Sj.Sj.HiB Sj() {
        return this.Sj;
    }
}

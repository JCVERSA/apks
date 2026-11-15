package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import a6.a;
import com.bytedance.sdk.openadsdk.core.model.sU;

public class Zq {
    private com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC EjP;
    private sU HiB;
    private long Sj;
    private int TKC;
    private String sP;

    public static class Sj {
        private int Dq;
        private int HiB;
        private int Jcg;
        private a Ym;
        private int uA;
        private int vS;
        private long Sj = 0;
        private long sP = 0;
        private long TKC = 0;
        private boolean EjP = false;
        private boolean TEQ = false;

        private void Fmk() {
            long j10 = this.TKC;
            if (j10 > 0) {
                long j11 = this.Sj;
                if (j11 > j10) {
                    long j12 = j11 % j10;
                    this.Sj = j12;
                    if (j12 == 0) {
                        this.Sj = j10;
                    }
                }
            }
        }

        public int Dq() {
            return this.Dq;
        }

        public int EjP() {
            return this.HiB;
        }

        public int HiB() {
            return this.vS;
        }

        public int Jcg() {
            return this.Jcg;
        }

        public long Sj() {
            return this.Sj;
        }

        public boolean TEQ() {
            return this.TEQ;
        }

        public long TKC() {
            return this.TKC;
        }

        public boolean Ym() {
            return this.EjP;
        }

        public a aa() {
            return this.Ym;
        }

        public long sP() {
            return this.sP;
        }

        public int uA() {
            return this.uA;
        }

        public int vS() {
            long j10 = this.TKC;
            if (j10 <= 0) {
                return 0;
            }
            return Math.min((int) ((this.Sj * 100) / j10), 100);
        }

        public void EjP(int i10) {
            this.uA = i10;
        }

        public void Sj(long j10) {
            this.Sj = j10;
            Fmk();
        }

        public void TKC(long j10) {
            this.TKC = j10;
            Fmk();
        }

        public void sP(long j10) {
            this.sP = j10;
        }

        public void sP(int i10) {
            this.vS = i10;
        }

        public void Sj(int i10) {
            this.HiB = i10;
        }

        public void TKC(int i10) {
            this.Jcg = i10;
        }

        public void Sj(boolean z10) {
            this.EjP = z10;
        }

        public void Sj(a aVar) {
            this.Ym = aVar;
        }
    }

    public Zq(long j10, String str, int i10, com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, sU sUVar) {
        this.Sj = j10;
        this.sP = str;
        this.TKC = i10;
        this.EjP = tkc;
        this.HiB = sUVar;
    }

    public com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC EjP() {
        return this.EjP;
    }

    public sU HiB() {
        return this.HiB;
    }

    public long Sj() {
        return this.Sj;
    }

    public int TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }
}

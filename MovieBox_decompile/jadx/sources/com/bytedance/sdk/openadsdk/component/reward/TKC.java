package com.bytedance.sdk.openadsdk.component.reward;

import android.os.CountDownTimer;
import b6.a;
import com.bytedance.sdk.openadsdk.core.model.sU;
import w5.b;
import w5.c;

public class TKC implements b {
    private com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0252Sj Dq;
    private boolean HiB;
    private final a Jcg;
    private final Sj Sj;
    private final sU vS;
    private boolean sP = true;
    private long TKC = 0;
    private boolean EjP = false;

    private static class Sj implements v5.a {
        private final com.bytedance.sdk.openadsdk.EjP.Jcg Dq;
        private CountDownTimer EjP;
        private b.InterfaceC0920b HiB;
        private final a Jcg;
        private final long Sj;
        private int TKC = 0;
        private long sP;
        private long vS;

        public Sj(long j10, a aVar, com.bytedance.sdk.openadsdk.EjP.Jcg jcg) {
            this.Sj = j10;
            this.Jcg = aVar;
            this.Dq = jcg;
        }

        @Override
        public boolean Dq() {
            return this.TKC == 0;
        }

        @Override
        public int EjP() {
            return 0;
        }

        public int Fmk() {
            return 0;
        }

        @Override
        public int HiB() {
            return 0;
        }

        @Override
        public boolean Jcg() {
            return this.TKC == 2;
        }

        @Override
        public boolean Sj() {
            return false;
        }

        public void TEQ() {
            this.TKC = 2;
            this.sP = this.vS;
            CountDownTimer countDownTimer = this.EjP;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.EjP = null;
            }
        }

        @Override
        public boolean TKC() {
            return false;
        }

        public void Ym() {
            this.TKC = 0;
            CountDownTimer countDownTimer = this.EjP;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.EjP = null;
            }
            if (this.HiB != null) {
                this.HiB = null;
            }
        }

        public long Zq() {
            return this.vS;
        }

        public long aa() {
            return 0L;
        }

        @Override
        public boolean sP() {
            return false;
        }

        public long sef() {
            return this.Sj;
        }

        public void uA() {
            if (this.TKC == 1) {
                return;
            }
            this.TKC = 1;
            final long jSef = sef();
            final long j10 = jSef - this.sP;
            CountDownTimer countDownTimer = new CountDownTimer(j10, 200L) {
                @Override
                public void onFinish() {
                    Sj.this.TKC = 4;
                    Sj.this.vS = jSef;
                    if (Sj.this.HiB != null) {
                        Sj.this.HiB.Sj(Sj.this.Zq(), 100);
                    }
                    com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj();
                    sj2.Sj(jSef);
                    sj2.TKC(jSef);
                    sj2.sP(Sj.this.aa());
                    sj2.EjP(Sj.this.Fmk());
                    com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(Sj.this.Jcg, sj2, Sj.this.Dq);
                }

                @Override
                public void onTick(long j11) {
                    long j12 = (j10 - j11) + Sj.this.sP;
                    Sj.this.vS = j12;
                    if (Sj.this.HiB != null) {
                        Sj.this.HiB.Sj(j12, jSef);
                    }
                }
            };
            this.EjP = countDownTimer;
            countDownTimer.start();
        }

        @Override
        public boolean vS() {
            return this.TKC == 1;
        }

        public void Sj(long j10) {
            this.sP = j10;
        }

        public void Sj(b.InterfaceC0920b interfaceC0920b) {
            this.HiB = interfaceC0920b;
        }
    }

    public TKC(sU sUVar, com.bytedance.sdk.openadsdk.EjP.Jcg jcg) {
        a aVar = new a() {
        };
        this.Jcg = aVar;
        this.vS = sUVar;
        a6.b bVarUHs = sUVar.UHs();
        long j10 = 10;
        long jK = bVarUHs != null ? (long) bVarUHs.K() : 10L;
        if (jK <= 0) {
            bVarUHs.n(10.0d);
        } else {
            j10 = jK;
        }
        this.Sj = new Sj(j10 * 1000, aVar, jcg);
    }

    @Override
    public long Dq() {
        return this.Sj.sef();
    }

    @Override
    public void EjP(boolean z10) {
    }

    @Override
    public c Fmk() {
        return null;
    }

    @Override
    public long HiB() {
        return this.Sj.Zq();
    }

    @Override
    public int Jcg() {
        return 0;
    }

    @Override
    public void Sj(b.a aVar) {
    }

    @Override
    public int TEQ() {
        return e6.a.a(this.Sj.vS, this.Sj.Sj);
    }

    @Override
    public void TKC(long j10) {
    }

    public a TzV() {
        return this.Jcg;
    }

    @Override
    public boolean Ym() {
        return false;
    }

    @Override
    public boolean Zq() {
        return this.HiB;
    }

    @Override
    public v5.a aa() {
        return this.Sj;
    }

    @Override
    public boolean dNu() {
        return false;
    }

    @Override
    public void sP(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
    }

    @Override
    public boolean sef() {
        return this.EjP;
    }

    @Override
    public long uA() {
        return HiB();
    }

    @Override
    public boolean uvD() {
        return false;
    }

    @Override
    public long vS() {
        return 0L;
    }

    @Override
    public void EjP() {
        TKC();
    }

    @Override
    public void Sj() {
        this.Sj.TEQ();
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq());
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, sj2);
        com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0252Sj interfaceC0252Sj = this.Dq;
        if (interfaceC0252Sj != null) {
            interfaceC0252Sj.Sj(2);
        }
    }

    @Override
    public void TKC(boolean z10) {
    }

    @Override
    public void sP() {
        this.Sj.uA();
        com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj sj2 = new com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq());
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(this.Jcg, sj2);
        com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0252Sj interfaceC0252Sj = this.Dq;
        if (interfaceC0252Sj != null) {
            interfaceC0252Sj.Sj(1);
        }
    }

    @Override
    public void TKC() {
        this.Sj.Ym();
    }

    @Override
    public void Sj(boolean z10, int i10) {
        TKC();
    }

    @Override
    public void sP(long j10) {
        this.TKC = j10;
    }

    @Override
    public boolean Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        this.EjP = tkc.Dq();
        if (tkc.Jcg() > 0) {
            this.Sj.Sj(tkc.Jcg());
        }
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.vS, this.Jcg, tkc);
        this.Sj.uA();
        return true;
    }

    @Override
    public void sP(boolean z10) {
        this.HiB = z10;
    }

    @Override
    public void Sj(long j10) {
        this.Sj.Sj(j10);
    }

    @Override
    public void Sj(boolean z10) {
        this.sP = z10;
    }

    @Override
    public void Sj(b.d dVar) {
    }

    @Override
    public void Sj(boolean z10, String str) {
        this.EjP = z10;
    }

    @Override
    public void Sj(b.InterfaceC0920b interfaceC0920b) {
        this.Sj.Sj(interfaceC0920b);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.InterfaceC0252Sj interfaceC0252Sj) {
        this.Dq = interfaceC0252Sj;
    }
}

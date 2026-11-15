package com.bytedance.sdk.openadsdk.core.aa.EjP;

import android.content.Context;
import android.text.TextUtils;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.uA;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.core.TEQ.EjP;
import com.bytedance.sdk.openadsdk.core.Ym.vS;
import com.bytedance.sdk.openadsdk.core.aa.sP.HiB;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.sef.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import e6.a;
import java.util.Objects;
import w5.b;
import w5.c;

public class Sj extends com.bytedance.sdk.openadsdk.core.aa.Sj.Sj {
    private InterfaceC0252Sj Ei;
    private long FPG;
    private final int Fm;
    protected boolean JcM;
    private final Jcg Mts;
    final TKC.sP WMZ;
    private long Wjd;
    protected long fF;

    private final Runnable f20427jb;
    private boolean xD;

    public interface InterfaceC0252Sj {
        void Sj(int i10);
    }

    public Sj(Context context, ViewGroup viewGroup, sU sUVar, Jcg jcg) {
        super(context, sUVar, viewGroup);
        this.FPG = 0L;
        this.Wjd = 0L;
        this.xD = false;
        this.fF = 0L;
        this.JcM = false;
        this.WMZ = new AnonymousClass1();
        this.f20427jb = new Runnable() {
            @Override
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley != null) {
                    Sj.this.TzV();
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley.Sj();
                }
            }
        };
        this.Mts = jcg;
        this.Fm = sUVar.If();
        if (sUVar.Ph() && sUVar.GMp() != null && this.uP != null) {
            if (this.LqL == null) {
                this.LqL = vS.Sj();
            }
            this.LqL.Sj(this.uP, sUVar.GMp().sef());
        }
        HiB hiB = new HiB(context.getApplicationContext(), new sef(context), true, 17, this.Dq, this);
        this.Jcg = hiB;
        hiB.Sj(this);
    }

    protected void TzV() {
    }

    @Override
    public boolean kF() {
        return true;
    }

    public boolean Ei() {
        return this.Dq.tY() == 100.0f;
    }

    public void Fm() {
        int iXD;
        int i10 = this.f20430ib.HiB;
        if (i10 == 2 || i10 == 1) {
            iXD = dNu.EjP().xD() * 1000;
        } else {
            iXD = i10 == 4 ? dNu.EjP().uA(String.valueOf(this.Fm)) : 5000;
        }
        this.TKC.removeCallbacks(this.f20427jb);
        this.TKC.postDelayed(this.f20427jb, iXD);
    }

    private boolean HpB() {
        return Mts() == null || this.vS == null || (!EjP.Sj(this.Dq.fF()) ? this.Dq.xhi() != null : this.Dq.ndK() != null) || this.Dq.FPG() == 1;
    }

    public void jb() {
        if (this.Jcg == null) {
            return;
        }
        this.TKC.removeCallbacks(this.f20427jb);
        this.Jcg.sP();
        this.Wjd = System.currentTimeMillis() - this.FPG;
        if (!this.xD) {
            this.xD = true;
            long j10 = this.Yf;
            sP(j10, j10);
            long j11 = this.Yf;
            this.uA = j11;
            this.TEQ = j11;
            sP(this.Mts);
        }
        b.InterfaceC0920b interfaceC0920b = this.ley;
        if (interfaceC0920b != null) {
            interfaceC0920b.Sj(this.Wjd, a.a(this.uA, this.Yf));
        }
        this.sef = true;
    }

    private void xD() {
        this.vS.TKC(LD());
        this.vS.Sj(this.f20430ib);
        this.FPG = System.currentTimeMillis();
        this.Jcg.TKC(8);
        this.Jcg.TKC(0);
        Sj(new Runnable() {
            @Override
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS == null) {
                    return;
                }
                Sj.this.FPG = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.EjP(0);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.Sj(true, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uvD);
            }
        });
    }

    public void FPG() {
        vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.Sj(2);
        }
    }

    public void JcM() {
        this.WMZ.Sj((v5.a) null, 0, 0);
    }

    public com.bykv.vk.openvk.Sj.Sj.Sj.vS.a Mts() {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            return hiB.Fmk();
        }
        return null;
    }

    public void WMZ() {
        if (this.xD || !this.sU.get()) {
            return;
        }
        ley();
        com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = this.Dq.GMp();
        if (sjGMp == null || sjGMp.Sj() == null) {
            return;
        }
        sjGMp.Sj().TKC(HiB());
    }

    public void Wjd() {
        vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.Sj(13);
        }
    }

    class AnonymousClass1 implements TKC.sP {
        private boolean sP = true;

        AnonymousClass1() {
        }

        @Override
        public void EjP(v5.a aVar) {
            com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.GMp();
            if (sjGMp != null && sjGMp.Sj() != null) {
                sjGMp.Sj().sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA);
            }
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 3);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(0);
            }
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(2);
            }
        }

        @Override
        public void HiB(v5.a aVar) {
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 0);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(1);
            }
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(1);
            }
        }

        @Override
        public void Sj(v5.a aVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                        try {
                            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(9);
                        } catch (Exception unused2) {
                        }
                    }
                    Sj.this.jb();
                }
            });
            com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.GMp();
            if (sjGMp != null && sjGMp.Sj() != null) {
                long jHiB = Sj.this.HiB();
                sjGMp.Sj().EjP(jHiB);
                sjGMp.Sj().HiB(jHiB);
            }
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 5);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 5);
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(3);
            }
        }

        @Override
        public void TKC(v5.a aVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
        }

        @Override
        public void sP(v5.a aVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f20427jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
        }

        @Override
        public void sP(v5.a aVar, int i10) {
        }

        @Override
        public void Sj(v5.a aVar, long j10) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).kF = false;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f20427jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
            if (!((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).sU.get()) {
                Sj sj2 = Sj.this;
                sj2.fF = j10;
                sj2.Sj(sj2.Mts);
                Sj.this.fF();
            }
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.TKC();
            }
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 0);
        }

        @Override
        public void Sj(v5.a aVar, a6.a aVar2) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            aVar2.a();
            aVar2.d();
            aVar2.c();
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f20427jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley.sP(Sj.this.Wjd, a.a(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Yf));
                    }
                }
            });
            Sj.this.Sj(aVar2);
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 6);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(14);
            }
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(4);
            }
        }

        @Override
        public void Sj(v5.a aVar, boolean z10) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f20427jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
        }

        @Override
        public void Sj(v5.a aVar, int i10, int i11) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            uA.Sj().post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS == null) {
                        return;
                    }
                    try {
                        final float fEjP = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.EjP();
                        final float fHiB = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.HiB();
                        if (fEjP == 0.0f || fHiB == 0.0f) {
                            return;
                        }
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                            @Override
                            public void run() {
                                if (!Sj.this.Ei()) {
                                    Sj.this.Sj(fEjP, fHiB);
                                    return;
                                }
                                if (TzV.sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq) || ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).f20430ib.HiB == 4) {
                                    Sj.this.Sj(true, fEjP, fHiB);
                                    return;
                                }
                                if (TzV.TKC(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq)) {
                                    Sj.this.Sj(true, fEjP, fHiB);
                                    return;
                                }
                                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.Mts() == 3) {
                                    Sj.this.Sj(true, fEjP, fHiB);
                                } else if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.Mts() == 0) {
                                    Sj.this.TKC(fEjP, fHiB);
                                } else {
                                    Sj.this.sP(fEjP, fHiB);
                                }
                            }
                        });
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj, th2.getMessage());
                    }
                }
            });
        }

        @Override
        public void Sj(v5.a aVar, int i10, int i11, int i12) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).kF = true;
            Sj.this.Fm();
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.dNu();
                    }
                }
            });
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 3);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(4);
            }
        }

        @Override
        public void Sj(v5.a aVar, int i10) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).kF = false;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f20427jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() {
                @Override
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 0);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(5);
            }
        }

        @Override
        public void Sj(v5.a aVar, long j10, long j11) {
            if (Math.abs(j10 - ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA) < 50) {
                return;
            }
            Sj sj2 = Sj.this;
            sj2.Sj(sj2.Mts);
            Sj.this.Sj(j10, j11);
            Sj.this.sP(j10, j11);
            com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.GMp();
            if (sjGMp != null && sjGMp.Sj() != null) {
                sjGMp.Sj().Sj(j10, j11, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL);
            }
            if (!this.sP || j11 - j10 >= 500) {
                return;
            }
            this.sP = false;
            Sj(aVar);
        }

        @Override
        public void Sj(int i10, int i11) {
            Sj sj2 = Sj.this;
            sj2.sP(sj2.Mts);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).f20430ib.EjP = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.sU();
            Sj.this.Yf();
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).sU.set(false);
            Sj sj3 = Sj.this;
            sj3.Sj(sj3.Mts);
        }
    }

    @Override
    public void EjP() {
        TKC();
    }

    @Override
    public void TKC() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return;
        }
        tkc.aa();
        this.vS = null;
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.uA();
        }
        this.TKC.removeCallbacks(this.f20427jb);
        this.TKC.removeCallbacksAndMessages(null);
        vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.EjP();
        }
    }

    @Override
    public void sP() {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
            this.Jcg.Zq();
            this.Jcg.TzV();
        }
        TKC tkc = this.vS;
        if (tkc != null) {
            if (tkc.Jcg()) {
                if (this.Fmk) {
                    if (com.bytedance.sdk.openadsdk.core.uA.kF()) {
                        this.vS.sP(3);
                        TKC tkc2 = this.vS;
                        tkc2.Sj(false, tkc2.dNu(), this.uvD);
                    } else {
                        dx();
                    }
                } else {
                    sP(this.LD);
                }
            } else {
                this.vS.Sj(false, this.uA, this.uvD);
            }
        }
        if (this.xD || !this.sU.get()) {
            return;
        }
        ley();
        com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = this.Dq.GMp();
        if (sjGMp == null || sjGMp.Sj() == null) {
            return;
        }
        sjGMp.Sj().TKC(HiB());
    }

    protected void Sj(boolean z10, float f10, float f11) {
        try {
            Objects.toString(this.Dq.xD());
            if (!HpB() || z10) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f10, (int) f11);
                layoutParams.addRule(13);
                if (Mts() != null) {
                    if (Mts() instanceof TextureView) {
                        ((TextureView) Mts()).setLayoutParams(layoutParams);
                    } else if (Mts() instanceof SurfaceView) {
                        ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.uP.getLayoutParams();
                    if (this.uP.getHeight() > 0) {
                        float fMin = Math.min(this.uP.getWidth() / f10, this.uP.getHeight() / f11);
                        if (layoutParams2 != null) {
                            layoutParams.width = (int) (f10 * fMin);
                            layoutParams.height = (int) (f11 * fMin);
                            if (Mts() instanceof TextureView) {
                                ((TextureView) Mts()).setLayoutParams(layoutParams);
                            } else if (Mts() instanceof SurfaceView) {
                                ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                            }
                            if (this.f20430ib.HiB == 4) {
                                layoutParams2.width = layoutParams.width;
                                layoutParams2.height = layoutParams.height;
                                this.uP.setLayoutParams(layoutParams2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj(this.Sj, "changeSize error", th2);
        }
    }

    public void TKC(float f10, float f11) {
        try {
            if (Mts() != null && this.vS != null) {
                boolean z10 = this.Dq.liH() == 1;
                int[] iArrSP = FPG.sP(dNu.Sj());
                Sj(iArrSP[0], iArrSP[1], f10, f11, z10);
            }
        } catch (Throwable unused) {
        }
    }

    public void sP(float f10, float f11) {
        try {
            Objects.toString(this.Dq.xD());
            if (HpB()) {
                return;
            }
            int[] iArrSP = FPG.sP(dNu.Sj());
            boolean z10 = false;
            boolean z11 = this.Dq.liH() == 1;
            float f12 = iArrSP[0];
            float f13 = iArrSP[1];
            if (z11) {
                if (f10 > f11) {
                    Sj(f12, f13, f10, f11, true);
                    return;
                }
            } else if (f10 < f11) {
                Sj(f12, f13, f10, f11, false);
                return;
            }
            float f14 = f10 / f11;
            float f15 = f12 / f13;
            if (z11) {
                if (f15 < 0.5625f && f14 == 0.5625f) {
                    f10 = (9.0f * f13) / 16.0f;
                    z10 = true;
                    f11 = f13;
                }
            } else if (f15 > 1.7777778f && f14 == 1.7777778f) {
                f11 = (9.0f * f12) / 16.0f;
                z10 = true;
                f10 = f12;
            }
            if (z10) {
                f12 = f10;
                f13 = f11;
            }
            int i10 = (int) f12;
            int i11 = (int) f13;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i10, i11);
            layoutParams.addRule(13);
            if (Mts() != null) {
                if (Mts() instanceof TextureView) {
                    ((TextureView) Mts()).setLayoutParams(layoutParams);
                } else if (Mts() instanceof SurfaceView) {
                    ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.uP.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.height = i11;
                    layoutParams2.width = i10;
                    this.uP.setLayoutParams(layoutParams2);
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj(this.Sj, "changeSize error", th2);
        }
    }

    @Override
    public boolean Sj(@NonNull com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        int iRiZ;
        View view;
        if (this.vS != null) {
            return false;
        }
        tkc.Fmk();
        if (TextUtils.isEmpty(tkc.Fmk())) {
            return false;
        }
        sP(tkc);
        tkc.TKC(1);
        this.JcM = !tkc.Fmk().startsWith("http");
        if (this.LqL != null) {
            if (this.f20430ib.HiB == 1) {
                sU sUVar = this.Dq;
                if (sUVar != null && sUVar.sP() >= 0) {
                    iRiZ = this.Dq.sP();
                } else {
                    iRiZ = dNu.EjP().TEQ(String.valueOf(this.Fm));
                }
            } else {
                sU sUVar2 = this.Dq;
                if (sUVar2 != null && sUVar2.Sj() >= 0) {
                    iRiZ = this.Dq.Sj();
                } else {
                    iRiZ = dNu.EjP().RiZ(String.valueOf(this.Fm));
                }
            }
            ViewGroup viewGroup = this.uP;
            if (viewGroup != null && (view = (View) viewGroup.getParent()) != null) {
                try {
                    View viewFindViewById = view.findViewById(Zq.f20511aa);
                    View viewFindViewById2 = view.findViewById(Zq.IPx);
                    vS vSVar = this.LqL;
                    FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                    vSVar.Sj(viewFindViewById2, friendlyObstructionPurpose);
                    this.LqL.Sj(viewFindViewById, friendlyObstructionPurpose);
                } catch (Throwable unused) {
                }
            }
            this.LqL.Sj(iRiZ > 0, iRiZ / 1000.0f);
        }
        Yf();
        if (tkc.Jcg() > 0) {
            long jJcg = tkc.Jcg();
            this.uA = jJcg;
            this.TEQ = Math.max(this.TEQ, jJcg);
        }
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
            this.Jcg.Jcg();
            this.Jcg.TKC(tkc.HiB(), tkc.vS());
            this.Jcg.TKC(this.uP);
        }
        TKC tkc2 = new TKC();
        this.vS = tkc2;
        tkc2.Sj(this.WMZ);
        RiZ();
        this.Wjd = 0L;
        xD();
        return true;
    }

    public void sP(final long j10, final long j11) {
        this.Dq.TKC(j10);
        this.uA = j10;
        this.Yf = j11;
        final int iA = a.a(j10, j11);
        this.TKC.post(new Runnable() {
            @Override
            public void run() {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.Sj(j10, j11);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.Sj(iA);
                try {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley.Sj(j10, j11);
                    }
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj, "onProgressUpdate error: ", th2);
                }
            }
        });
    }

    @Override
    public void Sj(boolean z10, int i10) {
        TKC();
    }

    public void Sj(float f10, float f11) {
        ViewGroup viewGroup;
        try {
            if (Mts() != null && this.vS != null && (viewGroup = this.uP) != null) {
                float width = viewGroup.getWidth();
                float f12 = f10 / (width * 1.0f);
                float height = this.uP.getHeight();
                if (f12 <= f11 / (1.0f * height)) {
                    width = f10 * (height / f11);
                } else {
                    height = f11 * (width / f10);
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) width, (int) height);
                layoutParams.addRule(13);
                if (Mts() instanceof TextureView) {
                    ((TextureView) Mts()).setLayoutParams(layoutParams);
                } else if (Mts() instanceof SurfaceView) {
                    ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj(this.Sj, "changeVideoSizeSupportInteraction error", th2);
        }
    }

    private void Sj(float f10, float f11, float f12, float f13, boolean z10) {
        RelativeLayout.LayoutParams layoutParams;
        if (f12 <= 0.0f || f13 <= 0.0f) {
            try {
                f12 = this.Dq.UHs().t();
                f13 = this.Dq.UHs().C();
            } catch (Throwable unused) {
                return;
            }
        }
        if (f13 > 0.0f && f12 > 0.0f) {
            if (z10) {
                if (f12 < f13) {
                    return;
                }
                layoutParams = new RelativeLayout.LayoutParams((int) f10, (int) ((f13 * f10) / f12));
            } else if (f12 > f13) {
                return;
            } else {
                layoutParams = new RelativeLayout.LayoutParams((int) ((f12 * f11) / f13), (int) f11);
            }
            layoutParams.addRule(13);
            if (Mts() != null) {
                if (Mts() instanceof TextureView) {
                    ((TextureView) Mts()).setLayoutParams(layoutParams);
                } else if (Mts() instanceof SurfaceView) {
                    ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.uP.getLayoutParams();
                if (!com.bytedance.sdk.component.adexpress.EjP.sP.Sj(dNu.Sj()) || this.uP.getHeight() <= 0 || layoutParams2 == null) {
                    return;
                }
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
                this.uP.setLayoutParams(layoutParams2);
            }
        }
    }

    @Override
    public void Sj(c cVar, View view) {
        TKC tkc = this.vS;
        if (tkc == null) {
            return;
        }
        if (tkc.vS()) {
            Sj();
            this.Jcg.sP(true, false);
            this.Jcg.vS();
            return;
        }
        if (!this.vS.Jcg()) {
            HiB hiB = this.Jcg;
            if (hiB != null) {
                hiB.TKC(this.uP);
            }
            EjP(this.uA);
            HiB hiB2 = this.Jcg;
            if (hiB2 != null) {
                hiB2.sP(false, false);
                return;
            }
            return;
        }
        sP();
        HiB hiB3 = this.Jcg;
        if (hiB3 != null) {
            hiB3.sP(false, false);
        }
    }

    public void Sj(InterfaceC0252Sj interfaceC0252Sj) {
        this.Ei = interfaceC0252Sj;
    }
}

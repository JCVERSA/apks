package com.bytedance.sdk.openadsdk.core.aa.sP;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.uA;
import com.bytedance.sdk.component.utils.wE;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.Dq.ib;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.sef.Fmk;
import com.bytedance.sdk.openadsdk.sef.sef;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import v5.a;
import w5.b;
import w5.c;

public class TKC extends com.bytedance.sdk.openadsdk.core.aa.Sj.Sj {
    private int Ei;
    private final boolean FPG;
    private WeakReference<b.a> Fm;
    private int HpB;
    private long JcM;
    private final String Mts;
    private boolean MuB;
    private final Runnable UHs;
    private final boolean WMZ;
    private final boolean Wjd;

    private sP f20439db;
    private final wE.Sj dwU;
    private long fF;

    private WeakReference<Sj> f20440jb;
    private final a.InterfaceC0909a ndK;
    private int qRN;
    private int sdp;
    private boolean xD;
    private Jcg xhi;

    public interface Sj {
        void Sj(int i10);

        void vS();
    }

    public TKC(Context context, ViewGroup viewGroup, sU sUVar, String str, boolean z10, boolean z11, boolean z12, Jcg jcg) {
        super(context, sUVar, viewGroup);
        this.fF = 0L;
        this.JcM = 0L;
        this.xD = true;
        this.Ei = 0;
        this.HpB = 0;
        this.ndK = new a.InterfaceC0909a() {
            @Override
            public void EjP(a aVar) {
                com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq.GMp();
                if (sjGMp != null && sjGMp.Sj() != null) {
                    sjGMp.Sj().sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).uA);
                }
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, 3);
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL != null) {
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL.Sj(0);
                }
            }

            @Override
            public void HiB(a aVar) {
                com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq.GMp();
                if (sjGMp != null && sjGMp.Sj() != null) {
                    sjGMp.Sj().TKC(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).uA);
                }
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL != null) {
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL.Sj(1);
                }
            }

            @Override
            public void Sj(a aVar) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, 5);
                            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, 5);
                            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL != null) {
                                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL.Sj(9);
                            }
                        } catch (Exception unused) {
                        }
                        TKC.this.Mts();
                    }
                });
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq.GMp() == null || ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq.GMp().Sj() == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq.GMp().Sj().EjP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).uA);
            }

            @Override
            public void sP(a aVar) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.removeCallbacks(TKC.this.UHs);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        if (TKC.this.Fm != null && TKC.this.Fm.get() != null) {
                            TKC.this.Fm.get();
                        }
                        if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg != null) {
                            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.sP();
                        }
                    }
                });
                if (TKC.this.WMZ) {
                    return;
                }
                TKC tkc = TKC.this;
                tkc.Sj(tkc.xhi);
            }

            @Override
            public void Sj(a aVar, long j10) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).kF = false;
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.removeCallbacks(TKC.this.UHs);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg != null) {
                            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.sP();
                        }
                        if (!((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Zq || TKC.this.f20440jb == null || TKC.this.f20440jb.get() == null) {
                            return;
                        }
                        ((Sj) TKC.this.f20440jb.get()).vS();
                    }
                });
                TKC.this.fF();
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, 0);
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL != null) {
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL.TKC();
                }
                TKC tkc = TKC.this;
                tkc.Sj(tkc.xhi);
            }

            @Override
            public void sP(a aVar, int i10) {
            }

            @Override
            public void Sj(a aVar, final a6.a aVar2) {
                String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Sj;
                aVar2.a();
                aVar2.d();
                aVar2.c();
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        int iA = aVar2.a();
                        int iD = aVar2.d();
                        if (!TKC.this.wE() || iD == -1004) {
                            if (TKC.this.EjP(iA, iD)) {
                                String unused2 = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Sj;
                                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, (WeakReference<Context>) null, false);
                                TKC.this.sP(true);
                                TKC.this.EjP();
                            }
                            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg != null) {
                                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.sP();
                            }
                            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).ley != null) {
                                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).ley.sP(TKC.this.JcM, e6.a.a(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).uA, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Yf));
                            }
                            if (TKC.this.Fm == null || TKC.this.Fm.get() == null || TKC.this.wE()) {
                                return;
                            }
                            ((b.a) TKC.this.Fm.get()).Sj(iA, iD);
                        }
                    }
                });
                TKC.this.Sj(aVar2);
                com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq.GMp();
                if (sjGMp != null && sjGMp.Sj() != null) {
                    sjGMp.Sj().Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.GENERAL_LINEAR_AD_ERROR);
                }
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, 6);
                com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq);
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL != null) {
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL.Sj(14);
                }
            }

            @Override
            public void Sj(a aVar, boolean z13) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg != null) {
                            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.sP();
                        }
                    }
                });
            }

            @Override
            public void Sj(a aVar, int i10, int i11) {
                uA.Sj().post(new Runnable() {
                    @Override
                    public void run() {
                        TKC.this.Wjd();
                    }
                });
            }

            @Override
            public void TKC(a aVar) {
            }

            @Override
            public void Sj(a aVar, int i10, int i11, int i12) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).kF = true;
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg != null) {
                            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.dNu();
                            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.postDelayed(TKC.this.UHs, 8000L);
                        }
                    }
                });
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, 2);
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL != null) {
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL.Sj(4);
                }
            }

            @Override
            public void Sj(a aVar, int i10) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).kF = false;
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.removeCallbacks(TKC.this.UHs);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.sP();
                    }
                });
                com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, 0);
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL != null) {
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).LqL.Sj(5);
                }
            }

            @Override
            public void Sj(a aVar, final long j10, final long j11) {
                if (Math.abs(j10 - ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).uA) < 50) {
                    return;
                }
                TKC tkc = TKC.this;
                tkc.Sj(tkc.xhi);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).TKC.post(new Runnable() {
                    @Override
                    public void run() {
                        TKC.this.Sj(j10, j11);
                        TKC.this.sP(j10, j11);
                    }
                });
            }
        };
        this.qRN = 0;
        this.UHs = new Runnable() {
            @Override
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg != null) {
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Dq, (WeakReference<Context>) null, false);
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.sP();
                    TKC.this.sP(true);
                    String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Sj;
                }
            }
        };
        this.dwU = new wE.Sj() {
            @Override
            public void Sj(Context context2, Intent intent, boolean z13, final int i10) {
                JcM.Sj(new Runnable() {
                    @Override
                    public void run() {
                        TKC.this.HiB(i10);
                    }
                });
            }
        };
        this.MuB = false;
        this.sdp = TzV.TKC(context);
        Sj(z10);
        this.Mts = str;
        try {
            this.Ei = viewGroup.getWidth();
            this.HpB = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        Sj(context);
        this.WMZ = true;
        this.FPG = z11;
        this.Wjd = z12;
        if (jcg != null) {
            this.xhi = jcg;
        }
    }

    public boolean EjP(int i10, int i11) {
        boolean z10 = i10 == -1010 || i10 == -1007 || i10 == -1004 || i10 == -110 || i10 == 100 || i10 == 200;
        if (i11 == 1 || i11 == 700 || i11 == 800) {
            return true;
        }
        return z10;
    }

    private void FPG() {
        com.bytedance.sdk.openadsdk.core.aa.EjP.TKC tkc = this.vS;
        if (tkc != null) {
            if (!tkc.Jcg()) {
                this.vS.Sj(false, this.uA, this.uvD);
            } else if (this.Fmk) {
                dx();
            } else {
                sP(this.LD);
            }
        }
        if (this.sU.get()) {
            ley();
        }
    }

    public void HiB(int i10) {
        EjP(i10);
        if (i10 == 4) {
            this.dNu = false;
        }
    }

    public void Mts() {
        this.qRN++;
        HiB hiB = this.Jcg;
        if (hiB == null) {
            return;
        }
        hiB.sP();
        b.InterfaceC0920b interfaceC0920b = this.ley;
        if (interfaceC0920b != null) {
            interfaceC0920b.Sj(this.JcM, e6.a.a(this.uA, this.Yf));
        }
        this.JcM = System.currentTimeMillis() - this.fF;
        if (this.xD) {
            this.Jcg.Sj(this.Dq, (WeakReference<Context>) null, true);
        }
        if (!this.f20429dx) {
            this.f20429dx = true;
            long j10 = this.Yf;
            sP(j10, j10);
            long j11 = this.Yf;
            this.uA = j11;
            this.TEQ = j11;
            sP(this.xhi);
        }
        if (!this.Zq && this.RiZ) {
            HiB(this.Jcg, null);
        }
        this.sef = true;
    }

    public void Wjd() {
        com.bytedance.sdk.openadsdk.core.aa.EjP.TKC tkc;
        int i10;
        int i11;
        try {
            if (xD() != null && (tkc = this.vS) != null && this.uP != null) {
                int iEjP = tkc.EjP();
                int iHiB = this.vS.HiB();
                final int width = this.uP.getWidth();
                final int height = this.uP.getHeight();
                if (width > 0 && height > 0 && iHiB > 0 && iEjP > 0) {
                    if (iEjP == iHiB) {
                        i11 = width > height ? height : width;
                        i10 = i11;
                    } else if (iEjP > iHiB) {
                        i11 = (int) ((((double) width) * 1.0d) / ((double) ((iEjP * 1.0f) / iHiB)));
                        i10 = width;
                    } else {
                        i10 = (int) ((((double) height) * 1.0d) / ((double) ((iHiB * 1.0f) / iEjP)));
                        i11 = height;
                    }
                    if (i11 <= height && i11 > 0) {
                        height = i11;
                    }
                    if (i10 <= width && i10 > 0) {
                        width = i10;
                    }
                    this.TKC.post(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, height);
                                layoutParams.addRule(13);
                                if (TKC.this.xD() instanceof TextureView) {
                                    ((TextureView) TKC.this.xD()).setLayoutParams(layoutParams);
                                    String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Sj;
                                } else if (TKC.this.xD() instanceof SurfaceView) {
                                    ((SurfaceView) TKC.this.xD()).setLayoutParams(layoutParams);
                                    String unused2 = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Sj;
                                }
                            } catch (Throwable unused3) {
                                String unused4 = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Sj;
                            }
                        }
                    });
                    return;
                }
                return;
            }
            Objects.toString(this.Ym);
            Objects.toString(xD());
        } catch (Throwable th2) {
            th2.toString();
        }
    }

    public com.bykv.vk.openvk.Sj.Sj.Sj.vS.a xD() {
        HiB hiB;
        if (this.Ym.getResources().getConfiguration().orientation != 1 || (hiB = this.Jcg) == null) {
            return null;
        }
        return hiB.Fmk();
    }

    public void JcM() {
        if (this.MuB && this.zR) {
            this.MuB = false;
            wE.Sj(this.dwU);
        }
    }

    public void Jcg(boolean z10) {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
        }
        HiB hiB2 = this.Jcg;
        if (hiB2 != null && z10) {
            hiB2.TzV();
        }
        FPG();
    }

    public void TzV() {
        if (this.MuB || !this.zR) {
            return;
        }
        Context applicationContext = dNu.Sj().getApplicationContext();
        this.MuB = true;
        wE.Sj(this.dwU, applicationContext);
    }

    public void WMZ() {
        com.bytedance.sdk.openadsdk.core.Ym.vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.Sj(13);
        }
    }

    public void vS(boolean z10) {
        this.xD = z10;
    }

    @Override
    public void EjP() {
        com.bytedance.sdk.openadsdk.core.aa.EjP.TKC tkc = this.vS;
        if (tkc != null) {
            tkc.aa();
            this.vS = null;
        }
        if (this.xD) {
            if (!"embeded_ad".equals(this.Mts)) {
                this.Jcg.Sj(this.Dq, (WeakReference<Context>) null, true);
            } else {
                this.Jcg.sU();
            }
            this.TKC.removeCallbacksAndMessages(null);
            this.f20428aa.clear();
            if (this.Zq) {
                JcM();
            }
        }
    }

    private void TKC(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        tkc.TKC(0);
        this.vS.Sj(tkc);
        this.fF = System.currentTimeMillis();
        this.Jcg.TKC(8);
        this.Jcg.TKC(0);
        Sj(new Runnable() {
            @Override
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).vS == null) {
                    return;
                }
                TKC.this.fF = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).Jcg.EjP(0);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).vS.Sj(true, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).uA, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) TKC.this).uvD);
            }
        });
        if (this.Zq) {
            TzV();
        }
    }

    public void sP(int i10, int i11) {
        Sj(i10, i11);
        HiB hiB = this.Jcg;
        if (hiB == null || i10 <= 0 || i11 <= 0) {
            return;
        }
        hiB.TKC(i10, i11);
        this.Jcg.Sj(i10, i11);
        Wjd();
    }

    public void Sj(final vS.Sj sj2) {
        HiB hiB;
        if (!this.Zq || (hiB = this.Jcg) == null) {
            return;
        }
        hiB.Sj(new vS.Sj() {
            @Override
            public void Sj(View view, int i10) {
                vS.Sj sj3 = sj2;
                if (sj3 != null) {
                    sj3.Sj(view, i10);
                }
            }
        });
    }

    @Override
    public void sP() {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
        }
        HiB hiB2 = this.Jcg;
        if (hiB2 != null) {
            hiB2.TzV();
        }
        FPG();
    }

    public void Sj(PAGNativeAd pAGNativeAd) {
        HiB hiB;
        if (!this.Zq || (hiB = this.Jcg) == null) {
            return;
        }
        hiB.Sj(pAGNativeAd);
    }

    @Override
    public void TKC() {
        Sj(true, 3);
    }

    private boolean TKC(int i10, int i11) {
        if (i11 == 0) {
            Sj();
            this.dNu = true;
            HiB hiB = this.Jcg;
            if (hiB != null) {
                hiB.Sj(this.Dq, (WeakReference<Context>) null, false);
            }
        }
        if (i11 != 4 && i11 != 0) {
            HiB hiB2 = this.Jcg;
            if (hiB2 != null) {
                hiB2.Sj();
            }
            Sj();
            this.dNu = true;
            this.TzV = false;
            HiB hiB3 = this.Jcg;
            if (hiB3 != null) {
                return hiB3.Sj(i10, this.Dq.UHs(), this.Wjd);
            }
        } else if (i11 == 4) {
            this.dNu = false;
            HiB hiB4 = this.Jcg;
            if (hiB4 != null) {
                hiB4.Zq();
            }
        }
        return true;
    }

    public void Sj(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return;
        }
        this.Ei = i10;
        this.HpB = i11;
    }

    private void EjP(int i10) {
        if (this.sdp == i10) {
            return;
        }
        this.sdp = i10;
        if (i10 != 4 && i10 != 0) {
            this.TzV = false;
        }
        if (!this.TzV && !Zq() && this.FPG) {
            TKC(2, i10);
        }
        WeakReference<Sj> weakReference = this.f20440jb;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f20440jb.get().Sj(this.sdp);
    }

    public void sP(long j10, long j11) {
        this.Dq.TKC(j10);
        this.uA = j10;
        this.Yf = j11;
        this.Jcg.Sj(j10, j11);
        this.Jcg.Sj(e6.a.a(j10, j11));
        try {
            b.InterfaceC0920b interfaceC0920b = this.ley;
            if (interfaceC0920b != null) {
                interfaceC0920b.Sj(j10, j11);
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj(this.Sj, "onProgressUpdate error: ", th2);
        }
        com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = this.Dq.GMp();
        if (sjGMp == null || sjGMp.Sj() == null) {
            return;
        }
        sjGMp.Sj().Sj(j10, j11, this.LqL);
    }

    public void Sj(sP sPVar) {
        this.f20439db = sPVar;
    }

    private void Sj(Context context) {
        ViewGroup fmk;
        if (this.Zq) {
            fmk = new sef(context);
        } else {
            fmk = new Fmk(context);
        }
        ViewGroup viewGroup = fmk;
        if (this.Zq) {
            this.Jcg = new HiB(context, viewGroup, true, 17, this.Dq, this, ib());
        } else {
            this.Jcg = new EjP(context, viewGroup, true, 17, this.Dq, this, false);
        }
        this.Jcg.Sj(this);
    }

    public com.bytedance.sdk.openadsdk.core.Ym.vS Sj(View view, List<Pair<View, FriendlyObstructionPurpose>> list) {
        if (!this.Dq.Ph()) {
            return null;
        }
        if (this.LqL == null) {
            this.LqL = com.bytedance.sdk.openadsdk.core.Ym.vS.Sj();
        }
        this.LqL.Sj(view, this.Dq.GMp().sef());
        if (list != null && list.size() > 0) {
            for (Pair<View, FriendlyObstructionPurpose> pair : list) {
                if (pair != null) {
                    Object obj = pair.second;
                    this.LqL.Sj((View) pair.first, obj == null ? FriendlyObstructionPurpose.OTHER : (FriendlyObstructionPurpose) obj);
                }
            }
        }
        return this.LqL;
    }

    public void TKC(int i10) {
        EjP(i10);
        if (i10 == 4) {
            this.dNu = false;
            sP();
        }
    }

    @Override
    public void Sj(b.a aVar) {
        this.Fm = new WeakReference<>(aVar);
    }

    @Override
    public boolean Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        if (this.vS != null) {
            ApmHelper.reportCustomError("", "twice playVideoUrl", new IllegalStateException());
            return true;
        }
        if (TextUtils.isEmpty(tkc.Fmk())) {
            return false;
        }
        sP(false);
        tkc.Fmk();
        sP(tkc);
        Yf();
        com.bytedance.sdk.openadsdk.core.Ym.vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.Sj(false, 0.0f);
        }
        if (!ib.sP(this.Mts) || this.uA <= 0) {
            this.uA = tkc.Jcg();
        }
        if (tkc.Jcg() <= 0) {
            this.f20429dx = false;
            this.sU.set(false);
        } else {
            long jJcg = tkc.Jcg();
            this.uA = jJcg;
            this.TEQ = Math.max(this.TEQ, jJcg);
        }
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
            if (this.qRN == 0) {
                this.Jcg.Jcg();
            }
            this.Jcg.TKC(tkc.HiB(), tkc.vS());
            this.Jcg.TKC(this.uP);
            this.Jcg.Sj(tkc.HiB(), tkc.vS());
        }
        if (this.vS == null) {
            com.bytedance.sdk.openadsdk.core.aa.EjP.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.aa.EjP.TKC();
            this.vS = tkc2;
            tkc2.Sj(this.ndK);
        }
        RiZ();
        this.JcM = 0L;
        try {
            TKC(tkc);
            return true;
        } catch (Exception e10) {
            Sj(new a6.a(-10, 0, e10.getMessage()));
            com.bytedance.sdk.component.utils.sU.sP(this.Sj, "[video] invoke NativeVideoController#playVideo cause exception :".concat(String.valueOf(e10)));
            return false;
        }
    }

    @Override
    public void Sj(boolean z10, int i10) {
        if (!this.f20429dx && this.sU.get()) {
            if (z10) {
                Zq.Sj sj2 = new Zq.Sj();
                sj2.Sj(HiB());
                sj2.TKC(Dq());
                sj2.sP(vS());
                sj2.TKC(i10);
                sj2.EjP(Jcg());
                com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, sj2, this.xhi);
                this.f20429dx = false;
            } else {
                LqL();
            }
        }
        EjP();
        com.bytedance.sdk.openadsdk.core.Ym.vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.EjP();
        }
    }

    @Override
    public void Sj(c cVar, View view) {
        com.bytedance.sdk.openadsdk.core.aa.EjP.TKC tkc = this.vS;
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
        Jcg(false);
        HiB hiB3 = this.Jcg;
        if (hiB3 != null) {
            hiB3.sP(false, false);
        }
    }

    @Override
    public void Sj(c cVar, View view, boolean z10) {
        HiB(!this.RiZ);
        if (this.Ym instanceof Activity) {
            HiB hiB = this.Jcg;
            if (hiB != null) {
                hiB.sP(this.uP);
                this.Jcg.TKC(false);
            }
            Sj(1);
            WeakReference<b.d> weakReference = this.wE;
            b.d dVar = weakReference != null ? weakReference.get() : null;
            if (dVar != null) {
                dVar.Sj(this.RiZ);
            }
        }
    }

    public void Sj(Sj sj2) {
        this.f20440jb = new WeakReference<>(sj2);
    }
}

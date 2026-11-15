package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import w5.b;

public class TzV extends RiZ implements b.a, b.c {
    int EjP;
    boolean HiB;
    private long JcM;
    int Jcg;
    private Zq LD;
    private com.bytedance.sdk.openadsdk.Sj.sP.TKC Mts;
    int Sj;
    boolean TKC;
    private long WMZ;
    private com.bytedance.sdk.openadsdk.multipro.sP.Sj fF;
    boolean sP;
    boolean vS;

    public TzV(@NonNull Context context, com.bytedance.sdk.openadsdk.core.model.sU sUVar, AdSlot adSlot, String str) {
        super(context, sUVar, adSlot, str, false, true);
        this.Sj = 1;
        this.sP = false;
        this.TKC = true;
        this.HiB = true;
        this.vS = true;
        this.Jcg = -1;
        Jcg();
    }

    public void TKC(@NonNull com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        if (Sj(sefVar, false)) {
            this.f20398aa.removeAllViews();
            if (this.LD != null) {
                int i10 = this.Jcg;
                if ((i10 == 7 || i10 == 10) && (sefVar instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.sP)) {
                    FrameLayout frameLayoutUvD = ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.sP) sefVar).uvD();
                    if (frameLayoutUvD != null) {
                        frameLayoutUvD.removeAllViews();
                        frameLayoutUvD.addView(this.LD, new FrameLayout.LayoutParams(-1, -1));
                    }
                } else if (sefVar.Sj() == null) {
                    this.f20398aa.addView(this.LD);
                } else if (this.vS) {
                    sefVar.Sj().setTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.vS, 1);
                    ((FrameLayout) sefVar.Sj()).removeAllViews();
                    ((FrameLayout) sefVar.Sj()).addView(this.LD, new FrameLayout.LayoutParams(-1, -1));
                    this.vS = false;
                }
                this.LD.Sj(0L, true, false);
                EjP(this.EjP);
                if (!com.bytedance.sdk.component.utils.TzV.EjP(this.Dq) && !this.TKC && this.HiB) {
                    this.LD.HiB();
                }
                if (TextUtils.equals("embeded_ad", this.uA)) {
                    return;
                }
                setShowAdInteractionView(false);
            }
        }
    }

    private void dNu() {
        try {
            this.fF = new com.bytedance.sdk.openadsdk.multipro.sP.Sj();
            Zq zq2 = new Zq(this.Dq, this.Ym, this.uA, this.wE);
            this.LD = zq2;
            zq2.setShouldCheckNetChange(false);
            this.LD.setControllerStatusCallBack(new com.bytedance.sdk.openadsdk.core.aa.sP.vS.sP() {
                @Override
                public void Sj(boolean z10, long j10, long j11, long j12, boolean z11) {
                    TzV.this.fF.Sj = z10;
                    TzV.this.fF.HiB = j10;
                    TzV.this.fF.vS = j11;
                    TzV.this.fF.Jcg = j12;
                    TzV.this.fF.EjP = z11;
                }
            });
            this.LD.setVideoAdLoadListener(this);
            this.LD.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.uA)) {
                this.LD.setIsAutoPlay(this.sP ? this.TEQ.isAutoPlay() : this.TKC);
            } else if ("open_ad".equals(this.uA)) {
                this.LD.setIsAutoPlay(true);
            } else {
                this.LD.setIsAutoPlay(this.TKC);
            }
            if ("open_ad".equals(this.uA)) {
                this.LD.Sj(true, "initVideo");
            } else {
                boolean zTKC = com.bytedance.sdk.openadsdk.core.dNu.EjP().TKC(String.valueOf(this.EjP));
                this.f20401ib = zTKC;
                this.LD.Sj(zTKC, "initVideo");
            }
            this.LD.EjP();
        } catch (Exception unused) {
            this.LD = null;
        }
    }

    private void setShowAdInteractionView(boolean z10) {
        Zq zq2 = this.LD;
        if (zq2 != null) {
            zq2.setShowAdInteractionView(z10);
        }
    }

    void EjP(int i10) {
        int iSP = com.bytedance.sdk.openadsdk.core.dNu.EjP().sP(i10);
        if (3 == iSP) {
            this.sP = false;
            this.TKC = false;
        } else if (4 == iSP) {
            this.sP = true;
        } else {
            int iTKC = com.bytedance.sdk.component.utils.TzV.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj());
            if (1 == iSP) {
                this.sP = false;
                this.TKC = Mts.EjP(iTKC);
            } else if (2 == iSP) {
                if (Mts.HiB(iTKC) || Mts.EjP(iTKC) || Mts.vS(iTKC)) {
                    this.sP = false;
                    this.TKC = true;
                }
            } else if (5 == iSP && (Mts.EjP(iTKC) || Mts.vS(iTKC))) {
                this.sP = false;
                this.TKC = true;
            }
        }
        if (this.TKC) {
            return;
        }
        this.Sj = 3;
    }

    protected void Jcg() {
        this.f20398aa = new FrameLayout(this.Dq);
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Ym;
        int iIf = sUVar != null ? sUVar.If() : 0;
        this.EjP = iIf;
        EjP(iIf);
        dNu();
        addView(this.f20398aa, new FrameLayout.LayoutParams(-1, -1));
        if (getWebView() != null) {
            getWebView().setBackgroundColor(0);
        }
        setVideoFrameChangeListener(new com.bytedance.sdk.openadsdk.aa.Jcg() {
            @Override
            public void Sj(final com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
                JcM.Sj(new Runnable() {
                    @Override
                    public void run() {
                        TzV.this.Sj(sefVar, true);
                    }
                });
            }
        });
    }

    @Override
    public void Sj() {
    }

    @Override
    public void d_() {
        this.HiB = false;
        this.Sj = 2;
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.Sj(null);
        }
    }

    @Override
    public void g_() {
        this.HiB = false;
        this.Fmk = true;
        this.Sj = 3;
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.sP(null);
        }
    }

    protected Zq getExpressVideoView() {
        return this.LD;
    }

    public com.bytedance.sdk.openadsdk.Sj.sP.TKC getVideoAdListener() {
        return this.Mts;
    }

    @Nullable
    public b getVideoController() {
        Zq zq2 = this.LD;
        if (zq2 != null) {
            return zq2.getNativeVideoController();
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.multipro.sP.Sj getVideoModel() {
        return this.fF;
    }

    @Override
    public void h_() {
        this.HiB = false;
        this.Fmk = false;
        this.Sj = 2;
    }

    @Override
    public void i_() {
        this.HiB = false;
        this.Sj = 5;
        com.bytedance.sdk.component.adexpress.sP.sP sPVar = this.LqL;
        if (sPVar != null && sPVar.sP() != null) {
            this.LqL.sP().onvideoComplate();
        }
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.TKC(null);
        }
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) {
            ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) ejP).onvideoComplate();
        }
    }

    @Override
    public void sP() {
    }

    public void setVideoAdListener(com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc) {
        this.Mts = tkc;
    }

    private void sP(final com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        if (sefVar == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                TzV.this.TKC(sefVar);
            }
        });
    }

    private void sP(long j10, long j11) {
        int iAbs = (int) Math.abs(((long) this.TzV) - j10);
        int i10 = this.TzV;
        if (i10 < 0 || iAbs > 500 || i10 > j11 || iAbs >= 500 || this.sU.contains(this.RiZ)) {
            return;
        }
        if (this.TzV > j10) {
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    TzV.this.LD.setCanInterruptVideoPlay(true);
                    TzV.this.LD.performClick();
                    TzV tzV = TzV.this;
                    tzV.sP(tzV.TzV, tzV.RiZ);
                }
            }, iAbs);
        } else {
            this.LD.setCanInterruptVideoPlay(true);
            this.LD.performClick();
            sP(this.TzV, this.RiZ);
        }
        this.sU.add(this.RiZ);
    }

    @Override
    public void Sj(com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
        this.Yf = ejP;
        this.Jcg = ejP.TKC();
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP2 = this.Yf;
        if ((ejP2 instanceof ib) && ((ib) ejP2).uvD() != null) {
            ((ib) this.Yf).uvD().Sj((sef) this);
        }
        if (sefVar != null && sefVar.TKC()) {
            sP(sefVar);
        }
        super.Sj(ejP, sefVar);
    }

    public boolean Sj(com.bytedance.sdk.component.adexpress.sP.sef sefVar, boolean z10) {
        int i10;
        double dVS = sefVar.vS();
        double dJcg = sefVar.Jcg();
        double dDq = sefVar.Dq();
        double dUA = sefVar.uA();
        if ((dDq == 0.0d || dUA == 0.0d) && (i10 = this.Jcg) != 7 && i10 != 10 && i10 != 9) {
            return false;
        }
        int iSP = FPG.sP(this.Dq, (float) dVS);
        int iSP2 = FPG.sP(this.Dq, (float) dJcg);
        int iSP3 = FPG.sP(this.Dq, (float) dDq);
        int iSP4 = FPG.sP(this.Dq, (float) dUA);
        float fMin = Math.min(Math.min(FPG.sP(this.Dq, sefVar.aa()), FPG.sP(this.Dq, sefVar.Fmk())), Math.min(FPG.sP(this.Dq, sefVar.sef()), FPG.sP(this.Dq, sefVar.Zq())));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f20398aa.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(iSP3, iSP4);
        }
        layoutParams.width = iSP3;
        layoutParams.height = iSP4;
        layoutParams.topMargin = iSP2;
        layoutParams.leftMargin = iSP;
        layoutParams.setMarginStart(iSP);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        this.f20398aa.setLayoutParams(layoutParams);
        FPG.sP(this.f20398aa, fMin);
        Zq zq2 = this.LD;
        if (zq2 == null || !z10) {
            return true;
        }
        zq2.Sj(iSP3, iSP4);
        return true;
    }

    @Override
    public int EjP() {
        Zq zq2;
        if (this.Sj == 3 && (zq2 = this.LD) != null) {
            zq2.EjP();
        }
        Zq zq3 = this.LD;
        if (zq3 == null || !zq3.getNativeVideoController().uvD()) {
            return this.Sj;
        }
        return 1;
    }

    @Override
    public void HiB() {
    }

    @Override
    public long TKC() {
        return this.JcM;
    }

    @Override
    public void Sj(boolean z10, String str) {
        Zq zq2 = this.LD;
        if (zq2 != null) {
            zq2.Sj(z10, str);
            setSoundMute(z10);
        }
    }

    @Override
    public void Sj(int i10) {
        Zq zq2 = this.LD;
        if (zq2 == null) {
            return;
        }
        if (i10 == 1) {
            zq2.Sj(0L, true, false);
            return;
        }
        if (i10 == 2 || i10 == 3) {
            zq2.setCanInterruptVideoPlay(true);
            this.LD.performClick();
        } else if (i10 == 4) {
            zq2.getNativeVideoController().EjP();
        } else {
            if (i10 != 5) {
                return;
            }
            zq2.Sj(0L, true, false);
        }
    }

    @Override
    public void Sj(View view, int i10, com.bytedance.sdk.component.adexpress.TKC tkc) {
        if (i10 == -1 || tkc == null) {
            return;
        }
        if (i10 == 11) {
            try {
                Zq zq2 = this.LD;
                if (zq2 != null) {
                    zq2.setCanInterruptVideoPlay(true);
                    this.LD.performClick();
                    if (this.Fmk) {
                        this.LD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f20521vb).setVisibility(0);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        super.Sj(view, i10, tkc);
    }

    @Override
    public void Sj(long j10, long j11) {
        this.HiB = false;
        int i10 = this.Sj;
        if (i10 != 5 && i10 != 3 && j10 > this.JcM) {
            this.Sj = 2;
        }
        this.JcM = j10;
        this.WMZ = j11;
        com.bytedance.sdk.component.adexpress.sP.sP sPVar = this.LqL;
        if (sPVar != null && sPVar.sP() != null) {
            this.LqL.sP().setTimeUpdate(((int) (j11 - j10)) / 1000);
        }
        com.bytedance.sdk.component.adexpress.sP.EjP<? extends View> ejP = this.Yf;
        if (ejP instanceof com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) {
            ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC) ejP).setTimeUpdate(((int) (j11 - j10)) / 1000);
        }
        sP(j10, j11);
    }

    @Override
    public void Sj(int i10, int i11) {
        this.JcM = this.WMZ;
        this.Sj = 4;
        com.bytedance.sdk.openadsdk.Sj.sP.TKC tkc = this.Mts;
        if (tkc != null) {
            tkc.Sj(i10, i11);
        }
    }

    @Override
    public void Sj(int i10, String str) {
        this.TzV = i10;
        this.RiZ = str;
    }
}

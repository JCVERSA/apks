package com.bytedance.sdk.openadsdk.core.aa.sP;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.Dq.ib;
import com.bytedance.sdk.openadsdk.core.LD;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import w5.b;
import w5.c;

@SuppressLint({"ViewConstructor"})
public class vS extends com.bytedance.sdk.openadsdk.core.HiB.TKC implements b.InterfaceC0920b, LqL.Sj, TKC.Sj {

    private static final Integer f20441dx = 0;
    private static final Integer zR = 1;
    protected ImageView Dq;
    private boolean Ei;
    protected boolean EjP;
    private View FPG;
    private final AtomicBoolean Fm;
    protected int Fmk;
    public boolean HiB;
    private final AtomicBoolean HpB;
    private long JcM;
    protected RelativeLayout Jcg;
    private final Handler LD;
    private long LqL;
    private final String Mts;
    private boolean RiZ;
    protected final sU Sj;
    protected ImageView TEQ;
    protected FrameLayout TKC;
    private boolean TzV;
    private boolean WMZ;
    private b.c Wjd;
    private final boolean Yf;
    protected boolean Ym;
    public sP Zq;

    protected String f20442aa;
    private ViewGroup dNu;
    private boolean fF;

    private String f20443ib;

    private final Runnable f20444jb;
    private boolean kF;
    private boolean ley;
    protected b sP;
    private String sU;
    boolean sef;
    protected ImageView uA;
    private boolean uP;
    private final Context uvD;
    public Jcg vS;
    private boolean wE;
    private ViewTreeObserver.OnGlobalLayoutListener xD;
    private final ViewTreeObserver.OnScrollChangedListener xhi;

    public interface Sj {
        void Sj(View view, int i10);
    }

    public interface sP {
        void Sj(boolean z10, long j10, long j11, long j12, boolean z11);
    }

    public vS(@NonNull Context context, @NonNull sU sUVar, boolean z10, Jcg jcg) {
        this(context, sUVar, z10, "embeded_ad", false, false, jcg);
    }

    private void EjP() {
        Sj(0L, 0);
        this.Wjd = null;
    }

    private void HiB() {
        addView(Sj(this.uvD));
        TzV();
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View view) {
                vS.this.dNu();
            }

            @Override
            public void onViewDetachedFromWindow(View view) {
                vS.this.dNu();
            }
        });
    }

    private void JcM() {
        FPG.HiB(this.uA);
        FPG.HiB(this.Jcg);
    }

    private boolean LD() {
        return 5 == dNu.EjP().sP(this.Sj.If());
    }

    private void LqL() {
        if (this.sP == null || fF()) {
            return;
        }
        if ((!kF() || com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_is_update_flag", false)) && kF()) {
            long jDq = this.sP.Dq();
            long jVS = this.sP.vS() + jDq;
            boolean zSj = com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_native_video_complete", false);
            long jSj = com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_current_play_position", 0L);
            long jSj2 = com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_total_play_duration", jVS);
            long jSj3 = com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_duration", jDq);
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.FALSE);
            this.sP.sP(zSj);
            this.sP.Sj(jSj);
            this.sP.sP(jSj2);
            this.sP.TKC(jSj3);
        }
    }

    private void RiZ() {
        b bVar = this.sP;
        if (bVar == null) {
            return;
        }
        bVar.TKC(this.TzV);
        ((TKC) this.sP).Sj((TKC.Sj) this);
        this.sP.Sj(this);
    }

    private void TzV() {
        this.sP = new TKC(this.uvD, this.TKC, this.Sj, this.f20442aa, !fF(), this.uP, this.wE, this.vS);
        RiZ();
        if (this.xD == null) {
            this.xD = new ViewTreeObserver.OnGlobalLayoutListener() {
                @Override
                public void onGlobalLayout() {
                    vS vSVar;
                    b bVar;
                    if (vS.this.dNu == null || vS.this.dNu.getViewTreeObserver() == null || (bVar = (vSVar = vS.this).sP) == null) {
                        return;
                    }
                    ((TKC) bVar).Sj(vSVar.dNu.getWidth(), vS.this.dNu.getHeight());
                    vS.this.dNu.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    vS.this.xD = null;
                }
            };
            this.dNu.getViewTreeObserver().addOnGlobalLayoutListener(this.xD);
        }
    }

    private boolean Yf() {
        return 2 == dNu.EjP().sP(this.Sj.If());
    }

    public void dNu() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Handler handler = this.LD;
        if (handler == null || jElapsedRealtime - this.JcM <= 500) {
            return;
        }
        this.JcM = jElapsedRealtime;
        handler.sendEmptyMessageDelayed(1, 500L);
    }

    private void dx() {
        this.Zq = null;
        if ((this.sP instanceof TKC) && !fF()) {
            ((TKC) this.sP).JcM();
        }
        TEQ();
        Sj(false);
        zR();
    }

    private boolean fF() {
        return this.RiZ;
    }

    private void ib() {
        this.fF = Ym();
        JcM.Sj(this.f20444jb);
    }

    private boolean kF() {
        sU sUVar = this.Sj;
        if (sUVar == null) {
            return false;
        }
        return sUVar.Ms();
    }

    private void ley() {
        this.LD.removeMessages(1);
        sef.TKC().removeCallbacks(this.f20444jb);
    }

    private void sU() {
        b bVar = this.sP;
        if (bVar == null) {
            TzV();
        } else if ((bVar instanceof TKC) && !fF()) {
            ((TKC) this.sP).TzV();
        }
        if (this.sP == null || !this.Fm.get()) {
            return;
        }
        this.Fm.set(false);
        sP();
        if (!Dq()) {
            if (this.sP.Zq()) {
                this.sP.Zq();
                sP(true);
                return;
            } else {
                Jcg();
                FPG.Sj((View) this.Jcg, 0);
                return;
            }
        }
        FPG.Sj((View) this.Jcg, 8);
        ImageView imageView = this.uA;
        if (imageView != null) {
            FPG.Sj((View) imageView, 8);
        }
        sU sUVar = this.Sj;
        if (sUVar == null || sUVar.UHs() == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(this.Sj.Gn()).TKC(), this.Sj);
        sPVarSj.sP(this.Sj.aZ());
        sPVarSj.Sj(this.dNu.getWidth());
        sPVarSj.sP(this.dNu.getHeight());
        sPVarSj.TKC(this.Sj.mZN());
        sPVarSj.Sj(0L);
        sPVarSj.Sj(uA());
        Sj(sPVarSj);
        this.sP.Sj(sPVarSj);
        this.sP.sP(false);
    }

    private boolean uP() {
        if (fF() || !kF()) {
            return false;
        }
        return com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_is_from_detail_page", false) || com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_isfromvideodetailpage", false);
    }

    private void wE() {
        if (fF() || !kF()) {
            return;
        }
        Boolean bool = Boolean.FALSE;
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_isfromvideodetailpage", bool);
        com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("sp_multi_native_video_data", "key_video_is_from_detail_page", bool);
    }

    private void zR() {
        if (!this.Fm.get()) {
            this.Fm.set(true);
            b bVar = this.sP;
            if (bVar != null) {
                bVar.Sj(true, 3);
            }
        }
        this.HpB.set(false);
    }

    public boolean Dq() {
        return this.TzV;
    }

    public void Fmk() {
        if (getNativeVideoController() == null || !(getNativeVideoController() instanceof TKC)) {
            return;
        }
        TKC tkc = (TKC) getNativeVideoController();
        tkc.Sj(tkc.Fmk(), this);
    }

    public void Jcg() {
        View view;
        if (this.uvD == null || (view = this.FPG) == null || view.getParent() == null || this.Sj == null || this.Jcg != null) {
            return;
        }
        ViewParent parent = this.FPG.getParent();
        RelativeLayout relativeLayoutSP = sP(this.uvD);
        if (parent != null && (parent instanceof ViewGroup)) {
            Sj(relativeLayoutSP, (ViewGroup) parent, this.FPG);
        }
        this.Jcg = relativeLayoutSP;
        if (this.Ym) {
            FPG.Sj((View) this.TEQ, 0);
        }
        if (this.Sj.UHs() != null && this.Sj.UHs().r() != null) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.Sj.UHs().r(), this.Sj.UHs().t(), this.Sj.UHs().C(), this.Dq, this.Sj);
        }
        ImageView imageView = this.TEQ;
        if (imageView != null) {
            imageView.setClickable(true);
            this.TEQ.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view2) {
                    vS.this.TKC();
                }
            });
        }
    }

    @Override
    public void Sj() {
    }

    public void TEQ() {
        c cVarFmk;
        b bVar = this.sP;
        if (bVar == null || (cVarFmk = bVar.Fmk()) == null) {
            return;
        }
        cVarFmk.Sj();
        View viewTKC = cVarFmk.TKC();
        if (viewTKC != null) {
            viewTKC.setVisibility(8);
            if (viewTKC.getParent() != null) {
                ((ViewGroup) viewTKC.getParent()).removeView(viewTKC);
            }
        }
    }

    boolean Ym() {
        return LD.Sj(this, 50, ib.sP(this.f20442aa) ? 1 : 5);
    }

    public void Zq() {
        sU sUVar = this.Sj;
        if (sUVar == null || sUVar.GMp() == null) {
            return;
        }
        this.Sj.GMp().Zq();
        this.Sj.GMp().Sj().HiB(this.LqL);
    }

    public boolean aa() {
        boolean z10 = false;
        if (TzV.TKC(dNu.Sj()) == 0) {
            return false;
        }
        if (this.sP.aa() != null && this.sP.aa().vS()) {
            Sj(false, f20441dx.intValue());
            Handler handler = this.LD;
            z10 = true;
            if (handler != null) {
                handler.removeMessages(1);
            }
        }
        return z10;
    }

    public double getCurrentPlayTime() {
        b bVar = this.sP;
        if (bVar != null) {
            return (bVar.HiB() * 1.0d) / 1000.0d;
        }
        return 0.0d;
    }

    public b getNativeVideoController() {
        return this.sP;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        sU();
        getViewTreeObserver().addOnScrollChangedListener(this.xhi);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dx();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.xhi);
        }
        ViewGroup viewGroup = this.dNu;
        if (viewGroup == null || this.xD == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver2 = viewGroup.getViewTreeObserver();
        if (viewTreeObserver2.isAlive()) {
            viewTreeObserver2.removeOnGlobalLayoutListener(this.xD);
            this.xD = null;
        }
    }

    @Override
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        sU();
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        sP sPVar;
        b bVar;
        if (!this.RiZ && (sPVar = this.Zq) != null && (bVar = this.sP) != null) {
            sPVar.Sj(bVar.Zq(), this.sP.Dq(), this.sP.uA(), this.sP.HiB(), this.TzV);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        dx();
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        b bVar;
        b bVar2;
        b bVar3;
        b bVar4;
        if ("open_ad".equals(this.f20442aa)) {
            ley();
            return;
        }
        this.kF = z10;
        super.onWindowFocusChanged(z10);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(this.Sj, z10);
        LqL();
        if (uP() && (bVar4 = this.sP) != null && bVar4.Zq()) {
            wE();
            FPG.Sj((View) this.Jcg, 8);
            sP(true);
            EjP();
            return;
        }
        sP();
        if (!fF() && Dq() && (bVar2 = this.sP) != null && !bVar2.Ym()) {
            if (this.LD != null) {
                if (z10 && (bVar3 = this.sP) != null && !bVar3.Zq()) {
                    this.LD.obtainMessage(1).sendToTarget();
                    return;
                } else {
                    ley();
                    Sj(false, f20441dx.intValue());
                    return;
                }
            }
            return;
        }
        if (Dq()) {
            return;
        }
        if (!z10 && (bVar = this.sP) != null && bVar.aa() != null && this.sP.aa().vS()) {
            ley();
            Sj(false, f20441dx.intValue());
        } else if (z10) {
            this.LD.obtainMessage(1).sendToTarget();
        }
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        b bVar;
        sU sUVar;
        b bVar2;
        b bVar3;
        super.onWindowVisibilityChanged(i10);
        LqL();
        if (this.Ei) {
            this.Ei = i10 == 0;
        }
        if (uP() && (bVar3 = this.sP) != null && bVar3.Zq()) {
            wE();
            FPG.Sj((View) this.Jcg, 8);
            sP(true);
            EjP();
            return;
        }
        sP();
        if (fF() || !Dq() || (bVar = this.sP) == null || bVar.Ym() || (sUVar = this.Sj) == null) {
            return;
        }
        if (this.ley && sUVar.UHs() != null) {
            this.Sj.UHs();
            com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(this.Sj.Gn()).TKC(), this.Sj);
            sPVarSj.sP(this.Sj.aZ());
            sPVarSj.Sj(this.dNu.getWidth());
            sPVarSj.sP(this.dNu.getHeight());
            sPVarSj.TKC(this.Sj.mZN());
            sPVarSj.Sj(this.LqL);
            sPVarSj.Sj(uA());
            Sj(sPVarSj);
            this.sP.Sj(sPVarSj);
            this.ley = false;
            FPG.Sj((View) this.Jcg, 8);
        }
        if (i10 != 0 || this.LD == null || (bVar2 = this.sP) == null || bVar2.Zq()) {
            return;
        }
        this.LD.obtainMessage(1).sendToTarget();
    }

    @Override
    public void sP(long j10, int i10) {
    }

    public void sef() {
        if (TzV.TKC(dNu.Sj()) != 0 && Ym()) {
            if (this.sP.aa() != null && this.sP.aa().Jcg()) {
                Sj(true, zR.intValue());
                sP();
                Handler handler = this.LD;
                if (handler != null) {
                    handler.sendEmptyMessageDelayed(1, 500L);
                    return;
                }
                return;
            }
            if (Dq() || this.HpB.get()) {
                return;
            }
            this.HpB.set(true);
            JcM();
            sU sUVar = this.Sj;
            if (sUVar != null && sUVar.UHs() != null) {
                JcM();
                this.Sj.UHs();
                com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(this.Sj.Gn()).TKC(), this.Sj);
                sPVarSj.sP(this.Sj.aZ());
                sPVarSj.Sj(this.dNu.getWidth());
                sPVarSj.sP(this.dNu.getHeight());
                sPVarSj.TKC(this.Sj.mZN());
                sPVarSj.Sj(this.LqL);
                sPVarSj.Sj(uA());
                sPVarSj.Sj(CacheDirFactory.getICacheDir(this.Sj.Gn()).TKC());
                Sj(sPVarSj);
                this.sP.Sj(sPVarSj);
            }
            Handler handler2 = this.LD;
            if (handler2 != null) {
                handler2.sendEmptyMessageDelayed(1, 500L);
            }
            Sj(false);
        }
    }

    public void setAdCreativeClickListener(Sj sj2) {
        b bVar = this.sP;
        if (bVar != null) {
            ((TKC) bVar).Sj(sj2);
        }
    }

    public void setControllerStatusCallBack(sP sPVar) {
        this.Zq = sPVar;
    }

    public void setIsAutoPlay(boolean z10) {
        if (this.WMZ) {
            return;
        }
        int iSP = dNu.EjP().sP(this.Sj.If());
        if (z10 && iSP != 4 && (!TzV.HiB(this.uvD) ? !(!TzV.vS(this.uvD) ? TzV.EjP(this.uvD) : Yf() || LD()) : !Yf())) {
            z10 = false;
        }
        this.TzV = z10;
        b bVar = this.sP;
        if (bVar != null) {
            bVar.TKC(z10);
        }
        if (this.TzV) {
            FPG.Sj((View) this.Jcg, 8);
        } else {
            Jcg();
            RelativeLayout relativeLayout = this.Jcg;
            if (relativeLayout != null) {
                FPG.Sj((View) relativeLayout, 0);
                sU sUVar = this.Sj;
                if (sUVar != null && sUVar.UHs() != null) {
                    com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.Sj.UHs().r(), this.Sj.UHs().t(), this.Sj.UHs().C(), this.Dq, this.Sj);
                }
            }
        }
        this.WMZ = true;
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z10) {
        this.Ym = z10;
    }

    public void setVideoAdClickListenerTTNativeAd(PAGNativeAd pAGNativeAd) {
        b bVar = this.sP;
        if (bVar != null) {
            ((TKC) bVar).Sj(pAGNativeAd);
        }
    }

    public void setVideoAdInteractionListener(b.c cVar) {
        this.Wjd = cVar;
    }

    public void setVideoAdLoadListener(b.a aVar) {
        b bVar = this.sP;
        if (bVar != null) {
            bVar.Sj(aVar);
        }
    }

    public void setVideoCacheUrl(String str) {
        this.sU = str;
    }

    public void setVideoPlayCallback(com.bytedance.sdk.openadsdk.core.aa.sP.sP sPVar) {
        b bVar = this.sP;
        if (bVar != null) {
            ((TKC) bVar).Sj(sPVar);
        }
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 4 || i10 == 8) {
            zR();
        }
    }

    public boolean uA() {
        return this.EjP;
    }

    @Override
    public void vS() {
        b.c cVar = this.Wjd;
        if (cVar != null) {
            cVar.d_();
        }
    }

    public vS(@NonNull Context context, @NonNull sU sUVar, String str, boolean z10, boolean z11, Jcg jcg) {
        this(context, sUVar, false, str, z10, z11, jcg);
    }

    protected void TKC() {
        if (aa()) {
            return;
        }
        sef();
    }

    public vS(@NonNull Context context, @NonNull sU sUVar, Jcg jcg) {
        this(context, sUVar, false, jcg);
    }

    protected void sP() {
        sU sUVar = this.Sj;
        if (sUVar == null) {
            return;
        }
        int iIf = sUVar.If();
        int iSP = dNu.EjP().sP(iIf);
        int iTKC = TzV.TKC(dNu.Sj());
        if (iSP == 1) {
            this.TzV = Mts.EjP(iTKC);
        } else if (iSP == 2) {
            this.TzV = Mts.HiB(iTKC) || Mts.EjP(iTKC) || Mts.vS(iTKC);
        } else if (iSP == 3) {
            this.TzV = false;
        } else if (iSP == 4) {
            this.sef = true;
        } else if (iSP == 5) {
            this.TzV = Mts.EjP(iTKC) || Mts.vS(iTKC);
        }
        if (!this.RiZ) {
            if (!this.HiB || !ib.sP(this.f20442aa)) {
                this.EjP = dNu.EjP().TKC(String.valueOf(iIf));
            }
        } else {
            this.EjP = false;
        }
        if ("open_ad".equals(this.f20442aa)) {
            this.TzV = true;
            this.EjP = true;
        }
        b bVar = this.sP;
        if (bVar != null) {
            bVar.TKC(this.TzV);
        }
        this.HiB = true;
    }

    public vS(@NonNull Context context, @NonNull sU sUVar, boolean z10, String str, boolean z11, boolean z12, Jcg jcg) {
        super(context);
        this.TzV = true;
        this.EjP = true;
        this.RiZ = false;
        this.HiB = false;
        this.kF = true;
        this.uP = false;
        this.wE = true;
        this.Ym = true;
        this.f20442aa = "embeded_ad";
        this.Fmk = 50;
        this.ley = true;
        this.Yf = false;
        this.LD = new LqL(sef.sP().getLooper(), this);
        this.WMZ = false;
        this.Mts = Build.MODEL;
        this.sef = false;
        this.Fm = new AtomicBoolean(false);
        this.f20444jb = new Runnable() {
            @Override
            public void run() {
                vS vSVar = vS.this;
                vSVar.Sj(vSVar.fF, vS.f20441dx.intValue());
            }
        };
        this.Ei = true;
        this.HpB = new AtomicBoolean(false);
        this.xhi = new ViewTreeObserver.OnScrollChangedListener() {
            @Override
            public void onScrollChanged() {
                vS.this.dNu();
            }
        };
        try {
            if (sUVar.rB()) {
                this.f20443ib = CacheDirFactory.getICacheDir(0).sP();
            }
        } catch (Throwable unused) {
        }
        if (jcg != null) {
            this.vS = jcg;
        }
        this.f20442aa = str;
        this.uvD = context;
        this.Sj = sUVar;
        this.RiZ = z10;
        setContentDescription("NativeVideoTsView");
        this.uP = z11;
        this.wE = z12;
        sP();
        HiB();
    }

    @Override
    public void Sj(long j10, int i10) {
        b.c cVar = this.Wjd;
        if (cVar != null) {
            cVar.i_();
        }
    }

    @Override
    public void Sj(long j10, long j11) {
        b.c cVar = this.Wjd;
        if (cVar != null) {
            cVar.Sj(j10, j11);
        }
    }

    private View Sj(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        new FrameLayout.LayoutParams(-1, -1).gravity = 17;
        frameLayout.setVisibility(8);
        this.dNu = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams);
        frameLayout.addView(frameLayout2);
        this.TKC = frameLayout2;
        View view = new View(context);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(view);
        this.FPG = view;
        return frameLayout;
    }

    private RelativeLayout sP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        jcg.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        jcg.setVisibility(8);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        ejP.setLayoutParams(layoutParams);
        ejP.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.Dq = ejP;
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        ejP2.setLayoutParams(layoutParams2);
        ejP2.setVisibility(8);
        ejP2.setBackground(com.bytedance.sdk.component.utils.ib.TKC(context, "tt_new_play_video"));
        this.TEQ = ejP2;
        jcg.addView(ejP);
        jcg.addView(ejP2);
        return jcg;
    }

    private void Sj(View view, ViewGroup viewGroup, View view2) {
        int iIndexOfChild = viewGroup.indexOfChild(view2);
        viewGroup.removeViewInLayout(view2);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }

    public boolean Sj(long j10, boolean z10, boolean z11) {
        boolean zSj = false;
        this.dNu.setVisibility(0);
        this.LqL = j10;
        if (!fF()) {
            return true;
        }
        this.sP.Sj(false);
        sU sUVar = this.Sj;
        if (sUVar != null && sUVar.UHs() != null) {
            com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(this.Sj.Gn()).TKC(), this.Sj);
            sPVarSj.sP(this.Sj.aZ());
            sPVarSj.Sj(this.dNu.getWidth());
            sPVarSj.sP(this.dNu.getHeight());
            sPVarSj.TKC(this.Sj.mZN());
            sPVarSj.Sj(j10);
            sPVarSj.Sj(uA());
            Sj(sPVarSj);
            if (z11) {
                this.sP.sP(sPVarSj);
                return true;
            }
            zSj = this.sP.Sj(sPVarSj);
        }
        if (((j10 > 0 && !z10 && !z11) || (j10 > 0 && z10)) && this.sP != null) {
            Zq.Sj sj2 = new Zq.Sj();
            sj2.Sj(this.sP.HiB());
            sj2.TKC(this.sP.Dq());
            sj2.sP(this.sP.vS());
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(this.sP.Fmk(), sj2);
        }
        return zSj;
    }

    public void sP(boolean z10) {
        b bVar = this.sP;
        if (bVar != null) {
            bVar.sP(z10);
            c cVarFmk = this.sP.Fmk();
            if (cVarFmk != null) {
                cVarFmk.sP();
                View viewTKC = cVarFmk.TKC();
                if (viewTKC != null) {
                    if (viewTKC.getParent() != null) {
                        ((ViewGroup) viewTKC.getParent()).removeView(viewTKC);
                    }
                    viewTKC.setVisibility(0);
                    addView(viewTKC);
                    cVarFmk.Sj(this.Sj, new WeakReference(this.uvD), false);
                }
            }
        }
    }

    @Override
    public void Sj(Message message) {
        if (message.what == 1) {
            ib();
        }
    }

    public void Sj(boolean z10, int i10) {
        if (this.Sj == null || this.sP == null) {
            return;
        }
        boolean zUP = uP();
        wE();
        if (zUP && this.sP.Zq()) {
            this.sP.Zq();
            sP(true);
            EjP();
            return;
        }
        if (z10 && this.kF && !this.sP.Zq() && !this.sP.Ym()) {
            if (this.sP.aa() != null && this.sP.aa().Jcg()) {
                if (this.TzV || i10 == 1) {
                    b bVar = this.sP;
                    if (bVar != null) {
                        Sj(bVar.sef(), "changeVideoStatus");
                    }
                    if ("ALP-AL00".equals(this.Mts)) {
                        this.sP.sP();
                    } else {
                        if (!uA.sP().dNu()) {
                            zUP = true;
                        }
                        ((TKC) this.sP).Jcg(zUP);
                    }
                    Sj(false);
                    b.c cVar = this.Wjd;
                    if (cVar != null) {
                        cVar.h_();
                        return;
                    }
                    return;
                }
                return;
            }
            if (this.TzV && this.sP.aa() == null) {
                if (!this.Fm.get()) {
                    this.Fm.set(true);
                }
                this.HpB.set(false);
                sU();
                return;
            }
            return;
        }
        if (this.sP.aa() == null || !this.sP.aa().vS()) {
            return;
        }
        this.sP.Sj();
        Sj(true);
        b.c cVar2 = this.Wjd;
        if (cVar2 != null) {
            cVar2.g_();
        }
    }

    public void Sj(boolean z10, String str) {
        this.EjP = z10;
        b bVar = this.sP;
        if (bVar != null) {
            bVar.Sj(z10, str);
        }
    }

    @Override
    public void Sj(int i10) {
        sP();
    }

    protected void Sj(boolean z10) {
        if (this.uA == null) {
            this.uA = new ImageView(getContext());
            if (uA.sP().TzV() != null) {
                this.uA.setImageBitmap(uA.sP().TzV());
            } else {
                this.uA.setImageResource(com.bytedance.sdk.component.utils.ib.EjP(dNu.Sj(), "tt_new_play_video"));
            }
            this.uA.setScaleType(ImageView.ScaleType.FIT_XY);
            int iSP = FPG.sP(getContext(), this.Fmk);
            int iSP2 = FPG.sP(getContext(), 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iSP, iSP);
            layoutParams.gravity = 17;
            layoutParams.rightMargin = iSP2;
            layoutParams.bottomMargin = iSP2;
            this.dNu.addView(this.uA, layoutParams);
            this.uA.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    vS.this.sef();
                }
            });
        }
        if (z10) {
            this.uA.setVisibility(0);
        } else {
            this.uA.setVisibility(8);
        }
    }

    public com.bytedance.sdk.openadsdk.core.Ym.vS Sj(List<Pair<View, FriendlyObstructionPurpose>> list) {
        b bVar = this.sP;
        if (bVar instanceof TKC) {
            return ((TKC) bVar).Sj(this, list);
        }
        return null;
    }

    private void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        try {
            if (this.Sj.rB()) {
                tkc.Sj(this.f20443ib);
            }
        } catch (Throwable unused) {
        }
    }
}

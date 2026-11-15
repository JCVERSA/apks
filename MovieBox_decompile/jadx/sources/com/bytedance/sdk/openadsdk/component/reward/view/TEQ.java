package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.adexpress.sP.sef;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.reward.Sj.uvD;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.Fmk;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class TEQ {
    View Dq;
    final sU EjP;
    ImageView HiB;
    View Jcg;
    private final String RiZ;
    ImageView TEQ;
    protected final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj TKC;
    private final boolean TzV;
    RelativeLayout Ym;
    public TzV Zq;

    uvD f20394aa;

    private boolean f20395dx;
    final Activity sP;
    private int sU;
    PAGLogoView uA;
    com.bytedance.sdk.openadsdk.core.HiB.vS uvD;
    FrameLayout vS;
    private TKC zR;
    int Sj = 3;
    protected int Fmk = 0;
    protected final AtomicBoolean sef = new AtomicBoolean(false);
    Runnable dNu = new Runnable() {
        @Override
        public void run() {
            ImageView imageView;
            try {
                sU sUVar = TEQ.this.EjP;
                if ((sUVar == null || !sUVar.Fqk()) && (imageView = TEQ.this.HiB) != null) {
                    int[] iArr = new int[2];
                    imageView.getLocationOnScreen(iArr);
                    TEQ.this.TKC.Mts.Sj(iArr[0]);
                }
            } catch (Exception unused) {
            }
        }
    };

    public TEQ(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.TKC = sj2;
        this.sP = sj2.Fm;
        this.EjP = sj2.sP;
        this.RiZ = sj2.HiB;
        this.TzV = sj2.EjP;
    }

    private void TzV() {
        RelativeLayout relativeLayout;
        TKC tkc = (TKC) this.TKC.xD.findViewById(Zq.f20511aa);
        this.zR = tkc;
        tkc.Sj(this.TKC);
        this.uA = (PAGLogoView) this.TKC.xD.findViewById(520093757);
        this.TEQ = (ImageView) this.TKC.xD.findViewById(Zq.Ss);
        this.HiB = (ImageView) this.TKC.xD.findViewById(520093708);
        this.vS = (FrameLayout) this.TKC.xD.findViewById(Zq.Ym);
        this.Jcg = this.TKC.xD.findViewById(Zq.dNu);
        this.Dq = this.TKC.xD.findViewById(Zq.TO);
        this.Ym = (RelativeLayout) this.TKC.xD.findViewById(Zq.TT);
        uvD uvd = this.f20394aa;
        if (uvd == null || uvd.EjP() == null || (relativeLayout = this.Ym) == null) {
            return;
        }
        relativeLayout.addView(this.f20394aa.EjP(), new LinearLayout.LayoutParams(-1, -1));
        this.f20394aa.sP();
    }

    protected void Dq() {
        TKC tkc = this.zR;
        if (tkc == null) {
            return;
        }
        tkc.Sj();
    }

    public void EjP() {
        FPG.Sj((View) this.vS, 8);
        FPG.Sj(this.Jcg, 8);
        FPG.Sj(this.Dq, 8);
        sP(8);
        FPG.Sj((View) this.HiB, 8);
        FPG.Sj((View) this.uA, 8);
        FPG.Sj((View) this.Ym, 8);
        FPG.Sj((View) this.TEQ, 8);
    }

    public void Fmk() {
        try {
            Activity activity = this.TKC.Fm;
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(activity, ib.uA(activity, "tt_fade_out"));
            if (animationLoadAnimation == null) {
                this.TKC.Wjd.aa();
            } else {
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() {
                    @Override
                    public void onAnimationEnd(Animation animation) {
                        TEQ.this.TKC.Wjd.aa();
                    }

                    @Override
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override
                    public void onAnimationStart(Animation animation) {
                    }
                });
                this.TKC.Wjd.Sj(animationLoadAnimation);
            }
        } catch (Throwable unused) {
            this.TKC.Wjd.aa();
        }
    }

    void HiB() {
        int iFm = this.EjP.Fm();
        this.Sj = iFm;
        if (iFm == -200) {
            this.Sj = dNu.EjP().Zq(String.valueOf(this.EjP.If()));
        }
        if (this.Sj != -1 || Sj()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC.f20378kb;
        if ((sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.EjP) || (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.TKC)) {
            return;
        }
        sP(0);
    }

    public void Jcg() {
        if (this.TEQ.getVisibility() == 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.TEQ.getLayoutParams();
            marginLayoutParams.setMargins(0, 0, 11, 16);
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(11);
            this.TEQ.setLayoutParams(marginLayoutParams);
        }
    }

    protected boolean Sj() {
        return true;
    }

    public View TEQ() {
        return this.HiB;
    }

    public void TKC() {
        this.vS.removeAllViews();
    }

    public View Ym() {
        return this.zR;
    }

    public void Zq() {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.Jcg();
        }
    }

    public void aa() {
        try {
            uvD uvd = this.f20394aa;
            if (uvd != null) {
                uvd.TKC();
            }
            RelativeLayout relativeLayout = this.Ym;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
        } catch (Throwable unused) {
            RelativeLayout relativeLayout2 = this.Ym;
            if (relativeLayout2 != null) {
                relativeLayout2.setAlpha(0.0f);
            }
        }
    }

    public void dNu() {
        com.bytedance.sdk.openadsdk.core.sP.HiB HiB = this.TKC.LqL.HiB();
        View view = this.zR;
        if (view == null) {
            view = this.TKC.xD;
        }
        HiB.onClick(view);
    }

    public void sP() {
        if (this.f20395dx) {
            return;
        }
        this.f20395dx = true;
        this.sU = this.TKC.sdp;
        if (Sj()) {
            uvD uvd = new uvD(this.TKC);
            this.f20394aa = uvd;
            uvd.Sj();
        }
        TzV();
        Activity activity = this.sP;
        sU sUVar = this.EjP;
        String str = this.RiZ;
        FrameLayout frameLayout = this.vS;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
        TzV tzV = new TzV(activity, sUVar, str, frameLayout, sj2.f20377jb, sj2.xD);
        this.Zq = tzV;
        tzV.Sj();
    }

    public void sef() {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.vS();
        }
        ImageView imageView = this.HiB;
        if (imageView != null) {
            imageView.removeCallbacks(this.dNu);
        }
    }

    public boolean uA() {
        ImageView imageView = this.HiB;
        return imageView != null && imageView.getVisibility() == 0;
    }

    public void uvD() {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.Dq();
        }
    }

    public FrameLayout vS() {
        return this.vS;
    }

    public void TKC(int i10) {
        FPG.Sj((View) this.uA, i10);
    }

    public void Sj(boolean z10) {
        FPG.Sj((View) this.uA, uP.TKC(this.EjP) ? 8 : 0);
        FPG.Sj((View) this.TEQ, (this.EjP.Ph() && this.EjP.aa()) ? 0 : 8);
        sP(z10);
        if (this.TzV) {
            HiB();
        }
    }

    public void HiB(int i10) {
        FPG.Sj((View) this.HiB, i10);
        if (i10 == 0 && !this.TKC.TEQ.get() && uP.Jcg(this.TKC.sP)) {
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.TKC;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sj2.sP, sj2.HiB, "show_close_button", (JSONObject) null, System.currentTimeMillis() - this.TKC.Bml);
        }
    }

    public void Sj(int i10) {
        if (this.uvD == null) {
            this.uvD = new com.bytedance.sdk.openadsdk.core.HiB.vS(this.TKC.Fm);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.uvD.setLayoutParams(layoutParams);
            this.uvD.setIndeterminateDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this.TKC.Fm, "tt_video_loading_progress_bar"));
            this.TKC.Wjd.vS().addView(this.uvD);
        }
        this.uvD.setVisibility(i10);
    }

    public void EjP(int i10) {
        int i11 = this.Sj;
        if (i11 == -1 || i10 != i11 || this.sef.get()) {
            return;
        }
        sP(0);
        this.sef.set(true);
        Dq();
    }

    void sP(boolean z10) {
        ImageView imageView;
        int iSj;
        if (this.sU != 1 && (imageView = this.HiB) != null && z10) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && (iSj = Sj("navigation_bar_height")) > 0) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                if (iSj > marginLayoutParams.rightMargin) {
                    marginLayoutParams.rightMargin = iSj;
                }
            }
        }
        com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar = this.TKC.f20378kb;
        if ((sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.EjP) || (sPVar instanceof com.bytedance.sdk.openadsdk.component.reward.sP.TKC)) {
            return;
        }
        sP(0);
    }

    public void Sj(int i10, int i11) {
        FrameLayout frameLayout;
        if (this.EjP.FPG() == 1 && (frameLayout = this.vS) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            int iTKC = FPG.TKC((Context) this.sP);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.vS.getLayoutParams();
            layoutParams.width = iTKC;
            int i12 = (iTKC * 9) / 16;
            layoutParams.height = i12;
            this.vS.setLayoutParams(layoutParams);
            this.Fmk = (FPG.HiB(this.sP) - i12) / 2;
        }
    }

    public void sP(int i10) {
        sU sUVar = this.EjP;
        if (sUVar != null && sUVar.Ph() && Fmk.Sj(this.EjP)) {
            FPG.Sj((View) this.zR, 8);
        } else {
            FPG.Sj((View) this.zR, i10);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.TKC tkc, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        View view;
        View view2;
        sU sUVar;
        if (this.vS != null && (sUVar = this.EjP) != null && sUVar.Wjd() != null) {
            if (this.EjP.Wjd().vS && !TzV.sP(this.EjP)) {
                Sj((View.OnClickListener) tkc);
                Sj(tkc);
            } else {
                Sj(onClickListener);
            }
        }
        sU sUVar2 = this.EjP;
        if (sUVar2 != null && sUVar2.FPG() == 1) {
            if (this.EjP.Wjd() != null && (view2 = this.Jcg) != null) {
                FPG.Sj(view2, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.Jcg.getLayoutParams();
                layoutParams.height = this.Fmk;
                this.Jcg.setLayoutParams(layoutParams);
                if (this.EjP.Wjd().sP) {
                    this.Jcg.setOnClickListener(tkc);
                    this.Jcg.setOnTouchListener(onTouchListener);
                } else {
                    this.Jcg.setOnClickListener(onClickListener);
                }
            }
            if (this.EjP.Wjd() != null && (view = this.Dq) != null) {
                FPG.Sj(view, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.Dq.getLayoutParams();
                layoutParams2.height = this.Fmk;
                this.Dq.setLayoutParams(layoutParams2);
                if (this.EjP.Wjd().EjP) {
                    this.Dq.setOnClickListener(tkc);
                    this.Dq.setOnTouchListener(onTouchListener);
                } else {
                    this.Dq.setOnClickListener(onClickListener);
                }
            }
        }
        PAGLogoView pAGLogoView = this.uA;
        if (pAGLogoView != null) {
            pAGLogoView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view3) {
                    try {
                        TEQ teq = TEQ.this;
                        TTWebsiteActivity.Sj(teq.sP, teq.EjP, teq.RiZ);
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAD.RFullVideoLayout", th2.getMessage());
                    }
                }
            });
        }
        ImageView imageView = this.TEQ;
        if (imageView != null) {
            imageView.setClickable(true);
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj((int) FPG.Sj(dNu.Sj(), 14.0f, true), this.TEQ, this.TKC.sP);
        }
    }

    private int Sj(String str) {
        Resources resources = this.sP.getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier(str, "dimen", "android"));
        }
        return 0;
    }

    public void Sj(View.OnClickListener onClickListener) {
        FPG.Sj(this.vS, onClickListener, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.sP.TKC tkc) {
        FPG.Sj((View) this.vS, (View.OnTouchListener) tkc, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    public void Sj(float f10) {
        FPG.Sj(this.HiB, f10);
    }

    public void Sj(Animation animation) {
        RelativeLayout relativeLayout = this.Ym;
        if (relativeLayout != null) {
            relativeLayout.startAnimation(animation);
        }
    }

    public void Sj(int i10, sef sefVar) {
        TzV tzV = this.Zq;
        if (tzV != null) {
            tzV.Sj(i10, sefVar);
        }
    }
}

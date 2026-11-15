package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.common.Zq;
import com.bytedance.sdk.openadsdk.component.uA.Dq;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.ib;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class TTAppOpenAdActivity extends TTBaseActivity implements LqL.Sj {
    private static com.bytedance.sdk.openadsdk.Sj.EjP.sP Dq;
    private AdSlot LD;
    private boolean LqL;
    private int RiZ;
    private com.bytedance.sdk.openadsdk.component.vS.sP TEQ;
    private boolean TzV;
    private com.bytedance.sdk.openadsdk.component.TKC Yf;
    private Zq Ym;
    private Jcg Zq;

    private TTAdDislikeToast f20337aa;
    private float dNu;

    private sU f20338dx;

    private com.bytedance.sdk.openadsdk.Sj.EjP.sP f20339ib;
    private FrameLayout ley;
    private String sU;
    private int uP;
    private float uvD;
    private int wE;
    private IListenerManager zR;
    protected final AtomicBoolean Sj = new AtomicBoolean(false);
    protected final LqL sP = new LqL(Looper.getMainLooper(), this);
    final AtomicBoolean TKC = new AtomicBoolean(false);
    final AtomicBoolean EjP = new AtomicBoolean(false);
    private final com.bytedance.sdk.openadsdk.component.Dq.Sj uA = new com.bytedance.sdk.openadsdk.component.Dq.Sj();
    protected boolean HiB = false;
    private final AtomicBoolean Fmk = new AtomicBoolean(false);
    private WMZ sef = WMZ.TKC();
    private final AtomicBoolean kF = new AtomicBoolean(false);
    long vS = 0;
    private volatile boolean fF = false;
    private final com.bytedance.sdk.openadsdk.component.Sj JcM = new com.bytedance.sdk.openadsdk.component.Sj() {
        @Override
        public void EjP() {
            TTAppOpenAdActivity.this.finish();
        }

        @Override
        public void HiB() {
            TTAppOpenAdActivity.this.RiZ();
        }

        @Override
        public void Sj() {
            TTAppOpenAdActivity.this.sU();
            TTAppOpenAdActivity.this.finish();
        }

        @Override
        public void TKC() {
            TTAppOpenAdActivity.this.vS();
            TTAppOpenAdActivity.this.sef.HiB();
            TTAppOpenAdActivity.this.dNu();
            if (TTAppOpenAdActivity.this.TzV) {
                TTAppOpenAdActivity.this.aa();
            }
        }

        @Override
        public void sP(long j10, int i10) {
            com.bytedance.sdk.openadsdk.component.Dq.TKC tkcJcg;
            StringBuilder sb2 = new StringBuilder("onError() called with: totalPlayTime = [");
            sb2.append(j10);
            sb2.append("], percent = [");
            sb2.append(i10);
            sb2.append("]");
            if (TTAppOpenAdActivity.this.Yf != null && (tkcJcg = TTAppOpenAdActivity.this.Yf.Jcg()) != null) {
                tkcJcg.Sj(true);
            }
            TTAppOpenAdActivity.this.sU();
            TTAppOpenAdActivity.this.finish();
        }

        @Override
        public void Sj(long j10, long j11) {
            TTAppOpenAdActivity.this.uA.Sj(j10);
            TTAppOpenAdActivity tTAppOpenAdActivity = TTAppOpenAdActivity.this;
            if (!tTAppOpenAdActivity.HiB && tTAppOpenAdActivity.Yf != null && TTAppOpenAdActivity.this.Yf.Jcg() != null && TTAppOpenAdActivity.this.Yf.Jcg().EjP()) {
                TTAppOpenAdActivity.this.Yf.Jcg().Jcg();
            }
            TTAppOpenAdActivity.this.Fmk();
        }

        @Override
        public void sP(View view) {
            TTAppOpenAdActivity.this.Sj();
        }

        @Override
        public void sP() {
            TTAppOpenAdActivity.this.fF = true;
            if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("splash_auto_close_switch", 0) == 0) {
                TTAppOpenAdActivity.this.Jcg();
                TTAppOpenAdActivity.this.finish();
            }
        }

        @Override
        public void Sj(View view) {
            TTAppOpenAdActivity.this.dx();
        }

        @Override
        public void Sj(int i10, boolean z10) {
            if (TTAppOpenAdActivity.this.Yf != null) {
                TTAppOpenAdActivity.this.Yf.Sj(i10, z10);
            }
        }
    };
    private final Runnable WMZ = new Runnable() {
        @Override
        public void run() {
            if (TTAppOpenAdActivity.this.Fmk.get()) {
                return;
            }
            if (TTAppOpenAdActivity.this.f20338dx != null && TTAppOpenAdActivity.this.f20338dx.Ph() && TTAppOpenAdActivity.this.f20338dx.GMp() != null && TTAppOpenAdActivity.this.f20338dx.GMp().Sj() != null) {
                TTAppOpenAdActivity.this.f20338dx.GMp().Sj().Sj(0L);
            }
            TTAppOpenAdActivity.this.Zq = new Jcg();
            TTAppOpenAdActivity.this.Zq.Sj(System.currentTimeMillis(), 1.0f);
            TTAppOpenAdActivity.this.sef.HiB();
            if (TTAppOpenAdActivity.this.TEQ != null) {
                TTAppOpenAdActivity.this.TEQ.sP();
            }
            if (TTAppOpenAdActivity.this.Yf != null) {
                TTAppOpenAdActivity.this.Yf.HiB();
            }
            TTAppOpenAdActivity.this.TzV();
            View viewFindViewById = TTAppOpenAdActivity.this.findViewById(R.id.content);
            JSONObject jSONObject = new JSONObject();
            if (viewFindViewById != null) {
                try {
                    jSONObject.put("width", viewFindViewById.getWidth());
                    jSONObject.put("height", viewFindViewById.getHeight());
                    jSONObject.put("alpha", viewFindViewById.getAlpha());
                } catch (JSONException e10) {
                    Log.e("TTAppOpenAdActivity", "run: ", e10);
                    TTAppOpenAdActivity.this.finish();
                    return;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("root_view", jSONObject.toString());
            jSONObject2.put("ad_root", TTAppOpenAdActivity.this.uP);
            jSONObject2.put("openad_creative_type", TTAppOpenAdActivity.this.TzV ? "video_normal_ad" : "image_normal_ad");
            if (Dq.TKC() == null) {
                jSONObject2.put("appicon_acquirefail", "1");
            }
            if (TTAppOpenAdActivity.this.LqL || TTAppOpenAdActivity.this.f20338dx.hzV()) {
                jSONObject2.put("dynamic_show_type", TTAppOpenAdActivity.this.uvD());
                TTAppOpenAdActivity.this.Sj(jSONObject2);
            }
            jSONObject2.put("is_icon_only", TTAppOpenAdActivity.this.f20338dx.yfI() ? 1 : 0);
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(TTAppOpenAdActivity.this.f20338dx, "open_ad", jSONObject2);
            com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(TTAppOpenAdActivity.this.findViewById(R.id.content), TTAppOpenAdActivity.this.f20338dx, new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(TTAppOpenAdActivity.this.uvD()));
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TTAppOpenAdActivity.this.f20338dx);
            TTAppOpenAdActivity.this.Fmk.set(true);
        }
    };

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        FPG.Sj((Activity) this);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() {
            @Override
            public void onSystemUiVisibilityChange(int i10) {
                if (i10 == 0) {
                    try {
                        if (TTAppOpenAdActivity.this.isFinishing()) {
                            return;
                        }
                        TTAppOpenAdActivity.this.getWindow().getDecorView().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                FPG.Sj((Activity) TTAppOpenAdActivity.this);
                            }
                        }, 2500L);
                    } catch (Exception e10) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", e10.getMessage());
                    }
                }
            }
        });
    }

    @Override
    public void onBackPressed() {
        if (dNu.EjP().dx(String.valueOf(this.RiZ)) == 1) {
            if (this.uA.sP() >= ((long) dNu.EjP().zR(String.valueOf(this.RiZ))) * 1000) {
                dx();
            }
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        dNu.sP(getApplicationContext());
        if (!sP(bundle)) {
            finish();
            return;
        }
        if (!sef.HiB()) {
            finish();
            return;
        }
        if (bundle != null) {
            com.bytedance.sdk.openadsdk.EjP.TKC.HiB(this.f20338dx, "open_ad", (JSONObject) null);
        }
        this.TzV = sU.HiB(this.f20338dx);
        new StringBuilder("onCreate: isVideo is ").append(this.TzV);
        if (this.TzV) {
            this.uA.Sj((float) this.f20338dx.UHs().K());
        } else {
            this.uA.Sj(dNu.EjP().ib(String.valueOf(this.RiZ)));
        }
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = new com.bytedance.sdk.openadsdk.component.vS.sP(this.uA);
        this.TEQ = sPVar;
        sPVar.Sj(this.JcM);
        Dq();
        FrameLayout frameLayout = new FrameLayout(this);
        this.ley = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        try {
            setContentView(this.ley);
            this.ley.post(new Runnable() {
                /* JADX WARN: Code duplicated, block: B:11:0x0026  */
                @Override
                public void run() {
                    boolean z10;
                    try {
                        int iFF = TTAppOpenAdActivity.this.f20338dx.fF();
                        TTAppOpenAdActivity tTAppOpenAdActivity = TTAppOpenAdActivity.this;
                        if (tTAppOpenAdActivity.f20338dx == null || TTAppOpenAdActivity.this.f20338dx.ley() != 2) {
                            z10 = false;
                        } else {
                            z10 = true;
                            if (iFF == 1) {
                                z10 = false;
                            }
                        }
                        tTAppOpenAdActivity.LqL = z10;
                        if (TTAppOpenAdActivity.this.LqL) {
                            TTAppOpenAdActivity tTAppOpenAdActivity2 = TTAppOpenAdActivity.this;
                            tTAppOpenAdActivity2.Yf = new com.bytedance.sdk.openadsdk.component.sP(tTAppOpenAdActivity2, tTAppOpenAdActivity2.f20338dx, TTAppOpenAdActivity.this.ley, TTAppOpenAdActivity.this.JcM, TTAppOpenAdActivity.this.wE, TTAppOpenAdActivity.this.TzV, TTAppOpenAdActivity.this.uA, TTAppOpenAdActivity.this.TEQ);
                        } else {
                            TTAppOpenAdActivity tTAppOpenAdActivity3 = TTAppOpenAdActivity.this;
                            tTAppOpenAdActivity3.Yf = new com.bytedance.sdk.openadsdk.component.TKC(tTAppOpenAdActivity3, tTAppOpenAdActivity3.f20338dx, TTAppOpenAdActivity.this.ley, TTAppOpenAdActivity.this.JcM, TTAppOpenAdActivity.this.wE, TTAppOpenAdActivity.this.TzV, TTAppOpenAdActivity.this.uA);
                            TTAppOpenAdActivity.this.Yf.Sj(TTAppOpenAdActivity.this.dNu, TTAppOpenAdActivity.this.uvD);
                        }
                        TTAppOpenAdActivity.this.Yf.Sj((ViewGroup) TTAppOpenAdActivity.this.ley);
                        TTAppOpenAdActivity.this.Yf.Sj();
                        TTAppOpenAdActivity.this.Yf.sP();
                    } catch (Throwable th2) {
                        TTAppOpenAdActivity.this.finish();
                        com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
                    }
                }
            });
            try {
                final View decorView = getWindow().getDecorView();
                if (Build.VERSION.SDK_INT >= 35) {
                    decorView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
                        @Override
                        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                            List boundingRects;
                            try {
                                DisplayCutout displayCutout = windowInsets.getDisplayCutout();
                                if (displayCutout != null && (boundingRects = displayCutout.getBoundingRects()) != null && !boundingRects.isEmpty()) {
                                    decorView.setPadding(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
                                }
                            } catch (Throwable unused) {
                            }
                            return windowInsets;
                        }
                    });
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            com.bytedance.sdk.openadsdk.Zq.TKC.sP();
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (this.f20338dx != null) {
            com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoForceBreak", this.f20338dx);
        }
        this.sP.removeCallbacksAndMessages(null);
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.HiB();
        }
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.f20338dx);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(this.f20338dx);
        if (this.TzV) {
            com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(this.f20338dx, this.uA.sP(), this.uA.Sj(), true);
        } else {
            com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(this.f20338dx, -1L, this.uA.Sj(), false);
        }
        if (this.sef.vS() && this.Fmk.get()) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(String.valueOf(this.sef.EjP()), this.f20338dx, "open_ad", this.Zq);
            this.sef = WMZ.TKC();
        }
        com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
        if (tkc != null) {
            tkc.TKC();
        }
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("recycleRes");
        }
        Jcg();
        Dq = null;
        this.f20339ib = null;
        Zq zq2 = this.Ym;
        if (zq2 != null) {
            zq2.setCallback(null);
        }
        if (Fmk.gq().uP(String.valueOf(this.RiZ)) != 1 || sU.vS(this.f20338dx) || this.f20338dx.ODI()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.vS.Sj(dNu.Sj()).Sj(this.LD);
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.HiB = false;
        TKC();
    }

    @Override
    protected void onResume() {
        com.bytedance.sdk.openadsdk.component.TKC tkc;
        super.onResume();
        this.HiB = true;
        if (this.Sj.getAndSet(true)) {
            if (!this.kF.get()) {
                sP();
                return;
            }
            sU();
            if (this.TzV && (tkc = this.Yf) != null && tkc.Jcg() != null) {
                this.Yf.Jcg().Sj(3);
            }
            finish();
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            sU sUVar = this.f20338dx;
            bundle.putString("material_meta", sUVar != null ? sUVar.SP().toString() : null);
            bundle.putString(TTAdConstant.MULTI_PROCESS_META_MD5, this.sU);
            bundle.putInt("ad_source", this.uP);
            bundle.putLong("start_show_time", this.vS);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
        }
        Dq = this.f20339ib;
        super.onSaveInstanceState(bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.f20338dx);
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            if (!this.LqL) {
                this.sef.HiB();
            }
            sU sUVar = this.f20338dx;
            if (sUVar != null && sUVar.UmR() && !this.f20338dx.Hs()) {
                this.f20338dx.Jcg(true);
                sU sUVar2 = this.f20338dx;
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar2, "open_ad", sUVar2.at());
            }
        } else if (this.Fmk.get()) {
            if (this.sef.vS()) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(String.valueOf(this.sef.EjP()), this.f20338dx, "open_ad", this.Zq);
            }
            this.sef = WMZ.TKC();
        }
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.f20338dx, z10 ? 4 : 8);
        com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(this.f20338dx, z10);
    }

    private void Dq() {
        if (26 != Build.VERSION.SDK_INT) {
            this.wE = this.f20338dx.liH();
        } else if (getResources().getConfiguration().orientation == 1) {
            this.wE = 1;
        } else {
            this.wE = 2;
        }
        uA();
    }

    public void Fmk() {
        if (!this.TzV || this.f20338dx.yfI()) {
            return;
        }
        this.sP.removeMessages(100);
    }

    public void Jcg() {
        com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdActivity", "invoke callback onAdDismiss, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdTimeOver");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20339ib;
        if (sPVar != null) {
            sPVar.TKC();
        }
    }

    public void RiZ() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdClicked");
        } else {
            com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20339ib;
            if (sPVar != null) {
                sPVar.onAdClicked();
            }
        }
        if (Fmk.gq().kF(String.valueOf(this.RiZ))) {
            this.kF.set(true);
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void TEQ() {
        if (this.wE != 2) {
            setRequestedOrientation(1);
        } else if (HiB()) {
            setRequestedOrientation(8);
        } else {
            setRequestedOrientation(0);
        }
        if (this.wE == 2 || !FPG.TKC((Activity) this)) {
            getWindow().addFlags(1024);
        }
    }

    public void TzV() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdShow");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20339ib;
        if (sPVar != null) {
            sPVar.Sj();
        }
    }

    private void Ym() {
        if (this.Ym == null) {
            Zq zq2 = new Zq(this, this.f20338dx);
            this.Ym = zq2;
            zq2.setDislikeSource("video_player");
            this.Ym.setCallback(new Zq.Sj() {
                @Override
                public void Sj(View view) {
                    TTAppOpenAdActivity.this.TKC.set(true);
                    TTAppOpenAdActivity.this.TKC();
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TTAppOpenAdActivity.this.f20338dx, 8);
                }

                @Override
                public void sP(View view) {
                    TTAppOpenAdActivity.this.TKC.set(false);
                    TTAppOpenAdActivity.this.sP();
                    com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(TTAppOpenAdActivity.this.f20338dx, 4);
                }

                @Override
                public void Sj(FilterWord filterWord) {
                    if (TTAppOpenAdActivity.this.EjP.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    TTAppOpenAdActivity.this.EjP.set(true);
                    TTAppOpenAdActivity.this.Zq();
                }
            });
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.content);
        frameLayout.addView(this.Ym);
        if (this.f20337aa == null) {
            TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this);
            this.f20337aa = tTAdDislikeToast;
            frameLayout.addView(tTAdDislikeToast);
        }
    }

    public void Zq() {
        this.f20337aa.show(TTAdDislikeToast.getDislikeSendTip());
    }

    public void aa() {
        if (!this.TzV || this.f20338dx.yfI() || this.fF) {
            return;
        }
        this.sP.sendEmptyMessageDelayed(100, 5000L);
    }

    public void dNu() {
        if (this.Fmk.get()) {
            return;
        }
        try {
            getWindow().getDecorView().post(this.WMZ);
        } catch (Throwable unused) {
            finish();
        }
    }

    public void dx() {
        com.bytedance.sdk.openadsdk.component.TKC tkc;
        ib.TKC(this.RiZ);
        sU();
        if (this.TzV && (tkc = this.Yf) != null && tkc.Jcg() != null) {
            this.Yf.Jcg().Sj(4);
        }
        com.bytedance.sdk.openadsdk.component.EjP.Sj.Sj(this.f20338dx, (int) this.uA.sP(), this.TEQ.Sj(), this.uA.Sj());
        sU sUVar = this.f20338dx;
        if (sUVar != null && sUVar.Ph() && this.f20338dx.GMp() != null && this.f20338dx.GMp().Sj() != null) {
            com.bytedance.sdk.openadsdk.core.Ym.EjP ejPSj = this.f20338dx.GMp().Sj();
            com.bytedance.sdk.openadsdk.component.TKC tkc2 = this.Yf;
            long jAa = (tkc2 == null || tkc2.Jcg() == null) ? 0L : this.Yf.Jcg().aa();
            ejPSj.vS(jAa);
            ejPSj.HiB(jAa);
        }
        finish();
    }

    public void sU() {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Sj("onAdSkip");
            return;
        }
        com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar = this.f20339ib;
        if (sPVar != null) {
            sPVar.sP();
        }
    }

    private void sef() {
        this.f20337aa.show(TTAdDislikeToast.getDislikeTip());
    }

    private void uA() {
        int iMin;
        int iMax;
        new StringBuilder("changeScreenOrientation: mOrientation=").append(this.wE);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 != 26) {
            if (i10 == 27) {
                try {
                    TEQ();
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
                    return;
                }
            } else {
                TEQ();
            }
        }
        Pair<Integer, Integer> pairTEQ = FPG.TEQ(getApplicationContext());
        if (this.wE == 2) {
            iMin = Math.max(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
            iMax = Math.min(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
        } else {
            iMin = Math.min(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
            iMax = Math.max(((Integer) pairTEQ.first).intValue(), ((Integer) pairTEQ.second).intValue());
        }
        this.uvD = iMax;
        this.dNu = iMin;
        float fSj = FPG.Sj();
        if (FPG.TKC((Activity) this)) {
            int i11 = this.wE;
            if (i11 == 1) {
                this.uvD -= fSj;
            } else if (i11 == 2) {
                this.dNu -= fSj;
            }
        }
        com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
        if (tkc != null) {
            tkc.Sj(this.dNu, this.uvD);
        }
    }

    public int uvD() {
        if (this.f20338dx.hzV()) {
            return 5;
        }
        if (this.LqL) {
            return this.Yf.EjP();
        }
        return -1;
    }

    public void vS() {
        sU sUVar = this.f20338dx;
        int iZR = (sUVar == null || sUVar.TKC() < 0) ? dNu.EjP().zR(String.valueOf(this.RiZ)) : this.f20338dx.TKC();
        this.TEQ.Sj(this.uA.Sj());
        this.TEQ.sP(iZR);
    }

    protected IListenerManager EjP() {
        if (this.zR == null) {
            this.zR = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(7));
        }
        return this.zR;
    }

    protected boolean HiB() {
        try {
            return getIntent().getIntExtra("orientation_angle", 0) == 3;
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", e10.getMessage());
            return false;
        }
    }

    void TKC() {
        if (this.TzV) {
            com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
            if (tkc != null && tkc.Jcg() != null && this.Yf.Jcg().EjP()) {
                this.Yf.Jcg().Jcg();
            }
            Fmk();
        }
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.EjP();
        }
    }

    void sP() {
        if (this.TKC.get()) {
            return;
        }
        if (this.TzV) {
            com.bytedance.sdk.openadsdk.component.TKC tkc = this.Yf;
            if (tkc != null && tkc.Jcg() != null && this.Yf.Jcg().HiB()) {
                this.Yf.Jcg().TEQ();
            }
            aa();
        }
        com.bytedance.sdk.openadsdk.component.vS.sP sPVar = this.TEQ;
        if (sPVar != null) {
            sPVar.TKC();
        }
    }

    protected void Sj() {
        if (isFinishing()) {
            return;
        }
        if (this.EjP.get()) {
            sef();
            return;
        }
        if (this.Ym == null) {
            try {
                Ym();
            } catch (Throwable th2) {
                ApmHelper.reportCustomError("initDislike error", "TTAppOpenAdActivity", th2);
            }
        }
        Zq zq2 = this.Ym;
        if (zq2 != null) {
            zq2.Sj();
        }
    }

    private boolean sP(Bundle bundle) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            Intent intent = getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.f20338dx = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(stringExtra));
                    } catch (Exception e10) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", "open_ad", "initData MultiGlobalInfo throws ", e10);
                    }
                }
                this.sU = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_META_MD5);
            }
        } else {
            this.f20338dx = kF.Sj().sP();
            this.f20339ib = kF.Sj().HiB();
            kF.Sj().vS();
        }
        Sj(getIntent());
        Sj(bundle);
        sU sUVar = this.f20338dx;
        if (sUVar == null) {
            finish();
            return false;
        }
        this.LD = sUVar.xD();
        this.f20338dx.Sj(this.vS);
        this.RiZ = this.f20338dx.If();
        com.bytedance.sdk.openadsdk.utils.sP.Sj(this.f20338dx);
        return true;
    }

    public JSONObject Sj(JSONObject jSONObject) {
        if (uvD() == 0) {
            return this.Yf.Sj(jSONObject);
        }
        return null;
    }

    private void Sj(final String str) {
        JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("AppOpenAd_executeMultiProcessCallback") {
            @Override
            public void run() {
                try {
                    TTAppOpenAdActivity.this.EjP().executeAppOpenAdCallback(TTAppOpenAdActivity.this.sU, str);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", "open_ad", "executeAppOpenAdCallback execute throw Exception : ", th2);
                }
            }
        }, 5);
    }

    protected void Sj(Intent intent) {
        if (intent != null) {
            this.uP = intent.getIntExtra("ad_source", 0);
            this.vS = intent.getLongExtra("start_show_time", 0L);
        }
    }

    protected void Sj(Bundle bundle) {
        if (bundle != null) {
            if (this.f20339ib == null) {
                this.f20339ib = Dq;
                Dq = null;
            }
            try {
                String string = bundle.getString("material_meta");
                this.sU = bundle.getString(TTAdConstant.MULTI_PROCESS_META_MD5);
                this.uP = bundle.getInt("ad_source", 0);
                this.vS = bundle.getLong("start_show_time", 0L);
                this.f20338dx = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(string));
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdActivity", th2.getMessage());
            }
        }
    }

    @Override
    public void Sj(Message message) {
        com.bytedance.sdk.openadsdk.component.TKC tkc;
        if (message.what == 100) {
            if (this.TzV && (tkc = this.Yf) != null && tkc.Jcg() != null) {
                this.Yf.Jcg().Sj(1);
            }
            sU();
            finish();
        }
    }
}

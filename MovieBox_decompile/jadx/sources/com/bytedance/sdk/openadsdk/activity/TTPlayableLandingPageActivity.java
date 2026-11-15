package com.bytedance.sdk.openadsdk.activity;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.JcM;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uP;
import com.bytedance.sdk.openadsdk.core.widget.Fmk;
import com.bytedance.sdk.openadsdk.core.widget.TEQ;
import com.bytedance.sdk.openadsdk.core.widget.sef;
import com.bytedance.sdk.openadsdk.core.widget.uA;
import com.bytedance.sdk.openadsdk.sU.Dq;
import com.bytedance.sdk.openadsdk.sU.Jcg;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.TzV;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

public class TTPlayableLandingPageActivity extends TTBaseActivity implements LqL.Sj, com.bytedance.sdk.openadsdk.core.sP.EjP {

    private static final Jcg.Sj f20345db = new Jcg.Sj() {
    };
    private Dq Fm;
    private Context Fmk;
    private com.bytedance.sdk.component.uA.vS HiB;
    private com.bytedance.sdk.openadsdk.EjP.EjP.HiB HpB;
    private String JcM;
    private com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS LD;
    private boolean LqL;
    private String RiZ;
    uP Sj;
    private RelativeLayout TEQ;
    private String TzV;
    private com.bytedance.sdk.openadsdk.sU.Sj.Sj UHs;
    private int Wjd;
    private boolean Yf;
    private sef Ym;
    private com.bytedance.sdk.openadsdk.core.HiB.vS Zq;

    private Fmk f20346aa;
    private uA dNu;

    private Yf f20347dx;

    private String f20348ib;

    private ILoader f20349jb;
    private String kF;
    private boolean qRN;
    TTAdDislikeToast sP;
    private Yf sU;
    private int sef;
    private TEQ uvD;
    private sU wE;
    private int xD;
    private Ym xhi;
    private int zR;
    private boolean vS = true;
    private boolean Dq = false;
    private boolean uA = true;
    final AtomicBoolean TKC = new AtomicBoolean(false);
    private final String uP = "embeded_ad";
    private final LqL ley = new LqL(Looper.getMainLooper(), this);
    private final AtomicBoolean fF = new AtomicBoolean(false);
    private final AtomicInteger WMZ = new AtomicInteger(0);
    private final AtomicInteger Mts = new AtomicInteger(0);
    private final AtomicInteger FPG = new AtomicInteger(0);
    private boolean Ei = false;
    protected com.bytedance.sdk.openadsdk.aa.HiB EjP = new com.bytedance.sdk.openadsdk.aa.HiB() {
        @Override
        public void Sj() {
            if (!TTPlayableLandingPageActivity.this.isFinishing() && com.bytedance.sdk.openadsdk.core.model.uP.sef(TTPlayableLandingPageActivity.this.wE) && com.bytedance.sdk.openadsdk.core.model.uP.uvD(TTPlayableLandingPageActivity.this.wE)) {
                TTPlayableLandingPageActivity.this.ley.removeMessages(2);
                TTPlayableLandingPageActivity.this.ley.sendMessage(TTPlayableLandingPageActivity.this.Sj(1, 0));
            }
        }

        @Override
        public void sP() {
            if (com.bytedance.sdk.openadsdk.core.model.uP.sef(TTPlayableLandingPageActivity.this.wE) && com.bytedance.sdk.openadsdk.core.model.uP.Zq(TTPlayableLandingPageActivity.this.wE)) {
                TTPlayableLandingPageActivity.this.ley.sendMessageDelayed(TTPlayableLandingPageActivity.this.Sj(0, 0), 1000L);
            }
        }

        @Override
        public void Sj(int i10) {
            if (!com.bytedance.sdk.openadsdk.core.model.uP.sef(TTPlayableLandingPageActivity.this.wE) || TTPlayableLandingPageActivity.this.uvD == null) {
                return;
            }
            TTPlayableLandingPageActivity.this.uvD.setProgress(i10);
        }
    };
    private int ndK = 1;

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.HpB;
        if (hiB != null) {
            hiB.Dq();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    @SuppressLint({"SourceLockedOrientationActivity"})
    protected void onCreate(@Nullable Bundle bundle) {
        com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2;
        super.onCreate(bundle);
        if (!com.bytedance.sdk.openadsdk.core.sef.HiB()) {
            finish();
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
            getWindow().addFlags(16777216);
            dNu.sP(this);
        } catch (Throwable unused) {
        }
        Sj(bundle);
        sU sUVar = this.wE;
        if (sUVar == null) {
            return;
        }
        this.qRN = sUVar.pR();
        int iDNu = com.bytedance.sdk.openadsdk.core.model.uP.dNu(this.wE);
        if (iDNu == 0) {
            setRequestedOrientation(14);
        } else if (iDNu == 1) {
            setRequestedOrientation(1);
        } else if (iDNu == 2) {
            setRequestedOrientation(0);
            this.ndK = 2;
        }
        this.Fmk = this;
        try {
            setContentView(EjP());
            uA();
            vS();
            if (this.qRN) {
                sef();
                this.UHs.Sj(false, (com.bytedance.sdk.openadsdk.aa.vS) null);
            } else {
                Sj();
                Ym();
                if (!TextUtils.isEmpty(this.JcM)) {
                    this.f20349jb = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().sP();
                    int iSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.f20349jb, this.JcM);
                    this.Wjd = iSj;
                    this.xD = iSj > 0 ? 2 : 0;
                }
                Dq();
                com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.HpB;
                if (hiB != null) {
                    hiB.Jcg();
                }
            }
            Jcg();
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(SystemClock.elapsedRealtime() - jElapsedRealtime, this.wE, "embeded_ad", this.f20349jb, this.JcM);
            if (!this.qRN || (sj2 = this.UHs) == null) {
                return;
            }
            sj2.Sj();
        } catch (Throwable unused2) {
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.UHs;
        if (sj2 != null) {
            sj2.EjP();
        }
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.HpB;
        if (hiB != null) {
            hiB.Sj(true);
            this.HpB.aa();
        }
        this.ley.removeCallbacksAndMessages(null);
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(this.JcM)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(this.Mts.get(), this.WMZ.get(), this.wE);
        }
        com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.f20349jb);
        com.bytedance.sdk.component.uA.vS vSVar = this.HiB;
        if (vSVar != null) {
            JcM.Sj(vSVar.getWebView());
            this.HiB.uvD();
        }
        this.HiB = null;
        Yf yf2 = this.sU;
        if (yf2 != null) {
            yf2.aa();
        }
        Yf yf3 = this.f20347dx;
        if (yf3 != null) {
            yf3.aa();
        }
        Dq dq2 = this.Fm;
        if (dq2 != null) {
            dq2.Mts();
        }
        Ym ym2 = this.xhi;
        if (ym2 != null) {
            ym2.EjP(true);
        }
        uP uPVar = this.Sj;
        if (uPVar != null) {
            uPVar.sP();
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        Yf yf2 = this.sU;
        if (yf2 != null) {
            yf2.sP(false);
        }
        Dq dq2 = this.Fm;
        if (dq2 != null) {
            dq2.Sj(true);
            this.Fm.TKC(false);
        }
        com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.UHs;
        if (sj2 != null) {
            sj2.TKC();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        Yf yf2 = this.sU;
        if (yf2 != null) {
            yf2.Ym();
            com.bytedance.sdk.component.uA.vS vSVar = this.HiB;
            if (vSVar != null) {
                this.sU.sP(vSVar.getVisibility() == 0);
            }
        }
        Yf yf3 = this.f20347dx;
        if (yf3 != null) {
            yf3.Ym();
        }
        Dq dq2 = this.Fm;
        if (dq2 != null) {
            dq2.TKC(true);
        }
        Ym ym2 = this.xhi;
        if (ym2 != null) {
            ym2.Jcg();
        }
        if (DeviceUtils.Jcg() == 0) {
            this.Ei = true;
        }
        TKC(this.Ei);
        com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.UHs;
        if (sj2 != null) {
            sj2.sP();
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            sU sUVar = this.wE;
            bundle.putString("material_meta", sUVar != null ? sUVar.SP().toString() : null);
            bundle.putInt("sdk_version", this.sef);
            bundle.putString("adid", this.TzV);
            bundle.putString("log_extra", this.RiZ);
            bundle.putInt(EventConstants.KEY_SOURCE, this.zR);
            bundle.putBoolean("ad_pending_download", this.LqL);
            bundle.putString("url", this.f20348ib);
            bundle.putString("web_title", this.kF);
            bundle.putString("event_tag", "embeded_ad");
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    @Override
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.HpB;
        if (hiB != null) {
            hiB.TEQ();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.HpB;
        if (hiB != null) {
            hiB.uA();
        }
        Ym ym2 = this.xhi;
        if (ym2 != null) {
            ym2.Dq();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Dq() {
        com.bytedance.sdk.component.uA.vS vSVar = this.HiB;
        if (vSVar == null) {
            return;
        }
        vSVar.setLandingPage(true);
        this.HiB.setTag("landingpage");
        this.HiB.setMaterialMeta(this.wE.hif());
        Ym ymSP = new Ym(this.wE, this.HiB.getWebView(), new com.bytedance.sdk.openadsdk.EjP.TEQ() {
            @Override
            public void Sj(int i10) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(TTPlayableLandingPageActivity.this.Wjd, TTPlayableLandingPageActivity.this.FPG.get(), TTPlayableLandingPageActivity.this.Mts.get(), TTPlayableLandingPageActivity.this.WMZ.get() - TTPlayableLandingPageActivity.this.Mts.get(), TTPlayableLandingPageActivity.this.wE, "embeded_ad", i10);
            }
        }, this.xD).sP(true);
        this.xhi = ymSP;
        ymSP.Sj("embeded_ad");
        this.xhi.Sj(this.HpB);
        this.xhi.Sj(this.Fm);
        this.HiB.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(this.Fmk, this.sU, this.TzV, this.xhi, true) {
            @Override
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                TTPlayableLandingPageActivity.this.Dq = true;
                if (TTPlayableLandingPageActivity.this.isFinishing()) {
                    return;
                }
                if (TTPlayableLandingPageActivity.this.Fm != null) {
                    TTPlayableLandingPageActivity.this.Fm.uA(str);
                }
                try {
                    TTPlayableLandingPageActivity.this.EjP.sP();
                } catch (Throwable unused) {
                }
                try {
                    if (TTPlayableLandingPageActivity.this.Zq != null) {
                        TTPlayableLandingPageActivity.this.Zq.setVisibility(8);
                    }
                    if (TTPlayableLandingPageActivity.this.vS) {
                        TTPlayableLandingPageActivity.this.TEQ();
                        TTPlayableLandingPageActivity.this.Sj("py_loading_success");
                        Yf yf2 = this.TKC;
                        if (yf2 != null) {
                            yf2.sP(true);
                        }
                    }
                } catch (Throwable unused2) {
                }
            }

            @Override
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
            }

            @Override
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTPlayableLandingPageActivity.this.vS = false;
                if (TTPlayableLandingPageActivity.this.Fm == null || webResourceError == null || webResourceRequest == null) {
                    return;
                }
                TTPlayableLandingPageActivity.this.Fm.Sj(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), String.valueOf(webResourceRequest.getUrl()));
            }

            @Override
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (TTPlayableLandingPageActivity.this.f20348ib != null && webResourceRequest != null && webResourceRequest.getUrl() != null && TTPlayableLandingPageActivity.this.f20348ib.equals(webResourceRequest.getUrl().toString())) {
                    TTPlayableLandingPageActivity.this.vS = false;
                }
                if (TTPlayableLandingPageActivity.this.Fm != null && webResourceRequest != null) {
                    try {
                        TTPlayableLandingPageActivity.this.Fm.Sj(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    } catch (Throwable unused) {
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TTPlayableLandingPageActivity.this.Fm != null) {
                        TTPlayableLandingPageActivity.this.Fm.TEQ(str);
                    }
                    if (!TextUtils.isEmpty(TTPlayableLandingPageActivity.this.JcM)) {
                        TTPlayableLandingPageActivity.this.WMZ.incrementAndGet();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    WebResourceResponseModel webResourceResponseModelSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(TTPlayableLandingPageActivity.this.f20349jb, TTPlayableLandingPageActivity.this.JcM, str);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (TTPlayableLandingPageActivity.this.HpB != null) {
                        com.bytedance.sdk.component.adexpress.EjP.uA.Sj Sj = com.bytedance.sdk.component.adexpress.EjP.uA.Sj(str);
                        int i10 = (webResourceResponseModelSj == null || webResourceResponseModelSj.getWebResourceResponse() == null) ? 2 : 1;
                        if (Sj == com.bytedance.sdk.component.adexpress.EjP.uA.Sj.HTML) {
                            TTPlayableLandingPageActivity.this.HpB.Sj(str, jCurrentTimeMillis, jCurrentTimeMillis2, i10);
                        } else if (Sj == com.bytedance.sdk.component.adexpress.EjP.uA.Sj.JS) {
                            TTPlayableLandingPageActivity.this.HpB.sP(str, jCurrentTimeMillis, jCurrentTimeMillis2, i10);
                        }
                    }
                    if (webResourceResponseModelSj == null || webResourceResponseModelSj.getWebResourceResponse() == null) {
                        if (webResourceResponseModelSj != null && webResourceResponseModelSj.getMsg() == 2) {
                            TTPlayableLandingPageActivity.this.FPG.incrementAndGet();
                        }
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTPlayableLandingPageActivity.this.Mts.incrementAndGet();
                    if (TTPlayableLandingPageActivity.this.Fm != null) {
                        TTPlayableLandingPageActivity.this.Fm.Ym(str);
                    }
                    return webResourceResponseModelSj.getWebResourceResponse();
                } catch (Exception unused) {
                    return super.shouldInterceptRequest(webView, str);
                }
            }

            @Override
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                super.onReceivedError(webView, i10, str, str2);
            }
        });
        Sj(this.HiB);
        com.bytedance.sdk.openadsdk.utils.sU.Sj(this.HiB, this.f20348ib);
        Dq dq2 = this.Fm;
        if (dq2 != null) {
            dq2.Dq(this.f20348ib);
        }
        this.HiB.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.sU, this.xhi) {
            @Override
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                if (TTPlayableLandingPageActivity.this.isFinishing()) {
                    return;
                }
                try {
                    TTPlayableLandingPageActivity.this.EjP.Sj(i10);
                } catch (Throwable unused) {
                }
                if (TTPlayableLandingPageActivity.this.Zq != null) {
                    if (i10 != 100) {
                        TTPlayableLandingPageActivity.this.Zq.setProgress(i10);
                        return;
                    }
                    TTPlayableLandingPageActivity.this.Dq = true;
                    TTPlayableLandingPageActivity.this.Zq.setVisibility(8);
                    TTPlayableLandingPageActivity.this.TEQ();
                }
            }
        });
        this.HiB.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (TTPlayableLandingPageActivity.this.xhi == null) {
                    return false;
                }
                TTPlayableLandingPageActivity.this.xhi.Sj(motionEvent);
                return false;
            }
        });
    }

    public void Fmk() {
        TTAdDislikeToast tTAdDislikeToast = this.sP;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.show(TTAdDislikeToast.getDislikeSendTip());
        }
    }

    private void Jcg() {
        int i10 = dNu.EjP().ley(String.valueOf(this.wE.If())).dNu;
        if (i10 >= 0) {
            this.ley.sendEmptyMessageDelayed(1, ((long) i10) * 1000);
        } else {
            FPG.Sj((View) this.TEQ, 0);
        }
    }

    public void TEQ() {
        if (this.fF.getAndSet(true)) {
            return;
        }
        if (!com.bytedance.sdk.openadsdk.core.model.uP.ib(this.wE) || (this.Dq && this.vS)) {
            com.bytedance.sdk.component.uA.vS vSVar = this.HiB;
            if (vSVar == null || this.uvD == null) {
                return;
            }
            FPG.Sj((View) vSVar, 0);
            FPG.Sj((View) this.uvD, 8);
            return;
        }
        if (this.dNu == null || this.uvD == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this, this.wE, "embeded_ad", this.zR);
        sj2.Sj(this.LD);
        this.dNu.Sj(this.wE, "embeded_ad", sj2);
        FPG.Sj((View) this.dNu, 0);
        FPG.Sj((View) this.uvD, 8);
        FPG.Sj((View) this.f20346aa, 8);
    }

    private void Ym() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.wE);
        this.HpB = new com.bytedance.sdk.openadsdk.EjP.dNu(3, "embeded_ad", this.wE);
        this.sU = new Yf(this);
        this.sU.sP(this.HiB).Sj(this.wE).Sj(arrayList).TKC(this.TzV).EjP(this.RiZ).sP("embeded_ad").sP(this.zR).Sj(this).Sj(this.HpB).Sj(this.EjP).Sj(this.HiB).HiB(this.wE.Lip());
        HiB();
    }

    private void aa() {
        TTAdDislikeToast tTAdDislikeToast = this.sP;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.show(TTAdDislikeToast.getDislikeTip());
        }
    }

    private void sef() {
        com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this, this.wE, "embeded_ad", this.zR) {
            @Override
            public void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
                sU sUVar = ((com.bytedance.sdk.openadsdk.core.sP.sP) this).vS;
                if (sUVar == null || sUVar.kF() != 1 || z10) {
                    super.Sj(view, f10, f11, f12, f13, sparseArray, z10);
                    TTPlayableLandingPageActivity.this.LqL = true;
                    TTPlayableLandingPageActivity.this.Yf = true;
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("playable_url", TTPlayableLandingPageActivity.this.f20348ib);
                    } catch (JSONException e10) {
                        com.bytedance.sdk.component.utils.sU.Sj("TTPWPActivity", "onClick JSON ERROR", e10);
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(TTPlayableLandingPageActivity.this.wE, ((com.bytedance.sdk.openadsdk.core.sP.sP) this).Jcg, "click_playable_download_button_loading", jSONObject);
                }
            }
        };
        sj2.Sj(this.LD);
        com.bytedance.sdk.openadsdk.sU.Sj.Sj sj3 = this.UHs;
        if (sj3 != null) {
            sj3.Sj(sj2);
        }
    }

    private void uA() {
        RelativeLayout relativeLayout = this.TEQ;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (TTPlayableLandingPageActivity.this.HpB != null) {
                        TTPlayableLandingPageActivity.this.HpB.Dq();
                    }
                    TTPlayableLandingPageActivity.this.ley.sendMessage(TTPlayableLandingPageActivity.this.Sj(4, 0));
                    TTPlayableLandingPageActivity.this.Sj("playable_close");
                    TTPlayableLandingPageActivity.this.finish();
                }
            });
        }
        sef sefVar = this.Ym;
        if (sefVar != null) {
            sefVar.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    TTPlayableLandingPageActivity.this.sP();
                }
            });
        }
        Fmk fmk = this.f20346aa;
        if (fmk != null) {
            fmk.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    TTPlayableLandingPageActivity tTPlayableLandingPageActivity = TTPlayableLandingPageActivity.this;
                    tTPlayableLandingPageActivity.Ei = !tTPlayableLandingPageActivity.Ei;
                    TTPlayableLandingPageActivity tTPlayableLandingPageActivity2 = TTPlayableLandingPageActivity.this;
                    tTPlayableLandingPageActivity2.TKC(tTPlayableLandingPageActivity2.Ei);
                    if (TTPlayableLandingPageActivity.this.Fm != null) {
                        TTPlayableLandingPageActivity.this.Fm.Sj(TTPlayableLandingPageActivity.this.Ei);
                    }
                }
            });
        }
        if (this.qRN) {
            return;
        }
        this.HiB.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FPG.Sj((View) this.HiB, 4);
        this.uvD.sP(this.wE, this.ndK);
    }

    private void vS() {
        if (this.wE.sdp() == 4) {
            this.LD = com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(this.Fmk, this.wE, "interaction");
        }
    }

    private View EjP() {
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this);
        tkc.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        if (this.qRN) {
            this.UHs = new com.bytedance.sdk.openadsdk.sU.Sj.Sj(this.Fmk, this.wE, this.ndK, this.Ei, tkc, true);
        } else {
            this.HiB = new com.bytedance.sdk.component.uA.vS(this);
            this.HiB.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.HiB.setVisibility(4);
            this.Zq = new com.bytedance.sdk.openadsdk.core.HiB.vS(this, null, R.style.Widget.ProgressBar.Horizontal);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, FPG.sP(this, 3.0f));
            layoutParams.gravity = 49;
            this.Zq.setLayoutParams(layoutParams);
            this.Zq.setProgress(1);
            this.Zq.setProgressDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this, "tt_browser_progress_style"));
            this.uvD = new TEQ(this);
            this.uvD.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.uvD.setClickable(true);
            this.uvD.setFocusable(true);
            this.dNu = new uA(this);
            this.dNu.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        this.f20346aa = new Fmk(this);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(FPG.sP(this, 28.0f), FPG.sP(this, 28.0f));
        layoutParams2.leftMargin = FPG.sP(this, 12.0f);
        layoutParams2.topMargin = FPG.sP(this, 20.0f);
        this.f20346aa.setLayoutParams(layoutParams2);
        this.f20346aa.setScaleType(ImageView.ScaleType.CENTER);
        this.f20346aa.setImageDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this, "tt_unmute_wrapper"));
        this.Ym = new sef(this);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, FPG.sP(this, 28.0f));
        layoutParams3.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams3.leftMargin = FPG.sP(this, 16.0f);
        layoutParams3.rightMargin = FPG.sP(this, 80.0f);
        layoutParams3.topMargin = FPG.sP(this, 20.0f);
        this.Ym.setLayoutParams(layoutParams3);
        this.Ym.setGravity(17);
        this.Ym.setText(ib.Sj(this, "tt_reward_feedback"));
        this.Ym.setTextColor(-1);
        this.Ym.setTextSize(14.0f);
        this.TEQ = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(this);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(FPG.sP(this, 28.0f), FPG.sP(this, 28.0f));
        layoutParams4.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        layoutParams4.topMargin = FPG.sP(this, 20.0f);
        layoutParams4.rightMargin = FPG.sP(this, 24.0f);
        this.TEQ.setLayoutParams(layoutParams4);
        this.TEQ.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this, "tt_mute_btn_bg"));
        this.TEQ.setGravity(17);
        this.TEQ.setVisibility(8);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(this);
        ejP.setLayoutParams(new RelativeLayout.LayoutParams(FPG.sP(this, 12.0f), FPG.sP(this, 12.0f)));
        ejP.setImageDrawable(ib.TKC(this, "tt_video_close_drawable"));
        ejP.setVisibility(0);
        this.TEQ.addView(ejP);
        if (!this.qRN) {
            tkc.addView(this.HiB);
            tkc.addView(this.Zq);
            tkc.addView(this.dNu);
            tkc.addView(this.uvD);
        }
        tkc.addView(this.f20346aa);
        tkc.addView(this.Ym);
        tkc.addView(this.TEQ);
        return tkc;
    }

    private void HiB() {
        if (this.Fm != null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.uA.sP().RiZ()) {
            Jcg.Sj(f20345db);
        }
        com.bytedance.sdk.openadsdk.sU.Sj sj2 = new com.bytedance.sdk.openadsdk.sU.Sj() {
            @Override
            public void Sj(int i10, String str) {
                super.Sj(i10, str);
                if (com.bytedance.sdk.openadsdk.core.model.uP.ib(TTPlayableLandingPageActivity.this.wE)) {
                    TTPlayableLandingPageActivity.this.ley.sendMessage(TTPlayableLandingPageActivity.this.Sj(3, com.bytedance.sdk.openadsdk.core.model.uP.Sj(i10)));
                    TTPlayableLandingPageActivity.this.TEQ();
                }
            }

            @Override
            public com.bytedance.sdk.openadsdk.sU.EjP Sj() {
                String strVS = com.bytedance.sdk.openadsdk.common.sP.vS();
                strVS.hashCode();
                switch (strVS) {
                    case "2g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_2G;
                    case "3g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_3G;
                    case "4g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_4G;
                    case "5g":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_5G;
                    case "wifi":
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_WIFI;
                    default:
                        return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_UNKNOWN;
                }
            }

            @Override
            public void Sj(JSONObject jSONObject) {
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(TTPlayableLandingPageActivity.this.wE, "embeded_ad", "playable_track", jSONObject);
            }
        };
        com.bytedance.sdk.openadsdk.sU.TKC tkc = new com.bytedance.sdk.openadsdk.sU.TKC() {
            @Override
            public void Sj(String str, JSONObject jSONObject) {
                TTPlayableLandingPageActivity.this.sU.Sj(str, jSONObject);
            }
        };
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BidResponsedEx.KEY_CID, this.TzV);
            jSONObject.put("log_extra", this.RiZ);
            this.Fm = Dq.Sj(getApplicationContext(), this.HiB.getWebView(), tkc, sj2).Jcg(this.f20348ib).HiB(com.bytedance.sdk.openadsdk.common.sP.Sj(dNu.Sj())).Sj(com.bytedance.sdk.openadsdk.common.sP.Sj()).TKC(jSONObject).sP(com.bytedance.sdk.openadsdk.common.sP.HiB()).Sj("sdkEdition", com.bytedance.sdk.openadsdk.common.sP.TKC()).EjP(com.bytedance.sdk.openadsdk.common.sP.EjP()).EjP(false).Sj(this.Ei).Sj(com.bytedance.sdk.openadsdk.core.model.uP.sU(this.wE)).sP(com.bytedance.sdk.openadsdk.core.model.uP.sU(this.wE)).HiB(true);
        } catch (Throwable unused) {
        }
        if (this.Fm == null) {
            return;
        }
        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.model.uP.Ym(this.wE))) {
            this.Fm.TKC(com.bytedance.sdk.openadsdk.core.model.uP.Ym(this.wE));
        }
        Set<String> setYm = this.Fm.Ym();
        final WeakReference weakReference = new WeakReference(this.Fm);
        for (String str : setYm) {
            if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str)) {
                this.sU.sP().Sj(str, new com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject>() {
                    @Override
                    public JSONObject Sj(@NonNull JSONObject jSONObject2, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) {
                        try {
                            Dq dq2 = (Dq) weakReference.get();
                            if (dq2 == null) {
                                return null;
                            }
                            return dq2.EjP(Sj(), jSONObject2);
                        } catch (Throwable unused2) {
                            return null;
                        }
                    }
                });
            }
        }
    }

    void TKC() {
        sU sUVar = this.wE;
        if (sUVar != null) {
            this.Sj = new com.bytedance.sdk.openadsdk.TKC.TKC(this, sUVar.mZN(), this.wE.nru(), this.wE.SP().toString(), "playable");
        }
        if (this.sP == null) {
            this.sP = new TTAdDislikeToast(this);
            ((FrameLayout) findViewById(R.id.content)).addView(this.sP);
        }
    }

    protected void sP() {
        if (this.wE == null || isFinishing()) {
            return;
        }
        if (this.TKC.get()) {
            aa();
            return;
        }
        if (this.Sj == null) {
            TKC();
        }
        this.Sj.Sj(new uP.Sj() {
            @Override
            public void Sj() {
            }

            @Override
            public void Sj(int i10, String str) {
                if (TTPlayableLandingPageActivity.this.TKC.get() || TextUtils.isEmpty(str)) {
                    return;
                }
                TTPlayableLandingPageActivity.this.TKC.set(true);
                TTPlayableLandingPageActivity.this.Fmk();
            }
        });
        uP uPVar = this.Sj;
        if (uPVar != null) {
            uPVar.Sj();
        }
    }

    public Message Sj(int i10, int i11) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.arg1 = i10;
        if (i10 == 3) {
            messageObtain.arg2 = i11;
        }
        return messageObtain;
    }

    private void Sj(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            this.sef = intent.getIntExtra("sdk_version", 1);
            this.TzV = intent.getStringExtra("adid");
            this.RiZ = intent.getStringExtra("log_extra");
            this.zR = intent.getIntExtra(EventConstants.KEY_SOURCE, -1);
            this.LqL = intent.getBooleanExtra("ad_pending_download", false);
            this.f20348ib = intent.getStringExtra("url");
            this.JcM = intent.getStringExtra("gecko_id");
            this.kF = intent.getStringExtra("web_title");
            if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.wE = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(stringExtra));
                    } catch (Exception e10) {
                        com.bytedance.sdk.component.utils.sU.Sj("TTPWPActivity", "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : ", e10);
                    }
                }
            } else {
                this.wE = kF.Sj().sP();
                kF.Sj().vS();
            }
        }
        if (bundle != null) {
            try {
                this.sef = bundle.getInt("sdk_version", 1);
                this.TzV = bundle.getString("adid");
                this.RiZ = bundle.getString("log_extra");
                this.zR = bundle.getInt(EventConstants.KEY_SOURCE, -1);
                this.LqL = bundle.getBoolean("ad_pending_download", false);
                this.f20348ib = bundle.getString("url");
                this.kF = bundle.getString("web_title");
                String string = bundle.getString("material_meta", null);
                if (!TextUtils.isEmpty(string)) {
                    this.wE = com.bytedance.sdk.openadsdk.core.sP.Sj(new JSONObject(string));
                }
            } catch (Throwable unused) {
            }
        }
        if (this.wE == null) {
            finish();
            return;
        }
        try {
            this.Ei = dNu.EjP().dNu(this.wE.xD().getCodeId());
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTPWPActivity", th2.getMessage());
        }
    }

    protected void TKC(boolean z10) {
        Drawable drawableSj;
        try {
            this.Ei = z10;
            if (z10) {
                drawableSj = com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this.Fmk, "tt_mute_wrapper");
            } else {
                drawableSj = com.bytedance.sdk.openadsdk.utils.TEQ.Sj(this.Fmk, "tt_unmute_wrapper");
            }
            this.f20346aa.setImageDrawable(drawableSj);
            Dq dq2 = this.Fm;
            if (dq2 != null) {
                dq2.Sj(z10);
            }
            com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.UHs;
            if (sj2 != null) {
                sj2.Sj(z10);
            }
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.sU.sP("TTPWPActivity", e10.getMessage());
        }
    }

    protected void Sj() {
        if (this.uvD == null) {
            return;
        }
        sU sUVar = this.wE;
        if (sUVar != null && !com.bytedance.sdk.openadsdk.core.model.uP.sef(sUVar)) {
            this.uvD.TKC();
            return;
        }
        this.uvD.sP(this.wE, this.ndK);
        if (this.uvD.getDownloadButton() != null) {
            com.bytedance.sdk.openadsdk.core.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.core.sP.Sj(this, this.wE, "embeded_ad", this.zR) {
                @Override
                public void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
                    sU sUVar2 = ((com.bytedance.sdk.openadsdk.core.sP.sP) this).vS;
                    if (sUVar2 == null || sUVar2.kF() != 1 || z10) {
                        super.Sj(view, f10, f11, f12, f13, sparseArray, z10);
                        TTPlayableLandingPageActivity.this.LqL = true;
                        TTPlayableLandingPageActivity.this.Yf = true;
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("playable_url", TTPlayableLandingPageActivity.this.f20348ib);
                        } catch (JSONException e10) {
                            com.bytedance.sdk.component.utils.sU.Sj("TTPWPActivity", "onClick JSON ERROR", e10);
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(TTPlayableLandingPageActivity.this.wE, ((com.bytedance.sdk.openadsdk.core.sP.sP) this).Jcg, "click_playable_download_button_loading", jSONObject);
                    }
                }
            };
            sj2.Sj(this.LD);
            this.uvD.getDownloadButton().setOnClickListener(sj2);
        }
        if (com.bytedance.sdk.openadsdk.core.model.uP.uvD(this.wE)) {
            this.ley.sendMessageDelayed(Sj(2, com.bytedance.sdk.openadsdk.core.model.uP.Sj(2)), com.bytedance.sdk.openadsdk.core.model.uP.dx(this.wE));
        }
    }

    private void Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        if (vSVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(this.Fmk).Sj(false).sP(false).Sj(vSVar.getWebView());
        vSVar.setUserAgentString(TzV.Sj(vSVar.getWebView(), this.sef));
        vSVar.setMixedContentMode(0);
    }

    public void Sj(String str) {
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), this.wE, "embeded_ad", str);
    }

    @Override
    public void Sj(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            FPG.Sj((View) this.TEQ, 0);
            return;
        }
        if (i10 != 2) {
            return;
        }
        TEQ teq = this.uvD;
        if (teq == null || !teq.EjP()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("remove_loading_page_type", message.arg1);
                int i11 = message.arg2;
                if (i11 != 0) {
                    jSONObject.put("remove_loading_page_reason", i11);
                }
                jSONObject.put("playable_url", this.f20348ib);
                TEQ teq2 = this.uvD;
                jSONObject.put("duration", teq2 != null ? teq2.getDisplayDuration() : 0L);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTPWPActivity", "handleMsg json error", e10);
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.wE, "embeded_ad", "remove_loading_page", jSONObject);
            this.ley.removeMessages(2);
            TEQ teq3 = this.uvD;
            if (teq3 != null) {
                teq3.TKC();
            }
        }
    }

    @Override
    public void Sj(boolean z10) {
        com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar;
        this.LqL = true;
        this.Yf = z10;
        if (!z10) {
            try {
                Toast.makeText(this.Fmk, "Download later", 0).show();
            } catch (Throwable unused) {
            }
        }
        if (!this.Yf || (vSVar = this.LD) == null) {
            return;
        }
        vSVar.EjP();
    }
}

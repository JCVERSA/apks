package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.JcM;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class RiZ implements com.bytedance.sdk.openadsdk.aa.uA {
    private volatile boolean Dq;
    private ImageView EjP;
    private boolean HiB;
    private final AtomicBoolean Jcg = new AtomicBoolean(false);
    private final Activity Sj;
    private int TEQ;
    private com.bytedance.sdk.component.uA.vS TKC;
    private final sU sP;
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj uA;
    private com.bytedance.sdk.openadsdk.core.sP.Jcg vS;

    public RiZ(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.uA = sj2;
        this.sP = sj2.sP;
        this.Sj = sj2.Fm;
    }

    public void EjP() {
        Sj(Integer.MAX_VALUE, (String) null);
    }

    private void HiB() {
        this.TKC.HiB();
        Sj(this.TKC);
        this.TKC.setDisplayZoomControls(false);
        this.TKC.setWebChromeClient(new WebChromeClient() {
            @Override
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                if (i10 == 100) {
                    RiZ.this.EjP();
                }
            }
        });
        this.TKC.setWebViewClient(new com.bytedance.sdk.component.uA.vS.Sj() {
            @Override
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                RiZ.this.EjP();
            }

            @Override
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (webResourceRequest.isForMainFrame()) {
                    RiZ.this.Sj(webResourceResponse.getStatusCode(), webResourceRequest.getUrl() != null ? webResourceRequest.getUrl().toString() : null);
                }
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (RiZ.this.Sj(str)) {
                    return true;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        });
    }

    public boolean TKC() {
        if (!this.HiB) {
            return false;
        }
        ImageView imageView = this.EjP;
        if (imageView != null) {
            imageView.performClick();
            return true;
        }
        com.bytedance.sdk.component.uA.vS vSVar = this.TKC;
        if (vSVar == null) {
            return false;
        }
        this.vS.onClick(vSVar);
        return true;
    }

    public void sP() {
        DeviceUtils.AudioInfoReceiver.sP(this);
        com.bytedance.sdk.component.uA.vS vSVar = this.TKC;
        if (vSVar != null) {
            JcM.Sj(vSVar.getWebView());
        }
    }

    public void Sj() {
        DeviceUtils.AudioInfoReceiver.Sj(this);
        this.TEQ = DeviceUtils.Jcg();
        if (this.sP.GMp() != null) {
            this.vS = new com.bytedance.sdk.openadsdk.core.sP.Jcg("VAST_END_CARD", this.sP.GMp()) {
            };
            com.bytedance.sdk.openadsdk.core.Ym.TKC TKC = this.sP.GMp().TKC();
            if (TKC != null) {
                String strHiB = TKC.HiB();
                if (!TextUtils.isEmpty(strHiB)) {
                    this.HiB = true;
                    this.EjP = (ImageView) this.uA.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.Dq);
                    Sj(TKC.sP(), TKC.TKC());
                    com.bytedance.sdk.openadsdk.uA.EjP.Sj(strHiB).Sj(TKC.sP()).sP(TKC.TKC()).HiB(FPG.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj())).EjP(FPG.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj())).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(this.sP, strHiB, new Sj(this.EjP, strHiB, this, this.Jcg)));
                    return;
                }
                com.bytedance.sdk.component.uA.vS vSVar = (com.bytedance.sdk.component.uA.vS) this.uA.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.uA);
                this.TKC = vSVar;
                if (vSVar == null) {
                    return;
                }
                HiB();
                String strEjP = TKC.EjP();
                if (strEjP != null) {
                    this.HiB = true;
                    if (strEjP.startsWith("http")) {
                        this.TKC.a_(strEjP);
                        return;
                    }
                    String strSj = com.bytedance.sdk.openadsdk.core.Ym.HiB.Sj(strEjP);
                    String str = TextUtils.isEmpty(strSj) ? strEjP : strSj;
                    this.TKC.setDefaultTextEncodingName("UTF -8");
                    this.TKC.Sj(null, str, "text/html", "UTF-8", null);
                }
            }
        }
    }

    @Override
    public void sP(int i10) {
        int i11 = this.TEQ;
        if (i11 == 0 && i10 > 0) {
            this.sP.GMp().Sj().uA(this.uA.f20376ib.Jcg());
        } else if (i11 > 0 && i10 == 0) {
            this.sP.GMp().Sj().Dq(this.uA.f20376ib.Jcg());
        }
        this.TEQ = i10;
    }

    private static class Sj implements com.bytedance.sdk.component.HiB.uvD<Bitmap> {
        private final AtomicBoolean EjP;
        private final WeakReference<ImageView> Sj;
        private final WeakReference<RiZ> TKC;
        private final String sP;

        public Sj(ImageView imageView, String str, RiZ riZ, AtomicBoolean atomicBoolean) {
            this.Sj = new WeakReference<>(imageView);
            this.sP = str;
            this.TKC = new WeakReference<>(riZ);
            this.EjP = atomicBoolean;
        }

        @Override
        public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
            RiZ riZ;
            ImageView imageView = this.Sj.get();
            if (imageView == null || (riZ = this.TKC.get()) == null || ym2 == null) {
                return;
            }
            Bitmap bitmapSP = ym2.sP();
            if (bitmapSP == null) {
                riZ.Sj(-1, this.sP);
                return;
            }
            imageView.setImageBitmap(bitmapSP);
            this.EjP.set(true);
            riZ.EjP();
        }

        @Override
        public void Sj(int i10, String str, @Nullable Throwable th2) {
            RiZ riZ;
            ImageView imageView = this.Sj.get();
            if (imageView == null || (riZ = this.TKC.get()) == null) {
                return;
            }
            imageView.setVisibility(8);
            riZ.Sj(-2, this.sP);
        }
    }

    public void Sj(final int i10, final String str) {
        String strYm;
        if (this.Dq) {
            return;
        }
        this.Dq = true;
        if (this.sP.GMp() != null) {
            strYm = this.sP.GMp().Ym();
        } else {
            strYm = "";
        }
        final String str2 = strYm;
        if (i10 == Integer.MAX_VALUE) {
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.sP, str2, "load_vast_endcard_success", (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new com.bytedance.sdk.component.Dq.Dq("load_vast_endcard_fail") {
                @Override
                public void run() {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("reason_code", i10);
                        jSONObject.put("error_code", i10);
                        String str3 = str;
                        if (str3 != null) {
                            jSONObject.put("url", str3);
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.sP(RiZ.this.sP, str2, "load_vast_endcard_fail", jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    private void Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        vSVar.setVerticalScrollBarEnabled(false);
        vSVar.setHorizontalScrollBarEnabled(false);
        vSVar.setMixedContentMode(0);
        vSVar.setJavaScriptEnabled(true);
        vSVar.setJavaScriptCanOpenWindowsAutomatically(true);
        vSVar.setDomStorageEnabled(true);
        vSVar.setDatabaseEnabled(true);
        vSVar.setCacheMode(-1);
        vSVar.setAllowFileAccess(false);
        vSVar.setSupportZoom(true);
        vSVar.setBuiltInZoomControls(true);
        vSVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        vSVar.setUseWideViewPort(true);
    }

    public boolean Sj(String str) {
        sU sUVar;
        if (str == null || (sUVar = this.sP) == null || sUVar.GMp() == null || this.vS == null) {
            return false;
        }
        this.sP.GMp().Jcg(str);
        this.vS.onClick(this.TKC);
        return true;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Sj(int i10, int i11) {
        if (i10 == 0 || i11 == 0 || this.EjP == null) {
            return;
        }
        int iTKC = FPG.TKC((Context) this.Sj);
        int iHiB = FPG.HiB(this.Sj);
        float f10 = i10 / i11;
        float f11 = iTKC;
        if (f10 <= f11 / iHiB) {
            iTKC = (int) Math.ceil(f11 * f10);
        } else {
            iHiB = (int) Math.ceil(f11 / f10);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.EjP.getLayoutParams();
        layoutParams.width = iTKC;
        layoutParams.height = iHiB;
        layoutParams.gravity = 17;
        this.EjP.setLayoutParams(layoutParams);
        this.EjP.setOnClickListener(this.vS);
        this.EjP.setOnTouchListener(this.vS);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public boolean Sj(dNu dnu) {
        com.bytedance.sdk.openadsdk.core.Ym.TKC TKC;
        if (!this.HiB) {
            return false;
        }
        if (this.EjP != null && this.Jcg.get()) {
            this.EjP.setVisibility(0);
        } else {
            com.bytedance.sdk.component.uA.vS vSVar = this.TKC;
            if (vSVar != null) {
                vSVar.setVisibility(0);
                if (this.TKC.getWebView() != null) {
                    this.TKC.getWebView().setOnTouchListener(this.vS);
                }
            }
        }
        sU sUVar = this.sP;
        if (sUVar == null || sUVar.GMp() == null || (TKC = this.sP.GMp().TKC()) == null) {
            return true;
        }
        TKC.sP(dnu != null ? dnu.Jcg() : -1L);
        return true;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.HiB hiB) {
        com.bytedance.sdk.openadsdk.core.sP.Jcg jcg = this.vS;
        if (jcg != null) {
            jcg.Sj(hiB);
        }
    }
}

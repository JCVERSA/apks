package com.bytedance.sdk.openadsdk.component.reward.Sj;

import a6.b;
import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.JcM;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.logging.type.LogSeverity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class TzV implements com.bytedance.sdk.openadsdk.aa.uA {
    private boolean Bml;
    private com.bytedance.sdk.openadsdk.common.EjP Chv;
    protected com.bytedance.sdk.openadsdk.EjP.EjP.HiB Dq;
    private boolean EZ;
    private boolean Ei;
    protected String EjP;
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj FPG;
    private boolean Fm;
    private int Fmk;
    com.bytedance.sdk.openadsdk.EjP.Ym HiB;
    private boolean HpB;
    private long LqL;
    private boolean Mts;
    Yf Sj;
    private com.bytedance.sdk.component.uA.vS TzV;
    private com.bytedance.sdk.openadsdk.common.Fmk WMZ;

    @NonNull
    private final sU Ym;
    private int Zq;
    private String aNB;

    private final String f20382aa;
    private boolean cX;
    private com.bytedance.sdk.component.uA.vS dNu;

    private long f20383db;
    private String dwU;

    private boolean f20384dx;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.vS.Sj gY;

    private boolean f20385ib;

    private boolean f20386jb;
    private View kF;
    private float ley;
    private int qRN;
    Yf sP;
    private ILoader sdp;
    private final boolean sef;
    private View uP;
    private int uvD;
    private float wE;
    private com.bytedance.sdk.openadsdk.core.widget.Sj.HiB xD;
    private boolean zR;
    protected boolean TKC = true;
    private boolean RiZ = false;
    private final AtomicBoolean sU = new AtomicBoolean(true);
    int vS = 0;
    String Jcg = "";
    boolean uA = false;
    private SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> Yf = new SparseArray<>();
    private boolean LD = true;
    private float fF = -1.0f;
    private float JcM = -1.0f;
    private boolean Wjd = false;
    private long xhi = -1;
    private volatile int ndK = 0;
    private int UHs = -1;
    private volatile int MuB = 0;
    private volatile int IOh = 0;
    private long pfr = 0;
    public boolean TEQ = false;

    private int f20387kb = -1;

    public interface EjP {
        void Sj(WebView webView, int i10);

        void Sj(WebView webView, String str);

        void Sj(WebView webView, String str, Bitmap bitmap);
    }

    private static class TKC implements com.bytedance.sdk.openadsdk.aa.Ym {
        private final com.bytedance.sdk.component.uA.vS Sj;

        @Override
        public void Sj() {
            com.bytedance.sdk.component.uA.vS vSVar = this.Sj;
            if (vSVar == null) {
                return;
            }
            vSVar.Zq();
        }

        @Override
        public void sP() {
            com.bytedance.sdk.component.uA.vS vSVar = this.Sj;
            if (vSVar == null) {
                return;
            }
            vSVar.TzV();
        }

        private TKC(com.bytedance.sdk.component.uA.vS vSVar) {
            this.Sj = vSVar;
        }
    }

    private static class sP implements com.bytedance.sdk.openadsdk.aa.Sj {
        private final View Sj;

        public sP(View view) {
            this.Sj = view;
        }

        @Override
        public int Sj() {
            View view = this.Sj;
            int measuredHeight = view != null ? view.getMeasuredHeight() : -1;
            return measuredHeight <= 0 ? FPG.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj()) : measuredHeight;
        }

        @Override
        public int sP() {
            View view = this.Sj;
            int measuredWidth = view != null ? view.getMeasuredWidth() : -1;
            return measuredWidth <= 0 ? FPG.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj()) : measuredWidth;
        }
    }

    public TzV(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.FPG = sj2;
        this.Ym = sj2.sP;
        this.f20382aa = sj2.HiB;
        this.sef = sj2.EjP;
    }

    static int dNu(TzV tzV) {
        int i10 = tzV.ndK;
        tzV.ndK = i10 + 1;
        return i10;
    }

    private void db() {
        this.sP.Sj("showPlayableEndCardOverlay", (JSONObject) null);
        this.FPG.HpB.sendEmptyMessageDelayed(600, 1000L);
        this.FPG.HpB.postDelayed(new Runnable() {
            @Override
            public void run() {
                TzV.this.xhi();
            }
        }, 1000L);
        com.bytedance.sdk.openadsdk.utils.Fmk fmk = this.FPG.f20380xu;
        if (fmk != null) {
            fmk.Sj(0L);
        }
    }

    private com.bytedance.sdk.openadsdk.EjP.EjP.HiB ndK() {
        return new com.bytedance.sdk.openadsdk.EjP.dNu(uP.Jcg(this.Ym) ? 3 : 2, this.sef ? "rewarded_video" : "fullscreen_interstitial_ad", this.Ym);
    }

    static int sef(TzV tzV) {
        int i10 = tzV.MuB;
        tzV.MuB = i10 + 1;
        return i10;
    }

    static int uvD(TzV tzV) {
        int i10 = tzV.IOh;
        tzV.IOh = i10 + 1;
        return i10;
    }

    public void xhi() {
        this.Fm = true;
        this.cX = false;
        this.FPG.HpB.removeMessages(600);
        this.FPG.HpB.removeMessages(LogSeverity.ALERT_VALUE);
        this.FPG.HpB.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        this.FPG.Mts.EjP(false);
        this.FPG.RiZ.set(true);
        this.FPG.f20378kb.Zq();
        this.Ym.UmR();
        if (this.Ym.UmR() || !Mts.Dq(uP.Sj(this.Ym))) {
            return;
        }
        View viewTEQ = this.FPG.Wjd.TEQ();
        View.OnClickListener onClickListener = (View.OnClickListener) viewTEQ.getTag(viewTEQ.getId());
        if (onClickListener != null) {
            Sj sj2 = new Sj(this.FPG, viewTEQ, onClickListener);
            viewTEQ.setOnClickListener(sj2);
            viewTEQ.setOnTouchListener(sj2);
        }
    }

    public boolean Ei() {
        return this.Fm;
    }

    public void FPG() {
        FPG.Sj((View) this.TzV, 8);
    }

    public boolean Fm() {
        com.bytedance.sdk.component.uA.vS vSVar = this.dNu;
        return vSVar == null || vSVar.getWebView() == null;
    }

    public boolean HpB() {
        return this.TEQ;
    }

    public void Mts() {
        FPG.Sj((View) this.dNu, 0);
        FPG.Sj((View) this.TzV, 8);
    }

    public boolean WMZ() {
        Yf yf2 = this.Sj;
        if (yf2 == null) {
            return false;
        }
        return yf2.uA();
    }

    public boolean Wjd() {
        return this.f20384dx && this.sU.get();
    }

    public void jb() {
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.HiB;
        if (ym2 != null) {
            ym2.HiB();
        }
    }

    public boolean xD() {
        return this.cX;
    }

    public Yf Fmk() {
        return this.sP;
    }

    public void JcM() {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.Dq;
        if (hiB != null) {
            hiB.TEQ();
        }
    }

    public boolean LD() {
        return this.uA;
    }

    public void LqL() {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.Dq;
        if (hiB != null) {
            hiB.Jcg();
        }
    }

    public boolean RiZ() {
        return this.f20384dx;
    }

    public com.bytedance.sdk.component.uA.vS TEQ() {
        return this.dNu;
    }

    public boolean TzV() {
        return this.sU.get();
    }

    public void Yf() {
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.HiB;
        if (ym2 != null) {
            ym2.Sj(System.currentTimeMillis());
        }
    }

    public com.bytedance.sdk.component.uA.vS Ym() {
        return this.TzV;
    }

    public void Zq() {
        b bVarUHs;
        if (uP.HiB(this.Ym)) {
            sU sUVar = this.Ym;
            if (sUVar != null && (bVarUHs = sUVar.UHs()) != null) {
                this.EjP = bVarUHs.z();
            }
        } else {
            this.EjP = uP.Fmk(this.Ym);
        }
        String strSj = Sj(this.EjP, this.Ym, this.Fmk, this.uvD, this.Zq);
        this.EjP = strSj;
        if (TextUtils.isEmpty(strSj)) {
            return;
        }
        this.f20386jb = this.EjP.contains("use_second_endcard=1");
    }

    public Yf aa() {
        return this.Sj;
    }

    public boolean dNu() {
        String str = this.EjP;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    public void dx() {
        com.bytedance.sdk.component.uA.vS vSVar = this.dNu;
        if (vSVar != null) {
            vSVar.Zq();
        }
        com.bytedance.sdk.component.uA.vS vSVar2 = this.TzV;
        if (vSVar2 != null) {
            vSVar2.Zq();
        }
        if (this.xhi > 0) {
            this.f20383db += SystemClock.elapsedRealtime() - this.xhi;
            this.xhi = 0L;
        }
        Yf yf2 = this.Sj;
        if (yf2 != null) {
            yf2.sP(false);
            sP(this.Sj, false);
            Sj(this.Sj, true, false);
        }
        if (this.sP == null || !uP.Dq(this.Ym)) {
            return;
        }
        this.sP.sP(false);
        sP(this.sP, false);
        Sj(this.sP, true, false);
    }

    public void fF() {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.Dq;
        if (hiB != null) {
            hiB.TKC();
            this.Dq.EjP();
        }
    }

    public int ib() {
        return this.vS;
    }

    public String kF() {
        return this.Jcg;
    }

    public void ley() {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.Dq;
        if (hiB != null) {
            hiB.Dq();
        }
    }

    public void sU() {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.Dq;
        if (hiB != null) {
            hiB.uA();
        }
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.HiB;
        if (ym2 != null) {
            ym2.Dq();
        }
    }

    public com.bytedance.sdk.openadsdk.EjP.Ym sef() {
        return this.HiB;
    }

    public void uA() {
        this.Sj.Sj("showPlayableEndCardOverlay", (JSONObject) null);
        this.FPG.HpB.sendEmptyMessageDelayed(600, 1000L);
        this.FPG.HpB.postDelayed(new Runnable() {
            @Override
            public void run() {
                TzV.this.xhi();
            }
        }, 1000L);
        com.bytedance.sdk.openadsdk.utils.Fmk fmk = this.FPG.f20380xu;
        if (fmk != null) {
            fmk.Sj(0L);
        }
    }

    public String uP() {
        return this.EjP;
    }

    public void uvD() {
        com.bytedance.sdk.component.uA.vS vSVar = this.dNu;
        if (vSVar != null) {
            JcM.Sj(vSVar.getWebView());
        }
        com.bytedance.sdk.component.uA.vS vSVar2 = this.TzV;
        if (vSVar2 != null) {
            JcM.Sj(vSVar2.getWebView());
        }
        long j10 = this.f20383db;
        if (j10 > 0) {
            if (this.xhi > 0) {
                this.f20383db = j10 + (SystemClock.elapsedRealtime() - this.xhi);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("endcard_overlay_render_type", sU.TKC(this.Ym) ? 7 : 0);
            } catch (Throwable unused) {
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.FPG.sP, this.f20382aa, "second_endcard_duration", jSONObject, this.f20383db);
        }
        this.dNu = null;
        if (this.Dq != null && !com.bytedance.sdk.openadsdk.core.model.TzV.EjP(this.Ym) && !com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.Ym) && !sU.TKC(this.Ym)) {
            this.Dq.Sj(true);
            this.Dq.aa();
        }
        Yf yf2 = this.Sj;
        if (yf2 != null) {
            yf2.aa();
        }
        Yf yf3 = this.sP;
        if (yf3 != null) {
            yf3.aa();
        }
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.HiB;
        if (ym2 != null) {
            ym2.EjP(this.Ym.Ei() || uP.Jcg(this.Ym));
        }
        DeviceUtils.AudioInfoReceiver.sP(this);
    }

    public boolean wE() {
        if (sU.TKC(this.Ym)) {
            return this.f20386jb && !this.Ei && this.FPG.WMZ.aa();
        }
        return this.f20386jb && !this.Ei && this.sU.get() && this.f20384dx;
    }

    public void zR() {
        com.bytedance.sdk.component.uA.vS vSVar = this.dNu;
        if (vSVar != null) {
            vSVar.Fmk();
        }
        com.bytedance.sdk.component.uA.vS vSVar2 = this.TzV;
        if (vSVar2 != null) {
            vSVar2.Fmk();
        }
        if (this.xhi == 0) {
            this.xhi = SystemClock.elapsedRealtime();
        }
        Yf yf2 = this.Sj;
        if (yf2 != null) {
            yf2.Ym();
            com.bytedance.sdk.component.uA.vS vSVar3 = this.dNu;
            if (vSVar3 != null) {
                if (vSVar3.getVisibility() == 0) {
                    this.Sj.sP(true);
                    sP(this.Sj, true);
                    Sj(this.Sj, false, true);
                    if (uP.TEQ(this.Ym) && !this.Fm && this.FPG.sP.UmR()) {
                        uA();
                    }
                } else {
                    this.Sj.sP(false);
                    sP(this.Sj, false);
                    Sj(this.Sj, true, false);
                }
            }
        }
        if (this.sP != null && uP.Dq(this.Ym)) {
            this.sP.Ym();
            com.bytedance.sdk.component.uA.vS vSVar4 = this.TzV;
            if (vSVar4 != null) {
                if (vSVar4.getVisibility() == 0) {
                    this.sP.sP(true);
                    sP(this.sP, true);
                    Sj(this.sP, false, true);
                    if (!this.Fm && this.FPG.sP.UmR()) {
                        db();
                    }
                } else {
                    this.sP.sP(false);
                    sP(this.sP, false);
                    Sj(this.sP, true, false);
                }
            }
        }
        com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.HiB;
        if (ym2 != null) {
            ym2.Jcg();
        }
    }

    public void Dq() {
        if (this.dNu == null) {
            return;
        }
        this.sU.set(this.zR);
        if (this.TzV.getVisibility() == 0 && this.zR) {
            db();
            return;
        }
        this.FPG.Mts.TKC(false);
        this.FPG.uP.Jcg(Dq.TKC);
        Sj(this.Sj, true, false);
        sP(this.Sj, false);
        Sj(this.Sj, false);
        this.dNu.uvD();
        if (this.zR) {
            this.TzV.setVisibility(0);
            Sj(this.sP, this.FPG.ndK, true);
            sP(this.sP, true);
            Sj(this.sP, true);
            this.FPG.HpB.removeMessages(600);
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.FPG;
            if (!sj2.FPG.TKC(sj2.f20378kb)) {
                this.FPG.f20378kb.kF();
            }
        } else {
            if (this.FPG.uP.Sj()) {
                this.FPG.uP.Sj(5);
            }
            this.FPG.FPG.EjP();
            com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj3 = this.FPG;
            sj3.f20380xu.Sj(sj3.Dq);
        }
        this.cX = true;
    }

    public void HiB() {
        if (uP.HiB(this.Ym)) {
            return;
        }
        vS();
    }

    public void Jcg() {
        b bVarUHs = this.Ym.UHs();
        if (bVarUHs == null) {
            return;
        }
        String strZ = bVarUHs.z();
        this.aNB = strZ;
        if (TextUtils.isEmpty(strZ)) {
            return;
        }
        this.aNB = Sj(this.aNB, this.Ym, this.Fmk, this.uvD, this.Zq);
        this.TzV.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj(), this.sP, this.Ym.aZ(), this.HiB, this.Ym.Ei() || uP.Jcg(this.Ym)) {
            @Override
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = TzV.this.Dq;
                if (hiB != null) {
                    hiB.vS();
                }
            }

            @Override
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = TzV.this.Dq;
                if (hiB != null) {
                    hiB.HiB();
                }
            }

            @Override
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                if (TzV.this.Sj(str2)) {
                    return;
                }
                TzV.this.zR = false;
                TzV tzV = TzV.this;
                tzV.vS = i10;
                tzV.Jcg = str;
                if (tzV.Dq != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", i10);
                        jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, str);
                        TzV.this.Dq.Sj(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i10, str, str2);
            }

            @Override
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                    TzV.this.zR = false;
                    if (webResourceResponse != null) {
                        TzV.this.vS = webResourceResponse.getStatusCode();
                        TzV.this.Jcg = "onReceivedHttpError";
                    }
                }
                if (TzV.this.Dq != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (webResourceResponse != null) {
                            jSONObject.put("code", webResourceResponse.getStatusCode());
                            jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceResponse.getReasonPhrase());
                        }
                        TzV.this.Dq.Sj(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (webResourceRequest != null) {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }
            }

            @Override
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest == null || webResourceRequest.getUrl() == null || !TzV.this.Sj(webResourceRequest.getUrl().toString())) {
                    TzV.this.zR = false;
                    if (TzV.this.Dq != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            if (webResourceError != null) {
                                jSONObject.put("code", webResourceError.getErrorCode());
                                jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceError.getDescription());
                            }
                            TzV.this.Dq.Sj(jSONObject);
                        } catch (JSONException unused) {
                        }
                    }
                    if (webResourceError != null) {
                        TzV.this.vS = webResourceError.getErrorCode();
                        TzV.this.Jcg = String.valueOf(webResourceError.getDescription());
                    }
                    if (webResourceRequest == null) {
                        return;
                    }
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                }
            }
        });
        this.TzV.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.sP, this.HiB) {
            @Override
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                if (!TzV.this.FPG.Jcg || TzV.this.FPG.aNB == null) {
                    return;
                }
                TzV.this.FPG.aNB.Sj(webView, i10, TzV.this.gY);
            }
        });
        com.bytedance.sdk.openadsdk.utils.sU.Sj(this.TzV, this.aNB);
        this.zR = true;
    }

    public void vS() {
        if (TextUtils.isEmpty(sU.Sj(this.FPG.Ei, this.Ym))) {
            sU sUVar = this.Ym;
            if (sUVar != null && !sUVar.Za() && this.sdp == null && dNu()) {
                this.dwU = this.Ym.eMB();
                this.sdp = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().sP();
                int iSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(this.sdp, this.dwU);
                this.qRN = iSj;
                this.UHs = iSj > 0 ? 2 : 0;
                if (!TextUtils.isEmpty(this.dwU)) {
                    com.bytedance.sdk.openadsdk.EjP.Ym ym2 = this.HiB;
                    if (ym2 != null) {
                        ym2.Sj(this.UHs);
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(this.pfr, this.Ym, "landingpage_endcard", this.sdp, this.dwU);
                }
            }
            if ((TextUtils.isEmpty(this.EjP) || !this.EjP.contains("play.google.com/store")) && !com.bytedance.sdk.openadsdk.core.model.TzV.vS(this.Ym) && !com.bytedance.sdk.openadsdk.core.model.TzV.HiB(this.Ym)) {
                StringBuilder sb2 = new StringBuilder("preLoadEndCardForce: return mShouldPreloadEndCard ");
                sb2.append(this.TKC);
                sb2.append(",webViewIsLoading ");
                sb2.append(this.Bml);
                if (this.TKC) {
                    if (this.dNu != null && !TextUtils.isEmpty(this.EjP) && sU.sP(this.Ym)) {
                        if (this.Bml) {
                            return;
                        }
                        String str = this.EjP + "&is_pre_render=1";
                        com.bytedance.sdk.openadsdk.EjP.Ym ym3 = this.HiB;
                        if (ym3 != null) {
                            ym3.EjP();
                        }
                        if (uP.Jcg(this.Ym)) {
                            com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().sP(this.Ym);
                        }
                        com.bytedance.sdk.openadsdk.utils.sU.Sj(this.dNu, str);
                        this.FPG.uP.Sj(str);
                        this.Bml = true;
                        return;
                    }
                    if (sU.TKC(this.Ym)) {
                        this.FPG.WMZ.TKC();
                        return;
                    }
                    return;
                }
                return;
            }
            this.uA = true;
        }
    }

    public boolean EjP() {
        return this.Ei;
    }

    public boolean TKC() {
        return this.HpB;
    }

    void sP() {
        com.bytedance.sdk.openadsdk.common.Fmk fmk;
        this.kF = this.FPG.Fm.findViewById(R.id.content);
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.FPG;
        boolean z10 = sj2.Jcg;
        this.Mts = z10;
        if (z10 && (fmk = this.WMZ) != null) {
            this.dNu = fmk.EjP();
        } else {
            com.bytedance.sdk.component.uA.vS vSVar = (com.bytedance.sdk.component.uA.vS) sj2.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.sef);
            this.dNu = vSVar;
            if (vSVar != null && sU.sP(this.Ym)) {
                this.dNu.HiB();
            } else {
                FPG.Sj((View) this.dNu, 8);
            }
        }
        com.bytedance.sdk.component.uA.vS vSVar2 = (com.bytedance.sdk.component.uA.vS) this.FPG.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.uvD);
        this.TzV = vSVar2;
        if (vSVar2 != null && uP.Jcg(this.Ym) && uP.Dq(this.Ym)) {
            this.TzV.HiB();
            this.TzV.setDisplayZoomControls(false);
        } else {
            FPG.Sj((View) this.TzV, 8);
        }
        com.bytedance.sdk.component.uA.vS vSVar3 = this.dNu;
        if (vSVar3 != null) {
            vSVar3.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                @Override
                public void onGlobalLayout() {
                    if (TzV.this.dNu == null || TzV.this.dNu.getViewTreeObserver() == null) {
                        return;
                    }
                    TzV.this.dNu.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int measuredWidth = TzV.this.dNu.getMeasuredWidth();
                    int measuredHeight = TzV.this.dNu.getMeasuredHeight();
                    if (TzV.this.dNu.getVisibility() == 0) {
                        TzV.this.Sj(measuredWidth, measuredHeight);
                    }
                }
            });
        }
        com.bytedance.sdk.component.uA.vS vSVar4 = this.TzV;
        if (vSVar4 != null) {
            vSVar4.setLandingPage(true);
            this.TzV.setTag(uP.Jcg(this.Ym) ? this.f20382aa : "landingpage_endcard");
            this.TzV.setWebViewClient(new com.bytedance.sdk.component.uA.vS.Sj());
            this.TzV.setMaterialMeta(this.Ym.hif());
        }
    }

    public void EjP(boolean z10) {
        if (uP.sP(this.Ym)) {
            return;
        }
        HiB(z10);
    }

    public void HiB(boolean z10) {
        if (this.Sj == null || this.FPG.Fm.isFinishing()) {
            return;
        }
        this.FPG.uP.HiB(z10);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z10);
            this.Sj.Sj("volumeChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void TKC(boolean z10) {
        sP(this.Sj, z10);
    }

    private static class Sj extends com.bytedance.sdk.openadsdk.core.sP.Sj implements com.bytedance.sdk.openadsdk.core.sP.sP.Sj {
        private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj Sj;
        private final View.OnClickListener TKC;
        private final View sP;

        public Sj(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2, View view, View.OnClickListener onClickListener) {
            super(sj2.Fm, sj2.sP, sj2.HiB, sj2.EjP ? 7 : 5);
            this.Sj = sj2;
            this.sP = view;
            this.TKC = onClickListener;
            HashMap map = new HashMap();
            map.put("close_auto_click", Boolean.TRUE);
            map.put("click_scence", 2);
            Sj(map);
            Sj(sj2.kF.TKC());
            Sj(this);
        }

        @Override
        public void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, boolean z10) {
            if (!((com.bytedance.sdk.openadsdk.core.sP.sP) this).vS.UmR()) {
                super.Sj(view, f10, f11, f12, f13, sparseArray, z10);
                this.Sj.f20377jb.c_();
            } else {
                this.TKC.onClick(view);
                this.sP.setOnTouchListener(null);
                this.sP.setOnClickListener(this.TKC);
            }
        }

        @Override
        public void Sj(View view, int i10) {
            this.sP.setOnTouchListener(null);
            this.sP.setOnClickListener(this.TKC);
        }
    }

    public void Sj() {
        if (this.f20385ib) {
            return;
        }
        this.f20385ib = true;
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.FPG;
        this.Fmk = sj2.sdp;
        this.Zq = sj2.IOh;
        this.uvD = sj2.pfr;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        sP();
        this.pfr = SystemClock.elapsedRealtime() - jElapsedRealtime;
    }

    public void Jcg(boolean z10) {
        this.cX = z10;
    }

    public void Sj(String str, final com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar) {
        Sj(str, new EjP() {
            @Override
            public void Sj(WebView webView, String str2) {
                if (TzV.this.FPG.Fm.isFinishing()) {
                    return;
                }
                TzV.this.FPG.uP.sP(TzV.this.TzV());
            }

            @Override
            public void Sj(WebView webView, String str2, Bitmap bitmap) {
                if (TzV.this.Wjd || !uP.TzV(TzV.this.FPG.sP)) {
                    return;
                }
                TzV.this.Wjd = true;
                TzV.this.FPG.uP.Sj(TzV.this.FPG.vS, TzV.this.FPG.sP, TzV.this.FPG.sP.TT());
                if (!uP.Dq(TzV.this.Ym)) {
                    TzV.this.FPG.HpB.sendEmptyMessageDelayed(600, TzV.this.FPG.uP.uA() * 1000);
                }
                TzV.this.FPG.uP.TEQ();
                TzV.this.FPG.f20377jb.Ym();
            }

            @Override
            public void Sj(WebView webView, int i10) {
                try {
                    if (!uP.TzV(TzV.this.FPG.sP) || !TzV.this.FPG.sP.eEJ() || TzV.this.FPG.Fm.isFinishing()) {
                        if (!TzV.this.FPG.Jcg || TzV.this.FPG.aNB == null) {
                            return;
                        }
                        TzV.this.FPG.aNB.Sj(webView, i10, TzV.this.gY);
                        return;
                    }
                    TzV.this.FPG.uP.TKC(i10);
                } catch (Exception unused) {
                }
            }
        });
        if (uP.TzV(this.FPG.sP)) {
            Sj(this.TzV);
            this.FPG.uP.Sj(new DownloadListener() {
                @Override
                public void onDownloadStart(String str2, String str3, String str4, String str5, long j10) {
                    TzV.this.FPG.kF.sP();
                    com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar2 = sPVar;
                    if (sPVar2 != null) {
                        sPVar2.EjP();
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.FPG;
        sj2.uP.TKC(sj2.Chv);
        Sj(new DownloadListener() {
            @Override
            public void onDownloadStart(String str2, String str3, String str4, String str5, long j10) {
                TzV.this.FPG.kF.sP();
                com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar2 = sPVar;
                if (sPVar2 != null) {
                    sPVar2.EjP();
                }
            }
        });
    }

    public void Sj(com.bytedance.sdk.openadsdk.aa.vS vSVar, String str, final com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar) {
        if (this.dNu == null) {
            return;
        }
        HashMap map = new HashMap();
        if (uP.Jcg(this.Ym)) {
            map.put("click_scence", 3);
        } else {
            map.put("click_scence", 2);
        }
        this.Dq = ndK();
        Yf yf2 = new Yf(this.FPG.Fm);
        this.Sj = yf2;
        yf2.Sj(this.FPG.f20377jb);
        String strLip = this.Ym.Lip();
        this.Sj.sP(this.dNu).Sj(this.Ym).TKC(this.Ym.aZ()).EjP(this.Ym.mZN()).sP(this.Ym.TT() ? 7 : 5).Sj(new sP(this.dNu)).HiB(strLip).Sj(this.dNu).sP(dNu() ? "landingpage_endcard" : str).Sj(map).Sj(this.Dq).Sj(new com.bytedance.sdk.openadsdk.core.widget.HiB() {
            @Override
            public void Sj() {
                if (TzV.this.xD != null) {
                    TzV.this.xD.TKC();
                }
                com.bytedance.sdk.openadsdk.core.aa.EjP.sP sPVar2 = sPVar;
                if (sPVar2 != null) {
                    sPVar2.EjP();
                }
            }
        }).Sj(new Yf.Sj() {
            @Override
            public void Sj() {
                TzV.this.xhi();
            }
        });
        HashMap map2 = new HashMap();
        if (uP.Dq(this.Ym)) {
            map2.put("click_scence", 2);
        }
        Yf yf3 = new Yf(this.FPG.Fm);
        this.sP = yf3;
        yf3.Sj(this.FPG.f20377jb);
        Yf yfHiB = this.sP.sP(this.TzV).Sj(this.Ym).TKC(this.Ym.aZ()).EjP(this.Ym.mZN()).sP(this.Ym.TT() ? 7 : 5).Sj(new sP(this.TzV)).Sj(this.TzV).HiB(strLip);
        if (dNu()) {
            str = "landingpage_endcard";
        }
        yfHiB.sP(str).Sj(map2).Sj(this.Dq).Sj(new com.bytedance.sdk.openadsdk.core.widget.HiB() {
            @Override
            public void Sj() {
                if (TzV.this.xD != null) {
                    TzV.this.xD.TKC();
                }
            }
        }).Sj(new Yf.Sj() {
            @Override
            public void Sj() {
                TzV.this.xhi();
            }
        });
        this.Sj.Sj(new TKC(this.dNu));
        this.sP.Sj(new TKC(this.TzV));
        this.Sj.Sj(this.FPG.Wjd.TEQ()).Sj(this.FPG.Chv).Sj(vSVar).Sj(this.FPG.uP.Ym()).Sj(new com.bytedance.sdk.openadsdk.aa.TKC() {
            @Override
            public void Sj(boolean z10, int i10, String str2) {
                if (z10) {
                    TzV tzV = TzV.this;
                    tzV.TEQ = true;
                    if (tzV.EZ) {
                        TzV.this.EZ = false;
                        TzV tzV2 = TzV.this;
                        tzV2.Sj(tzV2.FPG.ndK, true);
                    }
                }
                if (!sU.EjP(TzV.this.FPG.sP) || uP.Jcg(TzV.this.FPG.sP)) {
                    return;
                }
                TzV.this.Sj(z10, i10, str2);
            }

            @Override
            public void Sj() {
                TzV.this.HpB = true;
                TzV.this.FPG.Wjd.TEQ().performClick();
            }
        });
        this.Sj.HiB(this.f20386jb);
        this.sP.Sj(this.FPG.Wjd.TEQ()).Sj(new com.bytedance.sdk.openadsdk.aa.TKC() {
            @Override
            public void Sj(boolean z10, int i10, String str2) {
            }

            @Override
            public void Sj() {
                TzV.this.HpB = true;
                TzV.this.FPG.Wjd.TEQ().performClick();
            }
        });
    }

    public void sP(boolean z10) {
        Sj(this.Sj, z10);
    }

    public void sP(Yf yf2, boolean z10) {
        try {
            this.FPG.uP.EjP(z10);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z10 ? 1 : 0);
            yf2.Sj("viewableChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override
    public void sP(int i10) {
        int i11 = this.f20387kb;
        if (i11 <= 0 && i10 > 0) {
            EjP(false);
        } else if (i11 > 0 && i10 == 0) {
            EjP(true);
        }
        this.f20387kb = i10;
    }

    public void vS(boolean z10) {
        this.Ei = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("endcard_overlay_render_type", sU.TKC(this.Ym) ? 7 : 0);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.Ym, this.f20382aa, "use_second_endcard", jSONObject);
        this.xhi = SystemClock.elapsedRealtime();
        try {
            if (!sU.TKC(this.Ym)) {
                this.Sj.Sj("click_endcard_close", (JSONObject) null);
            } else if (z10) {
                this.FPG.WMZ.Dq();
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.Ym, this.f20382aa, "endcard_close_skip", jSONObject);
            }
        } catch (Exception unused2) {
        }
        com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2 = this.FPG;
        sj2.f20380xu.Sj(sj2.Dq);
    }

    public void Sj(int i10, int i11) {
        if (this.Sj == null || this.FPG.Fm.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i10);
            jSONObject.put("height", i11);
            this.Sj.Sj("resize", jSONObject);
        } catch (Exception e10) {
            Log.e("TTAD.RFWVM", "", e10);
        }
    }

    public void Sj(boolean z10) {
        this.TKC = z10;
    }

    private static String Sj(String str, sU sUVar, int i10, int i11, int i12) {
        String str2;
        String str3;
        float fTY = sUVar.tY();
        if (!TextUtils.isEmpty(str)) {
            if (i10 == 1) {
                if (str.contains(UrlUtils.QUESTION_MARK)) {
                    str3 = str + UrlUtils.AND_MARK;
                } else {
                    str3 = str + UrlUtils.QUESTION_MARK;
                }
                str = str3 + "orientation=portrait";
            }
            if (str.contains(UrlUtils.QUESTION_MARK)) {
                str2 = str + UrlUtils.AND_MARK;
            } else {
                str2 = str + UrlUtils.QUESTION_MARK;
            }
            str = str2 + "height=" + i11 + "&width=" + i12 + "&aspect_ratio=" + fTY;
        }
        return !uP.Jcg(sUVar) ? com.bytedance.sdk.openadsdk.utils.HiB.Sj(str) : str;
    }

    public void Sj(int i10) {
        FPG.Sj((View) this.dNu, i10);
        com.bytedance.sdk.component.uA.vS vSVar = this.dNu;
        if (vSVar != null) {
            FPG.Sj((View) vSVar.getWebView(), i10);
        }
        if (this.dNu != null && (this.Ym.Ei() || uP.Jcg(this.Ym))) {
            this.dNu.setLandingPage(true);
            this.dNu.setTag(uP.Jcg(this.Ym) ? this.f20382aa : "landingpage_endcard");
            this.dNu.setMaterialMeta(this.Ym.hif());
        }
        if (i10 == 0 && uP.Dq(this.Ym)) {
            Jcg();
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.common.Fmk fmk) {
        this.WMZ = fmk;
    }

    public void Sj(float f10) {
        FPG.Sj(this.dNu, f10);
    }

    public void Sj(Yf yf2, boolean z10) {
        if (this.Sj == null || this.FPG.Fm.isFinishing()) {
            return;
        }
        yf2.sP(z10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Sj(String str, final EjP ejP) {
        com.bytedance.sdk.component.uA.vS vSVar;
        com.bytedance.sdk.component.uA.vS vSVar2 = this.dNu;
        if (vSVar2 == null || vSVar2.getWebView() == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.EjP.Ym ymSP = new com.bytedance.sdk.openadsdk.EjP.Ym(this.Ym, this.dNu.getWebView(), new com.bytedance.sdk.openadsdk.EjP.TEQ() {
            @Override
            public void Sj(int i10) {
                if (TextUtils.isEmpty(TzV.this.dwU)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj.Sj(TzV.this.qRN, TzV.this.ndK, TzV.this.IOh, TzV.this.MuB - TzV.this.IOh, TzV.this.Ym, "landingpage_endcard", i10);
            }
        }, this.UHs).sP(true);
        this.HiB = ymSP;
        this.gY = ymSP.Sj;
        ymSP.Sj(dNu() ? "landingpage_endcard" : str);
        this.HiB.sP(this.f20382aa);
        this.HiB.TKC(true);
        int i10 = Build.VERSION.SDK_INT;
        this.dNu.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() {
            @Override
            public void onScrollChange(View view, int i11, int i12, int i13, int i14) {
                com.bytedance.sdk.openadsdk.EjP.Ym ym2 = TzV.this.HiB;
                if (ym2 != null) {
                    ym2.sP(i12);
                }
            }
        });
        Dq dq2 = this.FPG.uP;
        if (dq2 != null) {
            this.HiB.Sj(dq2.EjP());
        }
        com.bytedance.sdk.openadsdk.common.EjP ejPSj = Mts.Sj(this.Ym, this.dNu, this.FPG.Fm, this.f20382aa);
        this.Chv = ejPSj;
        if (ejPSj != null) {
            if (dNu()) {
                str = "landingpage_endcard";
            }
            ejPSj.Sj(str);
        }
        if (dNu()) {
            Mts.Sj(this.Ym, this.dNu);
        }
        com.bytedance.sdk.openadsdk.core.widget.Sj.HiB hiB = new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj(), this.Sj, this.Ym.aZ(), this.Chv, this.HiB, this.Ym.Ei() || uP.Jcg(this.Ym)) {
            @Override
            public void onPageFinished(WebView webView, String str2) {
                super.onPageFinished(webView, str2);
                TzV.this.Bml = false;
                TzV.this.f20384dx = true;
                if (TzV.this.FPG.JcM.wE()) {
                    View viewTEQ = TzV.this.FPG.Wjd.TEQ();
                    if (viewTEQ instanceof com.bytedance.sdk.openadsdk.core.HiB.EjP) {
                        ((com.bytedance.sdk.openadsdk.core.HiB.EjP) viewTEQ).setImageResource(ib.EjP(TzV.this.FPG.Ei, "tt_skip_btn"));
                    }
                }
                DeviceUtils.AudioInfoReceiver.Sj(TzV.this);
                TzV.this.f20387kb = DeviceUtils.Jcg();
                com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB2 = TzV.this.Dq;
                if (hiB2 != null) {
                    hiB2.vS();
                }
                TzV.this.FPG.uP.sP(str2);
                EjP ejP2 = ejP;
                if (ejP2 != null) {
                    ejP2.Sj(webView, str2);
                }
            }

            @Override
            public void onPageStarted(WebView webView, String str2, Bitmap bitmap) {
                super.onPageStarted(webView, str2, bitmap);
                com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB2 = TzV.this.Dq;
                if (hiB2 != null) {
                    hiB2.HiB();
                }
                EjP ejP2 = ejP;
                if (ejP2 != null) {
                    ejP2.Sj(webView, str2, bitmap);
                }
            }

            @Override
            public void onReceivedError(WebView webView, int i11, String str2, String str3) {
                super.onReceivedError(webView, i11, str2, str3);
            }

            @Override
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                TzV.this.FPG.uP.Sj(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                if (webResourceRequest.getUrl() != null) {
                    new StringBuilder("onReceivedHttpError:url =").append(webResourceRequest.getUrl().toString());
                }
                if (webResourceRequest.isForMainFrame()) {
                    TzV.this.sU.set(false);
                    TzV.this.Bml = false;
                    TzV.this.vS = webResourceResponse.getStatusCode();
                    TzV.this.Jcg = "onReceivedHttpError";
                }
                if (TzV.this.Dq != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", webResourceResponse.getStatusCode());
                        jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceResponse.getReasonPhrase());
                        TzV.this.Dq.Sj(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }

            @Override
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                if (uP.Jcg(TzV.this.Ym)) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    WebResourceResponse webResourceResponseSj = com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(TzV.this.Ym.UHs().f(), uP.Fmk(TzV.this.Ym), str2);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (TzV.this.Dq != null) {
                        com.bytedance.sdk.component.adexpress.EjP.uA.Sj Sj2 = com.bytedance.sdk.component.adexpress.EjP.uA.Sj(str2);
                        int i11 = webResourceResponseSj != null ? 1 : 2;
                        if (Sj2 == com.bytedance.sdk.component.adexpress.EjP.uA.Sj.HTML) {
                            TzV.this.Dq.Sj(str2, jCurrentTimeMillis, jCurrentTimeMillis2, i11);
                        } else if (Sj2 == com.bytedance.sdk.component.adexpress.EjP.uA.Sj.JS) {
                            TzV.this.Dq.sP(str2, jCurrentTimeMillis, jCurrentTimeMillis2, i11);
                        }
                    }
                    return webResourceResponseSj != null ? webResourceResponseSj : super.shouldInterceptRequest(webView, str2);
                }
                try {
                    if (TextUtils.isEmpty(TzV.this.dwU)) {
                        return super.shouldInterceptRequest(webView, str2);
                    }
                    TzV.sef(TzV.this);
                    WebResourceResponseModel webResourceResponseModelSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(TzV.this.sdp, TzV.this.dwU, str2);
                    if (webResourceResponseModelSj != null && webResourceResponseModelSj.getWebResourceResponse() != null) {
                        TzV.uvD(TzV.this);
                        return webResourceResponseModelSj.getWebResourceResponse();
                    }
                    if (webResourceResponseModelSj != null && webResourceResponseModelSj.getMsg() == 2) {
                        TzV.dNu(TzV.this);
                    }
                    return super.shouldInterceptRequest(webView, str2);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFWVM", "shouldInterceptRequest url error", th2);
                    return super.shouldInterceptRequest(webView, str2);
                }
            }

            @Override
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (webResourceError != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                    StringBuilder sb2 = new StringBuilder("onReceivedError WebResourceError : description=");
                    sb2.append((Object) webResourceError.getDescription());
                    sb2.append("  url =");
                    sb2.append(webResourceRequest.getUrl().toString());
                }
                if (webResourceRequest == null || webResourceRequest.getUrl() == null || !TzV.this.Sj(webResourceRequest.getUrl().toString())) {
                    if (webResourceError != null && webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                        TzV.this.FPG.uP.Sj(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), String.valueOf(webResourceRequest.getUrl()));
                    }
                    if (webResourceRequest == null || webResourceRequest.isForMainFrame()) {
                        TzV.this.sU.set(false);
                        TzV.this.Bml = false;
                    }
                    if (TzV.this.Dq != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            if (webResourceError != null) {
                                jSONObject.put("code", webResourceError.getErrorCode());
                                jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceError.getDescription());
                            }
                            TzV.this.Dq.Sj(jSONObject);
                        } catch (JSONException unused) {
                        }
                    }
                    if (webResourceError != null) {
                        TzV.this.vS = webResourceError.getErrorCode();
                        TzV.this.Jcg = String.valueOf(webResourceError.getDescription());
                    }
                }
            }

            @Override
            @TargetApi(21)
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFWVM", "shouldInterceptRequest error1", th2);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }
        };
        this.xD = hiB;
        this.dNu.setWebViewClient(hiB);
        this.xD.Sj(this.Ym);
        this.xD.Sj(this.sef ? "rewarded_video" : "fullscreen_interstitial_ad");
        if (this.Ym.Ei() && (vSVar = this.dNu) != null && vSVar.getWebView() != null) {
            this.dNu.getWebView().setOnTouchListener(new View.OnTouchListener() {
                private final int sP = com.bytedance.sdk.openadsdk.core.dNu.sP();

                @Override
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    int i11;
                    com.bytedance.sdk.openadsdk.EjP.Ym ym2 = TzV.this.HiB;
                    if (ym2 != null) {
                        ym2.Sj(motionEvent);
                    }
                    if (TzV.this.Chv != null) {
                        TzV.this.Chv.Sj(motionEvent);
                    }
                    try {
                        int actionMasked = motionEvent.getActionMasked();
                        if (actionMasked != 0) {
                            int i12 = 3;
                            if (actionMasked == 1) {
                                i11 = i12;
                            } else if (actionMasked != 2) {
                                i12 = actionMasked != 3 ? -1 : 4;
                                i11 = i12;
                            } else {
                                float rawX = motionEvent.getRawX();
                                float rawY = motionEvent.getRawY();
                                if (Math.abs(rawX - TzV.this.wE) >= this.sP || Math.abs(rawY - TzV.this.ley) >= this.sP) {
                                    TzV.this.LD = false;
                                }
                                TzV.this.fF += Math.abs(motionEvent.getX() - TzV.this.wE);
                                TzV.this.JcM += Math.abs(motionEvent.getY() - TzV.this.ley);
                                int i13 = (System.currentTimeMillis() - TzV.this.LqL <= 200 || (TzV.this.fF <= 8.0f && TzV.this.JcM <= 8.0f)) ? 2 : 1;
                                if (TzV.this.Mts) {
                                    if (rawY - TzV.this.ley > 8.0f) {
                                        TzV.this.WMZ.Sj();
                                    }
                                    if (rawY - TzV.this.ley < -8.0f) {
                                        TzV.this.WMZ.sP();
                                    }
                                }
                                i11 = i13;
                            }
                        } else {
                            TzV.this.LD = true;
                            TzV.this.Yf = new SparseArray();
                            TzV.this.wE = motionEvent.getRawX();
                            TzV.this.ley = motionEvent.getRawY();
                            TzV.this.LqL = System.currentTimeMillis();
                            try {
                                long landingPageClickBegin = TzV.this.dNu.getLandingPageClickBegin();
                                if (landingPageClickBegin > 0 && landingPageClickBegin < TzV.this.LqL) {
                                    TzV.this.LqL = landingPageClickBegin;
                                    TzV.this.dNu.setLandingPageClickBegin(-1L);
                                }
                            } catch (Exception unused) {
                            }
                            TzV.this.fF = -1.0f;
                            TzV.this.JcM = -1.0f;
                            i11 = 0;
                        }
                        TzV.this.Yf.put(motionEvent.getActionMasked(), new com.bytedance.sdk.openadsdk.core.sP.TKC.Sj(i11, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
                        if (motionEvent.getAction() != 1 || view.getVisibility() != 0 || Float.valueOf(view.getAlpha()).intValue() != 1) {
                            return false;
                        }
                        if ((TzV.this.RiZ && !com.bytedance.sdk.openadsdk.core.model.TzV.Dq(TzV.this.Ym)) || !TzV.this.LD) {
                            return false;
                        }
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("down_x", TzV.this.wE);
                        jSONObject.put("down_y", TzV.this.ley);
                        jSONObject.put("down_time", TzV.this.LqL);
                        jSONObject.put("up_x", motionEvent.getRawX());
                        jSONObject.put("up_y", motionEvent.getRawY());
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        try {
                            long landingPageClickEnd = TzV.this.dNu.getLandingPageClickEnd();
                            if (landingPageClickEnd > 0 && landingPageClickEnd < jCurrentTimeMillis) {
                                try {
                                    TzV.this.dNu.setLandingPageClickEnd(-1L);
                                } catch (Exception unused2) {
                                }
                                jCurrentTimeMillis = landingPageClickEnd;
                            }
                        } catch (Exception unused3) {
                        }
                        jSONObject.put("up_time", jCurrentTimeMillis);
                        int[] iArr = new int[2];
                        if (TzV.this.Mts) {
                            TzV tzV = TzV.this;
                            tzV.uP = tzV.FPG.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.f20522xu);
                        } else {
                            TzV tzV2 = TzV.this;
                            tzV2.uP = tzV2.FPG.xD.findViewById(520093713);
                        }
                        if (TzV.this.uP != null) {
                            TzV.this.uP.getLocationOnScreen(iArr);
                            jSONObject.put("button_x", iArr[0]);
                            jSONObject.put("button_y", iArr[1]);
                            jSONObject.put("button_width", TzV.this.uP.getWidth());
                            jSONObject.put("button_height", TzV.this.uP.getHeight());
                        }
                        if (TzV.this.kF != null) {
                            int[] iArr2 = new int[2];
                            TzV.this.kF.getLocationOnScreen(iArr2);
                            jSONObject.put("ad_x", iArr2[0]);
                            jSONObject.put("ad_y", iArr2[1]);
                            jSONObject.put("width", TzV.this.kF.getWidth());
                            jSONObject.put("height", TzV.this.kF.getHeight());
                        }
                        jSONObject.put("toolType", motionEvent.getToolType(0));
                        jSONObject.put("deviceId", motionEvent.getDeviceId());
                        jSONObject.put(EventConstants.KEY_SOURCE, motionEvent.getSource());
                        jSONObject.put("ft", com.bytedance.sdk.openadsdk.core.model.TEQ.Sj(TzV.this.Yf, com.bytedance.sdk.openadsdk.core.uA.sP().Sj() ? 1 : 2));
                        jSONObject.put("user_behavior_type", TzV.this.LD ? 1 : 2);
                        jSONObject.put("click_scence", 2);
                        if (TzV.this.xD != null) {
                            TzV.this.xD.Sj(jSONObject);
                        }
                        if (TzV.this.RiZ || com.bytedance.sdk.openadsdk.core.model.TzV.Jcg(TzV.this.Ym)) {
                            return false;
                        }
                        if (TzV.this.sef) {
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(TzV.this.Ym, "rewarded_video", "click", jSONObject);
                        } else {
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(TzV.this.Ym, "fullscreen_interstitial_ad", "click", jSONObject);
                        }
                        TzV.this.RiZ = true;
                        return false;
                    } catch (Throwable th2) {
                        Log.e("TTAD.RFWVM", "TouchRecordTool onTouch error", th2);
                        return false;
                    }
                }
            });
        }
        com.bytedance.sdk.component.uA.vS vSVar3 = this.dNu;
        if (vSVar3 != null) {
            vSVar3.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.Sj, this.HiB, this.Chv) {
                @Override
                public void onProgressChanged(WebView webView, int i11) {
                    super.onProgressChanged(webView, i11);
                    EjP ejP2 = ejP;
                    if (ejP2 != null) {
                        ejP2.Sj(webView, i11);
                    }
                }
            });
        }
        Sj(this.dNu);
        if (i10 >= 24) {
            this.dNu.setLayerType(1, null);
        }
        this.dNu.setBackgroundColor(-1);
        this.dNu.setDisplayZoomControls(false);
    }

    public boolean Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return this.Ym.Ei() && str.endsWith(".mp4");
    }

    public void Sj(DownloadListener downloadListener) {
        com.bytedance.sdk.component.uA.vS vSVar = this.dNu;
        if (vSVar == null || downloadListener == null) {
            return;
        }
        vSVar.setDownloadListener(downloadListener);
    }

    public void Sj(com.bytedance.sdk.component.uA.vS vSVar) {
        if (vSVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.Sj.TKC.Sj(this.FPG.Fm).Sj(false).sP(false).Sj(vSVar.getWebView());
        vSVar.setUserAgentString(com.bytedance.sdk.openadsdk.utils.TzV.Sj(vSVar.getWebView(), BuildConfig.VERSION_CODE));
        vSVar.setMixedContentMode(0);
    }

    public void Sj(boolean z10, boolean z11) {
        Sj(this.Sj, z10, z11);
    }

    public void Sj(Yf yf2, boolean z10, boolean z11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z10);
            jSONObject.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD_SHOW, z11);
            com.bytedance.sdk.openadsdk.activity.vS vSVar = this.FPG.HS;
            if (vSVar != null) {
                jSONObject.put("multi_ads_show", vSVar.uP().Dq());
            }
            yf2.Sj("endcard_control_event", jSONObject);
            if (z11) {
                if (this.f20384dx) {
                    return;
                }
                this.EZ = true;
                return;
            }
            this.EZ = false;
        } catch (Exception unused) {
        }
    }

    public void Sj(boolean z10, int i10, String str) {
        com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB = this.Dq;
        if (hiB == null) {
            return;
        }
        if (z10) {
            hiB.sP();
        } else {
            hiB.Sj(i10, str);
        }
    }
}

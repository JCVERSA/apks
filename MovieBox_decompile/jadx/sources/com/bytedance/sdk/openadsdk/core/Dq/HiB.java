package com.bytedance.sdk.openadsdk.core.Dq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.fF;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

public class HiB extends com.bytedance.sdk.component.uA.vS implements com.bytedance.sdk.openadsdk.core.Dq.TKC.InterfaceC0232TKC {
    private zR Dq;
    protected boolean EjP;
    private List<String> Fmk;
    protected boolean HiB;
    AtomicBoolean Jcg;
    private com.bytedance.sdk.openadsdk.core.model.sU TEQ;
    private String Ym;
    private int Zq;

    private int f20397aa;
    private sP sef;
    private TKC uA;
    private long uvD;
    AtomicBoolean vS;

    static class Sj extends com.bytedance.sdk.component.uA.vS.Sj {
        public static final Set<String> Sj = new HashSet<String>() {
            {
                add(".jpeg");
                add(".png");
                add(".bmp");
                add(".gif");
                add(".jpg");
                add(".webp");
            }
        };
        com.bytedance.sdk.openadsdk.core.Dq.TKC.InterfaceC0232TKC sP;

        public Sj(com.bytedance.sdk.openadsdk.core.Dq.TKC.InterfaceC0232TKC interfaceC0232TKC) {
            this.sP = interfaceC0232TKC;
        }

        private void Sj(String str) {
            int iLastIndexOf;
            com.bytedance.sdk.openadsdk.core.Dq.TKC.InterfaceC0232TKC interfaceC0232TKC;
            if (!TextUtils.isEmpty(str) && (iLastIndexOf = str.lastIndexOf(".")) > 0) {
                if (!Sj.contains(str.substring(iLastIndexOf).toLowerCase()) || (interfaceC0232TKC = this.sP) == null) {
                    return;
                }
                interfaceC0232TKC.sP(str);
            }
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            com.bytedance.sdk.openadsdk.core.Dq.TKC.InterfaceC0232TKC interfaceC0232TKC = this.sP;
            if (interfaceC0232TKC != null) {
                interfaceC0232TKC.Sj();
            }
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceRequest == null || webResourceResponse == null || webResourceRequest.getUrl() == null) {
                return;
            }
            if (webResourceRequest.isForMainFrame()) {
                Sj(webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode(), "");
            }
            Sj(webResourceRequest.getUrl().toString());
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.sP.Sj(str);
            return true;
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return;
            }
            Sj(webResourceRequest.getUrl().toString());
        }

        private void Sj(String str, int i10, String str2) {
            com.bytedance.sdk.openadsdk.core.Dq.TKC.InterfaceC0232TKC interfaceC0232TKC = this.sP;
            if (interfaceC0232TKC != null) {
                interfaceC0232TKC.Sj(106, i10);
            }
        }
    }

    public interface sP {
        View Sj();

        void Sj(int i10, int i11);

        void Sj(View view, int i10);

        void e_();

        View sP();
    }

    public HiB(Context context) {
        super(context);
        this.EjP = false;
        this.HiB = false;
        this.vS = new AtomicBoolean(false);
        this.Jcg = new AtomicBoolean(false);
        this.f20397aa = 0;
    }

    private void dx() {
        if (this.Fmk == null) {
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.TEQ, this.Ym, "dsp_html_success_url", (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new com.bytedance.sdk.component.Dq.Dq("dsp_html_error_url") {
                @Override
                public void run() {
                    try {
                        if (HiB.this.Fmk != null && HiB.this.Jcg.compareAndSet(false, true)) {
                            JSONObject jSONObject = new JSONObject();
                            JSONArray jSONArray = new JSONArray();
                            Iterator it = HiB.this.Fmk.iterator();
                            while (it.hasNext()) {
                                jSONArray.put((String) it.next());
                            }
                            jSONObject.put("url", jSONArray);
                            com.bytedance.sdk.openadsdk.EjP.TKC.sP(HiB.this.TEQ, HiB.this.Ym, "dsp_html_error_url", jSONObject);
                            HiB.this.Fmk = null;
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    public void RiZ() {
        sP sPVar = this.sef;
        if (sPVar != null) {
            sPVar.e_();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.uvD);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.TEQ, this.Ym, "render_html_success", jSONObject);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.EjP) {
            this.uA.Sj(getWebView());
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        this.uA.Sj();
        super.onDetachedFromWindow();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rate", this.Zq / 100.0f);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.TEQ, this.Ym, "load_rate", jSONObject);
    }

    @Override
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        boolean z10 = i10 == 0;
        this.HiB = z10;
        this.uA.Sj(z10);
    }

    public void sU() {
        this.vS.set(false);
        String strTX = this.TEQ.TX();
        if (TextUtils.isEmpty(strTX)) {
            return;
        }
        String strSj = com.bytedance.sdk.openadsdk.core.Ym.HiB.Sj(strTX);
        String str = TextUtils.isEmpty(strSj) ? strTX : strSj;
        this.f20397aa = 0;
        Sj(null, str, "text/html", "UTF-8", null);
        this.uvD = SystemClock.elapsedRealtime();
    }

    @Override
    public void uvD() {
        this.uA.sP();
        super.uvD();
    }

    @Override
    public void sP(String str) {
        if (this.Fmk == null) {
            this.Fmk = new ArrayList();
        }
        this.Fmk.add(str);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, sP sPVar, String str) {
        this.sef = sPVar;
        this.TEQ = sUVar;
        this.Ym = str;
        this.uA = new TKC();
        this.Dq = new zR(getContext());
        setWebViewClient(new Sj(this));
        setWebChromeClient(new WebChromeClient() {
            @Override
            public void onProgressChanged(WebView webView, int i10) {
                HiB.this.Zq = i10;
                super.onProgressChanged(webView, i10);
                if (i10 >= 100) {
                    HiB.this.Sj();
                }
            }
        });
        com.bytedance.sdk.component.utils.uA.sP().post(new Runnable() {
            @Override
            @SuppressLint({"ClickableViewAccessibility"})
            public void run() {
                WebView webView = HiB.this.getWebView();
                if (webView != null) {
                    webView.setOnTouchListener(new View.OnTouchListener() {
                        @Override
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            HiB.this.Dq.onTouchEvent(motionEvent);
                            return false;
                        }
                    });
                }
            }
        });
    }

    public static class TKC {
        protected int Sj = 0;
        private com.bytedance.sdk.openadsdk.core.Ym.vS sP = com.bytedance.sdk.openadsdk.core.Ym.vS.Sj();

        TKC() {
        }

        public void Sj(WebView webView) {
            if (webView != null && this.Sj == 0) {
                if (this.sP == null) {
                    this.sP = com.bytedance.sdk.openadsdk.core.Ym.vS.Sj();
                }
                this.sP.Sj(webView);
                this.sP.sP();
                this.Sj = 1;
            }
        }

        public void sP() {
            Sj();
        }

        public void Sj(boolean z10) {
            com.bytedance.sdk.openadsdk.core.Ym.vS vSVar;
            if (this.Sj == 1 && z10 && (vSVar = this.sP) != null) {
                vSVar.TKC();
                this.Sj = 3;
            }
        }

        public void Sj(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
            com.bytedance.sdk.openadsdk.core.Ym.vS vSVar = this.sP;
            if (vSVar != null) {
                vSVar.Sj(view, friendlyObstructionPurpose);
            }
        }

        public void Sj() {
            com.bytedance.sdk.openadsdk.core.Ym.vS vSVar;
            int i10 = this.Sj;
            if (i10 != 0 && i10 != 4 && (vSVar = this.sP) != null) {
                vSVar.EjP();
            }
            this.Sj = 4;
            this.sP = null;
        }
    }

    public void Sj(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
        this.uA.Sj(view, friendlyObstructionPurpose);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:46:0x0108  */
    /* JADX WARN: Code duplicated, block: B:47:0x010b  */
    /* JADX WARN: Code duplicated, block: B:51:0x011a  */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    @Override
    public void Sj(String str) {
        String str2;
        boolean zSj;
        String str3;
        zR zRVar;
        sP sPVar;
        View view;
        int i10;
        if (TextUtils.isEmpty(str) || this.TEQ == null || !this.Dq.sP()) {
            return;
        }
        int iSj = Mts.Sj(this.Ym);
        View view2 = null;
        if (com.bytedance.sdk.component.utils.TzV.Sj(str) || !(this.TEQ.TFd() == null || TextUtils.isEmpty(this.TEQ.TFd().Sj()))) {
            str2 = str;
        } else {
            com.bytedance.sdk.openadsdk.core.model.Ym ym2 = new com.bytedance.sdk.openadsdk.core.model.Ym();
            ym2.Sj(str);
            this.TEQ.Sj(ym2);
            str2 = null;
        }
        this.TEQ.Sj(true);
        com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.TEQ;
        if (sUVar != null && sUVar.TFd() != null && !TextUtils.isEmpty(this.TEQ.TFd().Sj())) {
            zSj = fF.Sj(getContext(), this.TEQ, iSj, this.Ym, true, (Map<String, Object>) null);
            if (!zSj && !TextUtils.isEmpty(this.TEQ.TFd().sP())) {
                String strSP = this.TEQ.TFd().sP();
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(this.TEQ, this.Ym, "open_fallback_url", (Map<String, Object>) null);
                str3 = strSP;
            }
            if (!zSj) {
                if (!TextUtils.isEmpty(str3)) {
                    return;
                } else {
                    fF.Sj(getContext(), this.TEQ, iSj, (PAGNativeAd) null, (PangleAd) null, this.Ym, true, str3);
                }
            }
            if (this.Dq != null) {
                sPVar = this.sef;
                if (sPVar != null) {
                    View viewSj = sPVar.Sj();
                    View viewSP = this.sef.sP();
                    this.sef.Sj(this, 2);
                    view2 = viewSP;
                    view = viewSj;
                } else {
                    view = null;
                }
                com.bytedance.sdk.openadsdk.core.model.TEQ teqSj = this.Dq.Sj(getContext(), view2, view);
                HashMap map = new HashMap();
                map.put("click_scence", 1);
                com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.TEQ;
                String str4 = this.Ym;
                if (this.Dq.sP()) {
                    i10 = 1;
                } else {
                    i10 = 2;
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar2, teqSj, str4, true, (Map<String, Object>) map, i10);
            }
            zRVar = this.Dq;
            if (zRVar != null) {
                zRVar.Sj();
            }
        }
        zSj = false;
        str3 = str2;
        if (!zSj) {
            if (!TextUtils.isEmpty(str3)) {
                return;
            } else {
                fF.Sj(getContext(), this.TEQ, iSj, (PAGNativeAd) null, (PangleAd) null, this.Ym, true, str3);
            }
        }
        if (this.Dq != null) {
            sPVar = this.sef;
            if (sPVar != null) {
                View viewSj2 = sPVar.Sj();
                View viewSP2 = this.sef.sP();
                this.sef.Sj(this, 2);
                view2 = viewSP2;
                view = viewSj2;
            } else {
                view = null;
            }
            com.bytedance.sdk.openadsdk.core.model.TEQ teqSj2 = this.Dq.Sj(getContext(), view2, view);
            HashMap map2 = new HashMap();
            map2.put("click_scence", 1);
            com.bytedance.sdk.openadsdk.core.model.sU sUVar3 = this.TEQ;
            String str5 = this.Ym;
            if (this.Dq.sP()) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", sUVar3, teqSj2, str5, true, (Map<String, Object>) map2, i10);
        }
        zRVar = this.Dq;
        if (zRVar != null) {
            zRVar.Sj();
        }
    }

    @Override
    public void Sj(int i10, int i11) {
        sP sPVar = this.sef;
        if (sPVar != null) {
            sPVar.Sj(i10, i11);
        }
        this.f20397aa = i11;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error_code", i11);
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.uvD);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.TEQ, this.Ym, "render_html_fail", jSONObject);
    }

    @Override
    public void Sj() {
        if (this.vS.compareAndSet(false, true)) {
            this.EjP = true;
            this.uA.Sj(getWebView());
            this.uA.Sj(this.HiB);
            RiZ();
            dx();
        }
    }
}

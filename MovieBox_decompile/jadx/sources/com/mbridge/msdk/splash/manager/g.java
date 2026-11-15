package com.mbridge.msdk.splash.manager;

import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.mbridge.msdk.splash.view.MBSplashWebview;
import java.util.ArrayList;

public class g {

    private boolean f36685a;

    private boolean f36686b;

    static class b {

        private static final g f36693a = new g(null);
    }

    public interface c {
        void a();

        void a(int i10);

        void onError(String str);
    }

    public static class d {

        private String f36694a;

        private String f36695b;

        private CampaignEx f36696c;

        private String f36697d;

        private boolean f36698e;

        private int f36699f;

        public void a(String str) {
            this.f36697d = str;
        }

        public void b(String str) {
            this.f36694a = str;
        }

        public String c() {
            return this.f36697d;
        }

        public String d() {
            return this.f36694a;
        }

        public String e() {
            return this.f36695b;
        }

        public boolean f() {
            return this.f36698e;
        }

        public CampaignEx a() {
            return this.f36696c;
        }

        public int b() {
            return this.f36699f;
        }

        public void c(String str) {
            this.f36695b = str;
        }

        public void a(CampaignEx campaignEx) {
            this.f36696c = campaignEx;
        }

        public void a(boolean z10) {
            this.f36698e = z10;
        }

        public void a(int i10) {
            this.f36699f = i10;
        }
    }

    g(a aVar) {
        this();
    }

    private g() {
        this.f36685a = false;
        this.f36686b = false;
    }

    public static g a() {
        return b.f36693a;
    }

    public void b() {
        this.f36685a = false;
        this.f36686b = false;
    }

    public void a(MBSplashView mBSplashView, d dVar, c cVar) {
        String requestId;
        if (mBSplashView == null || dVar == null) {
            return;
        }
        String strE = dVar.e();
        String strD = dVar.d();
        CampaignEx campaignExA = dVar.a();
        String strC = dVar.c();
        boolean zF = dVar.f();
        int iB = dVar.b();
        MBSplashWebview splashWebview = mBSplashView.getSplashWebview();
        if (splashWebview == null) {
            return;
        }
        com.mbridge.msdk.splash.signal.b bVar = new com.mbridge.msdk.splash.signal.b(mBSplashView.getContext(), strD, strE);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignExA);
        bVar.a(arrayList);
        bVar.a(zF ? 1 : 0);
        bVar.b(iB);
        mBSplashView.setSplashSignalCommunicationImpl(bVar);
        if (TextUtils.isEmpty(campaignExA.getRequestId())) {
            requestId = campaignExA.getRequestIdNotice();
        } else {
            requestId = campaignExA.getRequestId();
        }
        String requestId2 = splashWebview.getRequestId();
        o0.b("WebViewRenderManager", "CampaignEx RequestId = " + requestId + " WebView RequestId = " + requestId2);
        if (!TextUtils.isEmpty(requestId2) && requestId2.equals(requestId) && (this.f36685a || this.f36686b)) {
            mBSplashView.setH5Ready(true);
            if (cVar != null) {
                cVar.a(1);
                return;
            }
            return;
        }
        b();
        splashWebview.setRequestId(requestId);
        com.mbridge.msdk.splash.report.a.b(strE, campaignExA);
        long jCurrentTimeMillis = System.currentTimeMillis();
        splashWebview.setWebViewListener(new a(cVar, mBSplashView, campaignExA, strE, jCurrentTimeMillis));
        if (!splashWebview.isDestoryed()) {
            splashWebview.loadUrl(strC);
        } else {
            mBSplashView.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignExA, strE, "webview had destory", jCurrentTimeMillis, 3);
        }
    }

    class a extends com.mbridge.msdk.mbsignalcommon.listener.b {

        final c f36687a;

        final MBSplashView f36688b;

        final CampaignEx f36689c;

        final String f36690d;

        final long f36691e;

        a(c cVar, MBSplashView mBSplashView, CampaignEx campaignEx, String str, long j10) {
            this.f36687a = cVar;
            this.f36688b = mBSplashView;
            this.f36689c = campaignEx;
            this.f36690d = str;
            this.f36691e = j10;
        }

        @Override
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
            c cVar = this.f36687a;
            if (cVar != null) {
                cVar.a(i10);
            }
            if (i10 == 1) {
                g.this.f36685a = true;
                this.f36688b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36689c, this.f36690d, "", this.f36691e, 1);
                com.mbridge.msdk.splash.report.a.a(1, "", this.f36690d, this.f36689c);
                return;
            }
            g.this.f36685a = false;
            this.f36688b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "readyState 2", this.f36690d, this.f36689c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36689c, this.f36690d, "readyState 2", this.f36691e, 3);
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            c cVar = this.f36687a;
            if (cVar != null) {
                cVar.onError(str);
            }
            g.this.b();
            this.f36688b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error code:" + i10 + str, this.f36690d, this.f36689c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36689c, this.f36690d, "error code:" + i10 + str, this.f36691e, 3);
        }

        @Override
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            c cVar = this.f36687a;
            if (cVar != null) {
                cVar.onError(sslError.toString());
            }
            g.this.b();
            this.f36688b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error url:" + sslError.getUrl(), this.f36690d, this.f36689c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36689c, this.f36690d, "error url:" + sslError.getUrl(), this.f36691e, 3);
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            c cVar = this.f36687a;
            if (cVar != null) {
                cVar.a();
            }
            g.this.f36686b = true;
            if (!this.f36689c.isHasMBTplMark()) {
                this.f36688b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(1, "", this.f36690d, this.f36689c);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36689c, this.f36690d, "", this.f36691e, 1);
            }
            com.mbridge.msdk.splash.signal.c.a(webView);
        }
    }
}

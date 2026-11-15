package com.cloud.hisavana.sdk.common.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.q0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.io.File;
import java.lang.ref.WeakReference;

public class OfflineLandingActivity extends com.cloud.hisavana.sdk.common.activity.b {

    c f21199x;

    private static class b implements Runnable {

        private final WeakReference<Handler> f21201a;

        private final String f21202b;

        b(Handler handler, String str, a aVar) {
            this(handler, str);
        }

        @Override
        public void run() throws Throwable {
            try {
                String strD = com.cloud.hisavana.sdk.common.util.m.d(J0.i(this.f21202b, 1));
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                Bundle bundle = new Bundle();
                bundle.putString(String.valueOf(1), strD);
                bundle.putString("load_offline_H5_res", this.f21202b);
                messageObtain.setData(bundle);
                Handler handler = this.f21201a.get();
                if (handler == null) {
                    return;
                }
                handler.sendMessage(messageObtain);
            } catch (Exception e10) {
                b4.b().e(Log.getStackTraceString(e10));
            }
        }

        private b(Handler handler, String str) {
            this.f21201a = new WeakReference<>(handler);
            this.f21202b = str;
        }
    }

    private static class c extends Handler {

        private final WeakReference f21203a;

        c(OfflineLandingActivity offlineLandingActivity, Looper looper) {
            super(looper);
            this.f21203a = new WeakReference(offlineLandingActivity);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            OfflineLandingActivity offlineLandingActivity = (OfflineLandingActivity) this.f21203a.get();
            if (offlineLandingActivity == null) {
                return;
            }
            if (message.what == 1) {
                offlineLandingActivity.x(message);
            } else {
                b4.b().e("OfflineLandingActivity", "handleMessage,wrong msg.what");
            }
        }
    }

    private void A(String str, String str2) {
        WebView webView;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()));
        String str3 = File.separator;
        sb2.append(str3);
        sb2.append("offline_zip");
        sb2.append(str3);
        sb2.append(com.cloud.hisavana.sdk.common.util.a0.c(str));
        sb2.append(str3);
        sb2.append(com.vungle.ads.internal.b.AD_INDEX_FILE_NAME);
        String string = sb2.toString();
        if (new File(string).exists() && (webView = this.f21296g) != null) {
            webView.loadUrl(string);
        } else {
            b4.b().e("OfflineLandingActivity", "loadOfflineZip file.exists() is false,or webview is null");
            finish();
        }
    }

    private void B(String str) {
        HSScopeHelper.f22503a.g(new b(this.f21199x, str, null));
    }

    private void C() {
        try {
            AdsDTO adsDTO = this.f21297h;
            String clickUrl = adsDTO != null ? adsDTO.getClickUrl() : null;
            if (m(clickUrl)) {
                return;
            }
            q(clickUrl);
            z(this.f21298i);
        } catch (Throwable unused) {
        }
    }

    public void x(Message message) {
        Bundle data = message.getData();
        if (data == null || this.f21296g == null) {
            return;
        }
        String string = data.getString(String.valueOf(message.what));
        String string2 = data.getString("load_offline_H5_res");
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            b4.b().e("OfflineLandingActivity", "postLoadOfflineH5,dataString or resString is empty");
            this.f21296g.loadUrl(this.f21297h.getOfflineH5Url());
            return;
        }
        WebView webView = this.f21296g;
        if (webView != null) {
            webView.loadDataWithBaseURL(string2, string, "text/html; charset=UTF-8", "UTF-8", null);
        } else {
            b4.b().e("OfflineLandingActivity", "postLoadOfflineH5,webview is null");
            finish();
        }
    }

    private void z(DownUpPointBean downUpPointBean) {
        AdsDTO adsDTO = this.f21297h;
        if (adsDTO == null) {
            b4.b().e("OfflineLandingActivity", "loadOfflineWeb,adsDto is null");
            finish();
            return;
        }
        ViewJson viewJsonData = adsDTO.getViewJsonData();
        if (viewJsonData == null || viewJsonData.getOffline() == null) {
            b4.b().e("OfflineLandingActivity", "loadOfflineWeb,viewJsonData or viewJsonData.getOffline() is null");
            finish();
        } else if (!TextUtils.isEmpty(viewJsonData.getOffline().getRes())) {
            B(viewJsonData.getOffline().getRes());
            AthenaTracker.G(com.cloud.hisavana.sdk.common.activity.b.i(downUpPointBean, this.f21297h), this.f21297h, Boolean.FALSE);
        } else if (TextUtils.isEmpty(viewJsonData.getOffline().getZipRes())) {
            b4.b().e("OfflineLandingActivity", "loadOfflineWeb,can not open landingPage");
            finish();
        } else {
            A(viewJsonData.getOffline().getZipRes(), this.f21297h.getAdCreativeId());
            AthenaTracker.G(com.cloud.hisavana.sdk.common.activity.b.i(downUpPointBean, this.f21297h), this.f21297h, Boolean.FALSE);
        }
    }

    @Override
    protected WebViewClient h() {
        return new a();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl("");
        }
        this.f21199x = new c(this, getMainLooper());
        C();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        c cVar = this.f21199x;
        if (cVar != null) {
            cVar.removeCallbacksAndMessages(null);
        }
    }

    class a extends g7.j {
        a() {
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            AdsDTO adsDTO;
            b4.b().d("OfflineLandingActivity", "shouldInterceptRequest URL== " + str);
            WebResourceResponse webResourceResponseA = q0.a(str);
            if (webResourceResponseA == null || (adsDTO = OfflineLandingActivity.this.f21297h) == null || !adsDTO.isOfflineAd()) {
                return super.shouldInterceptRequest(webView, str);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            OfflineLandingActivity offlineLandingActivity = OfflineLandingActivity.this;
            AthenaTracker.w(offlineLandingActivity.f21297h, jCurrentTimeMillis - offlineLandingActivity.f21301l);
            return webResourceResponseA;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            b4.b().d("OfflineLandingActivity", "shouldOverrideUrlLoading url=" + str);
            return OfflineLandingActivity.this.g(str, false);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            b4.b().d("OfflineLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
            return OfflineLandingActivity.this.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
        }
    }
}

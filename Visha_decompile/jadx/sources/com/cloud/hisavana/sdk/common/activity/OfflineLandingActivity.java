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
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.hisavana.sdk.l;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.gw5;
import defpackage.ikd;
import defpackage.jm4;
import defpackage.oic;
import defpackage.ul4;
import defpackage.yu3;
import java.io.File;
import java.lang.ref.WeakReference;

public class OfflineLandingActivity extends com.cloud.hisavana.sdk.common.activity.b {
    public c y;

    public static class b implements Runnable {
        private final WeakReference<Handler> a;
        private final String b;

        public b(Handler handler, String str, a aVar) {
            this(handler, str);
        }

        @Override
        public void run() throws Throwable {
            try {
                String strD = yu3.d(U0.j(this.b, 1));
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                Bundle bundle = new Bundle();
                bundle.putString(String.valueOf(1), strD);
                bundle.putString("load_offline_H5_res", this.b);
                messageObtain.setData(bundle);
                Handler handler = this.a.get();
                if (handler == null) {
                    return;
                }
                handler.sendMessage(messageObtain);
            } catch (Exception e) {
                ikd.b().e(Log.getStackTraceString(e));
            }
        }

        private b(Handler handler, String str) {
            this.a = new WeakReference<>(handler);
            this.b = str;
        }
    }

    public static class c extends Handler {
        public final WeakReference a;

        public c(OfflineLandingActivity offlineLandingActivity, Looper looper) {
            super(looper);
            this.a = new WeakReference(offlineLandingActivity);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            OfflineLandingActivity offlineLandingActivity = (OfflineLandingActivity) this.a.get();
            if (offlineLandingActivity == null) {
                return;
            }
            if (message.what == 1) {
                offlineLandingActivity.x(message);
            } else {
                ikd.b().e("OfflineLandingActivity", "handleMessage,wrong msg.what");
            }
        }
    }

    private void B(String str) {
        HSScopeHelper.a.l(new b(this.y, str, null));
    }

    private void C() {
        try {
            AdsDTO adsDTO = this.i;
            String clickUrl = adsDTO != null ? adsDTO.getClickUrl() : null;
            if (m(clickUrl)) {
                return;
            }
            q(clickUrl);
            z(this.j);
        } catch (Throwable unused) {
        }
    }

    public final void A(String str, String str2) {
        WebView webView;
        StringBuilder sb = new StringBuilder();
        sb.append(yu3.b(ul4.a()));
        String str3 = File.separator;
        sb.append(str3);
        sb.append(l.b());
        sb.append(str3);
        sb.append(gw5.c(str));
        sb.append(str3);
        sb.append("index.html");
        String string = sb.toString();
        if (new File(string).exists() && (webView = this.h) != null) {
            webView.loadUrl(string);
        } else {
            ikd.b().e("OfflineLandingActivity", "loadOfflineZip file.exists() is false,or webview is null");
            finish();
        }
    }

    @Override
    public WebViewClient h() {
        return new a();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl("");
        }
        this.y = new c(this, getMainLooper());
        C();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        c cVar = this.y;
        if (cVar != null) {
            cVar.removeCallbacksAndMessages(null);
        }
    }

    public final void x(Message message) {
        Bundle data = message.getData();
        if (data == null || this.h == null) {
            return;
        }
        String string = data.getString(String.valueOf(message.what));
        String string2 = data.getString("load_offline_H5_res");
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            ikd.b().e("OfflineLandingActivity", "postLoadOfflineH5,dataString or resString is empty");
            this.h.loadUrl(this.i.getOfflineH5Url());
            return;
        }
        WebView webView = this.h;
        if (webView != null) {
            webView.loadDataWithBaseURL(string2, string, "text/html; charset=UTF-8", "UTF-8", null);
        } else {
            ikd.b().e("OfflineLandingActivity", "postLoadOfflineH5,webview is null");
            finish();
        }
    }

    public final void z(DownUpPointBean downUpPointBean) {
        AdsDTO adsDTO = this.i;
        if (adsDTO == null) {
            ikd.b().e("OfflineLandingActivity", "loadOfflineWeb,adsDto is null");
            finish();
            return;
        }
        ViewJson viewJsonData = adsDTO.getViewJsonData();
        if (viewJsonData == null || viewJsonData.getOffline() == null) {
            ikd.b().e("OfflineLandingActivity", "loadOfflineWeb,viewJsonData or viewJsonData.getOffline() is null");
            finish();
        } else if (!TextUtils.isEmpty(viewJsonData.getOffline().getRes())) {
            B(viewJsonData.getOffline().getRes());
            AthenaTracker.J(com.cloud.hisavana.sdk.common.activity.b.i(downUpPointBean, this.i), this.i, Boolean.FALSE);
        } else if (TextUtils.isEmpty(viewJsonData.getOffline().getZipRes())) {
            ikd.b().e("OfflineLandingActivity", "loadOfflineWeb,can not open landingPage");
            finish();
        } else {
            A(viewJsonData.getOffline().getZipRes(), this.i.getAdCreativeId());
            AthenaTracker.J(com.cloud.hisavana.sdk.common.activity.b.i(downUpPointBean, this.i), this.i, Boolean.FALSE);
        }
    }

    public class a extends jm4 {
        public a() {
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            AdsDTO adsDTO;
            ikd.b().d("OfflineLandingActivity", "shouldInterceptRequest URL== " + str);
            WebResourceResponse webResourceResponseA = oic.a(str);
            if (webResourceResponseA == null || (adsDTO = OfflineLandingActivity.this.i) == null || !adsDTO.isOfflineAd()) {
                return super.shouldInterceptRequest(webView, str);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            OfflineLandingActivity offlineLandingActivity = OfflineLandingActivity.this;
            AthenaTracker.y(offlineLandingActivity.i, jCurrentTimeMillis - offlineLandingActivity.m);
            return webResourceResponseA;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            ikd.b().d("OfflineLandingActivity", "shouldOverrideUrlLoading url=" + str);
            return OfflineLandingActivity.this.g(str, false);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            ikd.b().d("OfflineLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
            return OfflineLandingActivity.this.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
        }
    }
}

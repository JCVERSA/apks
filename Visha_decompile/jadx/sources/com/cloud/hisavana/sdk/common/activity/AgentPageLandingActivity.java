package com.cloud.hisavana.sdk.common.activity;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import defpackage.ikd;

public class AgentPageLandingActivity extends b {
    @Override
    public WebViewClient h() {
        return new AgentPageWebViewClient(new a());
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl("");
        }
        y();
    }

    public final void x(String str) {
        if (!str.contains(AgentPageJsBridge.AGENT_PAGE_INFO)) {
            ikd.b().e("AgentPageLandingActivity", "loadAgentPageWeb, url is not legal");
            finish();
            return;
        }
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl(str);
            AthenaTracker.v0(this.s.getWebId(), this.s.getUrl(), this.s.getTargetUrl(), "open");
        }
        this.h.loadUrl(str);
    }

    public final void y() {
        if (this.i == null) {
            ikd.b().e("AgentPageLandingActivity", "loadAgentPageWeb,adsDto is null");
            finish();
            return;
        }
        AgentPageJsBridge agentPageJsBridge = new AgentPageJsBridge();
        agentPageJsBridge.setCurrentAdInfo(new AgentPageCurrentAd("", "", ""));
        agentPageJsBridge.setWebview(this.h);
        this.h.addJavascriptInterface(agentPageJsBridge, AgentPageJsBridge.INTERFACE_NAME);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this.h, true);
        this.h.getSettings().setMediaPlaybackRequiresUserGesture(false);
        String clickUrl = this.i.getClickUrl();
        q(clickUrl);
        x(clickUrl);
    }

    public class a implements AgentPageWebViewClient.OverrideListener {
        public a() {
        }

        @Override
        public boolean OnOverrideUrlLoading(WebView webView, String str) {
            ikd.b().d("AgentPageLandingActivity", "shouldOverrideUrlLoading url=" + str);
            if (TextUtils.isEmpty(str) || !str.contains("googleads")) {
                AgentPageLandingActivity.this.n().setUrl("");
            } else {
                AgentPageLandingActivity.this.n().setUrl(str);
            }
            return AgentPageLandingActivity.this.g(str, false);
        }

        @Override
        public void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            ikd.b().e("AgentPageLandingActivity", "onError for:" + webResourceRequest.getUrl() + ",error code: " + webResourceError.getErrorCode());
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            ikd.b().d("AgentPageLandingActivity", "onPageFinished for:" + str);
        }

        @Override
        public boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            ikd.b().d("AgentPageLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
            Uri url = webResourceRequest.getUrl();
            if (!TextUtils.isEmpty(url.getAuthority()) && url.getAuthority().contains("googleads")) {
                AgentPageLandingActivity.this.n().setUrl(webResourceRequest.getUrl().toString());
            } else {
                AgentPageLandingActivity.this.n().setUrl("");
            }
            return AgentPageLandingActivity.this.g(webResourceRequest.getUrl().toString(), webResourceRequest.hasGesture());
        }
    }
}

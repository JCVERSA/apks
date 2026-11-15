package com.cloud.hisavana.sdk.common.activity;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageWebViewClient;
import com.cloud.hisavana.sdk.internal.agentpage.bean.AgentPageCurrentAd;
import com.vungle.ads.internal.presenter.MRAIDPresenter;

public class AgentPageLandingActivity extends b {
    private void x(String str) {
        if (!str.contains(AgentPageJsBridge.AGENT_PAGE_INFO)) {
            b4.b().e("AgentPageLandingActivity", "loadAgentPageWeb, url is not legal");
            finish();
            return;
        }
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl(str);
            AthenaTracker.p0(this.f21307r.getWebId(), this.f21307r.getUrl(), this.f21307r.getTargetUrl(), MRAIDPresenter.OPEN);
        }
        this.f21296g.loadUrl(str);
    }

    private void y() {
        if (this.f21297h == null) {
            b4.b().e("AgentPageLandingActivity", "loadAgentPageWeb,adsDto is null");
            finish();
            return;
        }
        AgentPageJsBridge agentPageJsBridge = new AgentPageJsBridge();
        agentPageJsBridge.setCurrentAdInfo(new AgentPageCurrentAd("", "", ""));
        agentPageJsBridge.setWebview(this.f21296g);
        this.f21296g.addJavascriptInterface(agentPageJsBridge, AgentPageJsBridge.INTERFACE_NAME);
        CookieManager.getInstance().setAcceptThirdPartyCookies(this.f21296g, true);
        this.f21296g.getSettings().setMediaPlaybackRequiresUserGesture(false);
        String clickUrl = this.f21297h.getClickUrl();
        q(clickUrl);
        x(clickUrl);
    }

    @Override
    protected WebViewClient h() {
        return new AgentPageWebViewClient(new a());
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl("");
        }
        y();
    }

    class a implements AgentPageWebViewClient.OverrideListener {
        a() {
        }

        @Override
        public boolean OnOverrideUrlLoading(WebView webView, String str) {
            b4.b().d("AgentPageLandingActivity", "shouldOverrideUrlLoading url=" + str);
            if (TextUtils.isEmpty(str) || !str.contains("googleads")) {
                AgentPageLandingActivity.this.n().setUrl("");
            } else {
                AgentPageLandingActivity.this.n().setUrl(str);
            }
            return AgentPageLandingActivity.this.g(str, false);
        }

        @Override
        public void onError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            b4.b().e("AgentPageLandingActivity", "onError for:" + webResourceRequest.getUrl() + ",error code: " + webResourceError.getErrorCode());
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            b4.b().d("AgentPageLandingActivity", "onPageFinished for:" + str);
        }

        @Override
        public boolean OnOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest == null || webResourceRequest.getUrl() == null || TextUtils.isEmpty(webResourceRequest.getUrl().toString())) {
                return false;
            }
            b4.b().d("AgentPageLandingActivity", "shouldOverrideUrlLoading url=" + webResourceRequest.getUrl().toString());
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

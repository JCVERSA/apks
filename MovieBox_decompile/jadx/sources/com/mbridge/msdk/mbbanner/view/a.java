package com.mbridge.msdk.mbbanner.view;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
import com.mbridge.msdk.mbsignalcommon.base.b;
import java.util.List;

public class a extends b {

    private final String f35360c = "BannerWebViewClient";

    String f35361d;

    List<CampaignEx> f35362e;

    com.mbridge.msdk.mbbanner.common.listener.a f35363f;

    class C0481a implements ValueCallback<String> {
        C0481a() {
        }

        @Override
        public void onReceiveValue(String str) {
        }
    }

    public a(String str, List<CampaignEx> list, com.mbridge.msdk.mbbanner.common.listener.a aVar) {
        this.f35361d = str;
        this.f35362e = list;
        this.f35363f = aVar;
    }

    private void a(WebView webView, String str) {
        webView.evaluateJavascript(str, new C0481a());
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        CampaignEx campaignEx;
        super.onPageStarted(webView, str, bitmap);
        try {
            a(webView, "javascript:" + com.mbridge.msdk.setting.util.a.a().b());
            List<CampaignEx> list = this.f35362e;
            if (list == null || list.isEmpty() || (campaignEx = this.f35362e.get(0)) == null || !campaignEx.isActiveOm()) {
                return;
            }
            a(webView, "javascript:" + MBridgeConstans.OMID_JS_SERVICE_CONTENT);
        } catch (Throwable th2) {
            o0.b("BannerWebViewClient", "onPageStarted", th2);
        }
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            o0.b("BannerWebViewClient", "Use html to open url.");
            BaseWebView baseWebView = (BaseWebView) webView;
            if (System.currentTimeMillis() - baseWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f33614c && com.mbridge.msdk.click.utils.a.a(this.f35362e.get(0), baseWebView.getUrl(), com.mbridge.msdk.click.utils.a.f33613b)) {
                return false;
            }
            if (this.f35362e.size() > 1) {
                c.m().d().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                str = null;
            }
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f35363f;
            if (aVar != null) {
                aVar.a(false, str);
            }
            return true;
        } catch (Throwable th2) {
            o0.b("BannerWebViewClient", "shouldOverrideUrlLoading", th2);
            return false;
        }
    }
}

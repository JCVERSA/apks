package com.mbridge.msdk.video.module;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.videocommon.download.d;
import com.mbridge.msdk.videocommon.download.f;
import com.mbridge.msdk.videocommon.setting.b;

public class MBridgeAlertWebview extends MBridgeH5EndCardView {
    private String P;

    public MBridgeAlertWebview(Context context) {
        super(context);
    }

    @Override
    protected RelativeLayout.LayoutParams getContentLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        return layoutParams;
    }

    @Override
    protected String getURL() {
        if (TextUtils.isEmpty(this.unitId)) {
            return "";
        }
        String strC = b.b().a(c.m().b(), this.unitId, false).c();
        this.P = strC;
        return !TextUtils.isEmpty(strC) ? d.a().a(this.P) : "";
    }

    @Override
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        String url = getURL();
        if (!this.f38397e || this.f38394b == null || TextUtils.isEmpty(url)) {
            this.notifyListener.a(101, "");
            return;
        }
        com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.f38394b);
        aVar.a(this.f38394b.getAppName());
        this.f38444p.setDownloadListener(aVar);
        this.f38444p.setCampaignId(this.f38394b.getId());
        setCloseVisible(8);
        this.f38444p.setApiManagerJSFactory(bVar);
        this.f38444p.setWebViewListener(new a());
        setHtmlSource(f.a().a(url));
        this.f38448t = false;
        if (TextUtils.isEmpty(this.f38447s)) {
            o0.a(MBridgeBaseView.TAG, "load url:" + url);
            this.f38444p.loadUrl(url);
        } else {
            o0.a(MBridgeBaseView.TAG, "load html...");
            this.f38444p.loadDataWithBaseURL(url, this.f38447s, "text/html", "UTF-8", null);
        }
        this.f38444p.setBackgroundColor(0);
        setBackgroundColor(0);
    }

    @Override
    public void webviewshow() {
        RelativeLayout relativeLayout = this.f38442n;
        if (relativeLayout != null) {
            relativeLayout.setBackgroundColor(0);
        }
        super.webviewshow();
        j.a(this.f38393a, this.f38394b, this.P, this.unitId, 2, 1);
    }

    public MBridgeAlertWebview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    class a extends com.mbridge.msdk.mbsignalcommon.listener.b {
        a() {
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            o0.b("MBridgeAlertWebview", "finish+" + str);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
        }

        @Override
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            o0.b("MBridgeAlertWebview", "onReceivedError");
            if (MBridgeAlertWebview.this.f38449u) {
                return;
            }
            o0.a(MBridgeBaseView.TAG, "onReceivedError,url:" + str2);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview.f38393a, mBridgeAlertWebview.f38394b, mBridgeAlertWebview.P, MBridgeAlertWebview.this.unitId, 2, str, 1);
            MBridgeAlertWebview.this.f38449u = true;
        }

        @Override
        public void a(WebView webView, int i10) {
            String str;
            super.a(webView, i10);
            o0.b("MBridgeAlertWebview", "readyState  :  " + i10);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            if (mBridgeAlertWebview.f38449u) {
                return;
            }
            boolean z10 = i10 == 1;
            mBridgeAlertWebview.f38448t = z10;
            if (z10) {
                str = "readyState state is " + i10;
            } else {
                str = "";
            }
            String str2 = str;
            MBridgeAlertWebview mBridgeAlertWebview2 = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview2.f38393a, mBridgeAlertWebview2.f38394b, mBridgeAlertWebview2.P, MBridgeAlertWebview.this.unitId, i10, str2, 1);
        }
    }
}

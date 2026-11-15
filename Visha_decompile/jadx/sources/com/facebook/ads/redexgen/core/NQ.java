package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AdError;

public class NQ extends WebViewClient {
    public boolean A00 = false;
    public final NB A01;
    public final NP A02;
    public final boolean A03;

    public NQ(NB nb, NP np, boolean z) {
        this.A01 = nb;
        this.A02 = np;
        this.A03 = z;
    }

    private void A00() {
        if (this.A03) {
            this.A02.AEZ(AdError.CACHE_ERROR);
        } else {
            A01();
        }
    }

    private void A01() {
        if (this.A02 != null) {
            this.A02.AEa();
        }
    }

    public void A02() {
        A00();
    }

    public void A03() {
        new Handler().postDelayed(new C1886hV(this), this.A01.A09());
    }

    @Override
    public final void onPageFinished(WebView webView, String str) {
        this.A00 = true;
        A01();
    }

    @Override
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        A03();
    }

    @Override
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        this.A00 = true;
        A02();
    }

    @Override
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC1409Ze.A0D(AbstractC1248Sv.A2g);
        A00();
        return true;
    }
}

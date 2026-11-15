package com.cloud.tmc.kernel.proxy.renderprocess;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;

public interface IRenderProcessListener {
    Boolean isRenderProcessGone();

    void onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail);
}

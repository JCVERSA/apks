package com.cloud.tmc.kernel.render;

import android.graphics.Bitmap;
import android.webkit.WebView;

public interface IPageEventCallback {
    void onProgressChanged(WebView webView, int i10);

    void onReceivedIcon(Bitmap bitmap);

    void onReceivedTitle(String str);

    void onRequestFocus();
}

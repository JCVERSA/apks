package com.just.agentweb;

import android.view.View;

public interface IVideo {
    boolean isVideoState();

    void onHideCustomView();

    void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customViewCallback);
}

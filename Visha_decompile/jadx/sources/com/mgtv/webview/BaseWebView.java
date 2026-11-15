package com.mgtv.webview;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import com.mgtv.webview.jsbridge.BridgeWebView;

public class BaseWebView extends BridgeWebView {
    String a;

    public BaseWebView(@NonNull Context context) throws Exception {
        super(context);
        a(context);
    }

    @TargetApi(11)
    private void a() {
    }

    @Override
    public void destroy() {
        try {
            removeAllViews();
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            super.destroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(@NonNull Context context) {
        a();
        WebSettings settings = getSettings();
        this.a = settings.getUserAgentString();
        a(settings);
        settings.setSaveFormData(true);
        settings.setSavePassword(true);
        settings.setLightTouchEnabled(false);
        settings.setNeedInitialFocus(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        settings.setSupportZoom(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setSupportMultipleWindows(false);
        try {
            settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (NoClassDefFoundError e3) {
            e3.printStackTrace();
        }
        settings.setUserAgentString(this.a);
    }

    public BaseWebView(@NonNull Context context, AttributeSet attributeSet) throws Exception {
        super(context, attributeSet);
        a(context);
    }

    public BaseWebView(@NonNull Context context, AttributeSet attributeSet, int i) throws Exception {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(@NonNull WebSettings webSettings) {
        webSettings.setGeolocationEnabled(true);
        webSettings.setDatabaseEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setAppCacheEnabled(true);
        String path = getContext().getDir("databases", 0).getPath();
        String path2 = getContext().getDir("geolocation", 0).getPath();
        String path3 = getContext().getDir("appcache", 0).getPath();
        webSettings.setGeolocationDatabasePath(path2);
        webSettings.setDatabasePath(path);
        webSettings.setAppCachePath(path3);
    }
}

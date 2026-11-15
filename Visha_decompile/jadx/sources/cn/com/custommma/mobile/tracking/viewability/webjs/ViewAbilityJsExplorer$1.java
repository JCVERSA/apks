package cn.com.custommma.mobile.tracking.viewability.webjs;

import android.webkit.WebSettings;
import android.webkit.WebView;

class ViewAbilityJsExplorer$1 implements Runnable {
    final b this$0;

    public ViewAbilityJsExplorer$1(b bVar) {
    }

    @Override
    public void run() {
        b.b(null, new WebView(b.c(null)));
        WebSettings settings = b.a(null).getSettings();
        try {
            settings.setJavaScriptEnabled(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setDomStorageEnabled(false);
            settings.setCacheMode(2);
            settings.setAllowFileAccess(false);
            settings.setAppCacheEnabled(false);
            settings.setUseWideViewPort(false);
            settings.setAllowContentAccess(false);
            settings.setLoadWithOverviewMode(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        b.a(null).clearHistory();
        b.a(null).clearCache(true);
        b.d(null, settings.getJavaScriptEnabled());
        b.a(null).setWebViewClient(new b.a(null, null));
        b.e(null);
    }
}

package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.b4;
import com.cloud.tmc.kernel.constants.TmcConstants;

public class TadmWebView extends WebView {
    public static final String JS_TEXT = "<script>   window.addEventListener(\n          \"error\",\n          function (e) {\n            var target = e.srcElement;\n            var tagName = target.tagName || \"\";\n            if (tagName && tagName.toUpperCase() === \"IMG\" && target) {\n              const isShow = window.getComputedStyle(target).display != \"none\";\n              const isShow1 = window.getComputedStyle(target).visibility != \"hidden\";\n              const { width, height } = target.getBoundingClientRect();\n              const hasWidth = typeof width == \"number\" && width > 1;\n              const hasHeight = typeof height == \"number\" && height > 1;\n              if (hasWidth && hasHeight && isShow && isShow1) {\n                 window.loadError&&window.loadError.loadMaterialError&&window.loadError.loadMaterialError(target.src);\n              }\n            }\n          },\n          true\n        );\n        </script>";

    class a extends WebChromeClient {
        a() {
        }

        @Override
        public void onProgressChanged(WebView webView, int i10) {
            super.onProgressChanged(webView, i10);
        }
    }

    public TadmWebView(@NonNull Context context) {
        super(context);
        a();
    }

    private void a() {
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setSupportZoom(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setUseWideViewPort(false);
        settings.setLoadWithOverviewMode(true);
        setWebChromeClient(new a());
    }

    @Override
    public void destroy() {
        try {
            getSettings().setJavaScriptEnabled(false);
            setWebChromeClient(null);
            clearHistory();
            clearCache(true);
            loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
            freeMemory();
            super.destroy();
        } catch (Exception e10) {
            b4.b().e("TadmWebView", "destroy " + Log.getStackTraceString(e10));
        }
    }

    @Override
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        scrollTo(0, 0);
    }

    public TadmWebView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public TadmWebView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }
}

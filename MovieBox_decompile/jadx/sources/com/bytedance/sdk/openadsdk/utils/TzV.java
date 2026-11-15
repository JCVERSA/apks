package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;

public class TzV {
    public static void Sj(Uri uri, com.bytedance.sdk.openadsdk.core.Yf yf2) {
        if (yf2 == null || !yf2.Sj(uri)) {
            return;
        }
        try {
            yf2.sP(uri);
        } catch (Exception e10) {
            e10.toString();
        }
    }

    public static String Sj(WebView webView, int i10) {
        if (webView == null) {
            return "";
        }
        String userAgentString = webView.getSettings().getUserAgentString();
        if (TextUtils.isEmpty(userAgentString)) {
            return "";
        }
        return userAgentString + " open_news open_news_u_s/" + i10;
    }
}

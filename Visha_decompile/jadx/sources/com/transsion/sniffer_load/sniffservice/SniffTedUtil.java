package com.transsion.sniffer_load.sniffservice;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.blankj.utilcode.util.LogUtils;
import defpackage.r0a;

public class SniffTedUtil {
    private static final String SCRIPT_FUNCTION_NAME_GETVIDEOS = "getVideos";
    public static final String TAG = "visha_SniffTedUtil";
    private static final String URL_INTERCEPT_TED_PARAMETER_1 = "www.ted.com/_next/data/";
    private static final String URL_INTERCEPT_TED_PARAMETER_2 = ".json?slug=";
    private static final String URL_INTERCEPT_TED_PARAMETER_3 = "www.ted.com/graphql";
    private static final String URL_INTERCEPT_TED_PARAMETER_4 = "operationName=shareLinks";
    private static String lastRequestUrl;

    public static void getVideos(WebView webView, String str) {
        if (r0a.g(str) || str.equalsIgnoreCase(lastRequestUrl)) {
            LogUtils.j(TAG, "url:" + str, "lasRequestUrl:" + lastRequestUrl);
            return;
        }
        lastRequestUrl = str;
        StringBuilder sb = new StringBuilder(SCRIPT_FUNCTION_NAME_GETVIDEOS);
        sb.append("('");
        sb.append(str);
        sb.append("')");
        LogUtils.j(TAG, "function:" + ((Object) sb));
        JavaScriptHelper.CallJsMethod(webView, sb.toString(), new ValueCallback<String>() {
            @Override
            public void onReceiveValue(String str2) {
                LogUtils.j(SniffTedUtil.TAG, "onReceiveValue:" + str2);
            }
        });
    }

    public static boolean shouldInterceptGraphql(String str) {
        return str.contains(URL_INTERCEPT_TED_PARAMETER_3);
    }

    public static boolean shouldInterceptNextData(String str) {
        return str.contains(URL_INTERCEPT_TED_PARAMETER_1) && str.contains(URL_INTERCEPT_TED_PARAMETER_2);
    }
}

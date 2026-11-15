package com.transsion.sniffer_load.sniffservice;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import defpackage.r0a;

public class SniffTiktokUtil {
    private static final String SCRIPT_FUNCTION_NAME_CAN_SNIFF = "window.getNativeParams";
    public static final String TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_LANGUAGE_VALUE = "zh-CN,zh;q=0.9";
    public static final String TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE = "*/*";
    public static final String TIKTOK_DOWNLOAD_HTTP_HEADER_AGENT_VALUE = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";
    public static final String TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_ORIGIN = "Origin";
    public static final String TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_ORIGIN_VALUE = "https://www.tiktok.com";
    public static final String TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER = "Referer";
    public static final String TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER_VALUE = "https://www.tiktok.com/";
    public static final String TIKTOK_HOST = ".tiktok.com";

    public static void fillDownloadingItem(com.transsion.sniffer_load.okdownload.a aVar) {
        if (aVar != null) {
            aVar.n = TIKTOK_DOWNLOAD_HTTP_HEADER_AGENT_VALUE;
            aVar.p = TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_LANGUAGE_VALUE;
            aVar.q = TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
            aVar.r = TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_ORIGIN_VALUE;
            aVar.s = TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER_VALUE;
        }
    }

    public static boolean isTiktokSite(String str) {
        return !r0a.g(str) && str.contains(TIKTOK_HOST);
    }

    public static void openSniff(WebView webView) {
        JavaScriptHelper.CallJsMethod(webView, "window.getNativeParams()", new ValueCallback<String>() {
            @Override
            public void onReceiveValue(String str) {
            }
        });
    }
}

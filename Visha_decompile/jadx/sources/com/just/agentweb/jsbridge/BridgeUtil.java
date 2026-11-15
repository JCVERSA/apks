package com.just.agentweb.jsbridge;

import android.content.Context;
import android.webkit.WebView;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class BridgeUtil {
    static final String CALLBACK_ID_FORMAT = "JAVA_CB_%s";
    static final String EMPTY_STR = "";
    public static final String JAVASCRIPT_STR = "javascript:%s";
    public static final String JAVA_SCRIPT = "WebViewJavascriptBridge.js";
    static final String JS_FETCH_QUEUE_FROM_JAVA = "javascript:WebViewJavascriptBridge._fetchQueue();";
    static final String JS_HANDLE_MESSAGE_FROM_JAVA = "javascript:WebViewJavascriptBridge._handleMessageFromNative(%s);";
    static final String SPLIT_MARK = "/";
    static final String UNDERLINE_STR = "_";
    static final String YY_FETCH_QUEUE = "yy://return/_fetchQueue/";
    static final String YY_OVERRIDE_SCHEMA = "yy://";
    static final String YY_RETURN_DATA = "yy://return/";

    public static String assetFile2Str(Context context, String str) {
        String line;
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
                try {
                    StringBuilder sb = new StringBuilder();
                    do {
                        line = bufferedReader.readLine();
                        if (line != null && !line.matches("^\\s*\\/\\/.*")) {
                            sb.append(line);
                        }
                    } while (line != null);
                    bufferedReader.close();
                    inputStreamOpen.close();
                    String string = sb.toString();
                    bufferedReader.close();
                    inputStreamOpen.close();
                    return string;
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getDataFromReturnUrl(String str) {
        return "";
    }

    public static String getFunctionFromReturnUrl(String str) {
        return "";
    }

    public static String parseFunctionName(String str) {
        return "";
    }

    public static void webViewLoadJs(WebView webView, String str) {
        webView.loadUrl("javascript:" + (("var newscript = document.createElement(\"script\");newscript.src=\"" + str + "\";") + "document.scripts[0].parentNode.insertBefore(newscript,document.scripts[0]);"));
    }

    public static void webViewLoadLocalJs(WebView webView, String str) {
        webView.loadUrl("javascript:" + assetFile2Str(webView.getContext(), str));
    }
}

package com.mgtv.webview.jsbridge;

import android.content.Context;
import android.webkit.WebView;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class b {
    public static String a(String str) {
        return str.replace("javascript:WebViewJavascriptBridge.", "").replaceAll("\\(.*\\);", "");
    }

    public static String b(String str) {
        if (str.startsWith("yy://return/_fetchQueue/")) {
            return str.replace("yy://return/_fetchQueue/", "");
        }
        String[] strArrSplit = str.replace("yy://return/", "").split("/");
        if (strArrSplit.length < 2) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i < strArrSplit.length; i++) {
            sb.append(strArrSplit[i]);
        }
        return sb.toString();
    }

    public static String c(String str) {
        String[] strArrSplit = str.replace("yy://return/", "").split("/");
        if (strArrSplit.length >= 1) {
            return strArrSplit[0];
        }
        return null;
    }

    public static void a(WebView webView, String str) throws Throwable {
        webView.loadUrl("javascript:" + a(webView.getContext(), str));
    }

    /* JADX WARN: Code duplicated, block: B:34:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String a(Context context, String str) throws Throwable {
        InputStream inputStreamOpen;
        String line;
        InputStream inputStream = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
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
                    try {
                        inputStreamOpen.close();
                    } catch (IOException unused) {
                    }
                    return string;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpen;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            inputStreamOpen = null;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }
}

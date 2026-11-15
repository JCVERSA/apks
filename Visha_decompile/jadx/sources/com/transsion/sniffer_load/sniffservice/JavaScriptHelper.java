package com.transsion.sniffer_load.sniffservice;

import android.app.Application;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import defpackage.fc7;
import defpackage.r0a;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import okhttp3.ResponseBody;

public class JavaScriptHelper {
    private static final String JS_METHOD_CALL_PREFIX = "javascript: ";
    private static final String JS_METHOD_CALL_SUFFIX = ";";
    private static final String TAG = "visha_" + JavaScriptHelper.class.getSimpleName();

    public static void CallJsMethod(final WebView webView, final String str, final ValueCallback valueCallback) {
        ThreadUtils.s(new Runnable() {
            @Override
            public void run() {
                fc7.f(webView, "content_null");
                fc7.f(str, "method_null");
                StringBuilder sb = new StringBuilder(JavaScriptHelper.JS_METHOD_CALL_PREFIX);
                sb.append(str);
                sb.append(";");
                LogUtils.w(JavaScriptHelper.TAG, "call_js_method:" + ((Object) sb));
                webView.evaluateJavascript(sb.toString(), valueCallback);
            }
        });
    }

    private static String buildNotRepeatInjectJS(String str) {
        if (r0a.g(str)) {
            return null;
        }
        String str2 = String.format("__injectFlag_%1$s__", String.valueOf(str.hashCode()));
        return "javascript:try{(function(){if(window." + str2 + "){console.log('" + str2 + " has been injected');return;}window." + str2 + "=true;" + str + "}())}catch(e){console.warn(e)}";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v5 */
    public static String getJSConentFromAsset(String str) throws Throwable {
        ?? r6;
        ?? r0;
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStream2;
        boolean zG = r0a.g(str);
        try {
            try {
                if (zG) {
                    return null;
                }
                try {
                    Application applicationA = Utils.a();
                    fc7.f(applicationA, "context null");
                    InputStream inputStreamOpen = applicationA.getAssets().open(str + ".js");
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[2048];
                            while (true) {
                                int i = inputStreamOpen.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i);
                            }
                            String string = byteArrayOutputStream.toString();
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            try {
                                inputStreamOpen.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                            return string;
                        } catch (IOException e3) {
                            e = e3;
                            inputStream2 = inputStreamOpen;
                            e.printStackTrace();
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            return null;
                        } catch (NullPointerException e5) {
                            e = e5;
                            inputStream = inputStreamOpen;
                            e.printStackTrace();
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return null;
                        }
                    } catch (IOException e7) {
                        e = e7;
                        byteArrayOutputStream = null;
                        inputStream2 = inputStreamOpen;
                    } catch (NullPointerException e8) {
                        e = e8;
                        byteArrayOutputStream = null;
                        inputStream = inputStreamOpen;
                    } catch (Throwable th) {
                        th = th;
                        r0 = 0;
                        r6 = inputStreamOpen;
                        if (r0 != 0) {
                            try {
                                r0.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                            }
                        }
                        if (r6 == 0) {
                            throw th;
                        }
                        try {
                            r6.close();
                            throw th;
                        } catch (IOException e10) {
                            e10.printStackTrace();
                            throw th;
                        }
                    }
                } catch (IOException e11) {
                    e = e11;
                    inputStream2 = null;
                    byteArrayOutputStream = null;
                } catch (NullPointerException e12) {
                    e = e12;
                    inputStream = null;
                    byteArrayOutputStream = null;
                } catch (Throwable th2) {
                    r0 = 0;
                    th = th2;
                    r6 = 0;
                }
            } catch (IOException e13) {
                e13.printStackTrace();
            }
        } catch (Throwable th3) {
            th = th3;
            r0 = zG;
            r6 = str;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x002b: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:18:0x002b */
    /* JADX WARN: Type inference failed for: r5v0, types: [okhttp3.ResponseBody] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.io.InputStream] */
    public static String getJsContentFromHttpResponse(ResponseBody responseBody) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        ByteArrayOutputStream byteArrayOutputStream3 = null;
        try {
            try {
                try {
                    byte[] bArr = new byte[4096];
                    responseBody = responseBody.byteStream();
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            try {
                                int i = responseBody.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i);
                            } catch (IOException e) {
                                e = e;
                                e.printStackTrace();
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                if (responseBody != 0) {
                                    responseBody.close();
                                }
                                return null;
                            } catch (NullPointerException e3) {
                                e = e3;
                                e.printStackTrace();
                                LogUtils.m(TAG, e.toString());
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                                if (responseBody != 0) {
                                    responseBody.close();
                                }
                                return null;
                            }
                        }
                        String string = byteArrayOutputStream.toString();
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                        try {
                            responseBody.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                        return string;
                    } catch (IOException e7) {
                        e = e7;
                        byteArrayOutputStream = null;
                    } catch (NullPointerException e8) {
                        e = e8;
                        byteArrayOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        if (byteArrayOutputStream3 != null) {
                            try {
                                byteArrayOutputStream3.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                            }
                        }
                        if (responseBody == 0) {
                            throw th;
                        }
                        try {
                            responseBody.close();
                            throw th;
                        } catch (IOException e10) {
                            e10.printStackTrace();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream3 = byteArrayOutputStream2;
                }
            } catch (IOException e11) {
                e = e11;
                responseBody = 0;
                byteArrayOutputStream = null;
            } catch (NullPointerException e12) {
                e = e12;
                responseBody = 0;
                byteArrayOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                responseBody = 0;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
    }

    public static String getJsonFromAsset(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Utils.a().getAssets().open(str), StandardCharsets.UTF_8));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    return sb.toString();
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
                e.printStackTrace();
            }
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

    public static void injectAssetJsWebView(WebView webView, String str, ValueCallback valueCallback) {
        fc7.f(webView, "webview_null");
        fc7.f(str, "file_null");
        injectWebview(webView, getJSConentFromAsset(str), valueCallback);
    }

    public static void injectWebview(final WebView webView, String str, final ValueCallback valueCallback) {
        if (webView == null || str == null) {
            return;
        }
        fc7.f(webView, "webview_null");
        fc7.f(str, "jstext_null");
        final StringBuilder sb = new StringBuilder(JS_METHOD_CALL_PREFIX);
        sb.append(str);
        LogUtils.j(TAG, "inject_script_to_webview");
        if (ThreadUtils.r()) {
            webView.evaluateJavascript(sb.toString(), valueCallback);
        } else {
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    webView.evaluateJavascript(sb.toString(), valueCallback);
                }
            });
        }
    }

    public void injectJsSample(WebView webView) {
        fc7.e(webView);
        injectWebview(webView, "function sayHi() { alert(\"hi,I'm javascript function sayHi\")}", null);
        injectWebview(webView, "javascript: function changeWeb() {\n        var ip1Ele = document.getElementsByClassName(\"inp1\")[0];\n        ip1Ele.style.color = \"white\";\n        ip1Ele.style.fontSize = \"35px\";\n    }", null);
        CallJsMethod(webView, "sayHi()", null);
        CallJsMethod(webView, "changeWeb()", null);
    }
}

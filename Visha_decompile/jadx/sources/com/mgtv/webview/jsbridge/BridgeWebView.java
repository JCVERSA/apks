package com.mgtv.webview.jsbridge;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressLint({"SetJavaScriptEnabled"})
public class BridgeWebView extends WebView {
    private final String a;
    private List<f> b;
    private long c;
    Map<String, d> d;
    Map<String, a> e;
    a f;

    public BridgeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = "BridgeWebView";
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new e();
        this.b = new ArrayList();
        this.c = 0L;
        a(context);
    }

    public void a(WebView webView, int i, String str, String str2) {
    }

    public void b(WebView webView, String str) {
    }

    public boolean c(WebView webView, String str) {
        return false;
    }

    public void d() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a("javascript:WebViewJavascriptBridge._fetchQueue();", new d() {
                @Override
                public void a(String str) {
                    try {
                        List<f> listF = f.f(str);
                        if (listF == null || listF.size() == 0) {
                            return;
                        }
                        for (int i = 0; i < listF.size(); i++) {
                            f fVar = listF.get(i);
                            String strA = fVar.a();
                            if (TextUtils.isEmpty(strA)) {
                                final String strC = fVar.c();
                                d dVar = !TextUtils.isEmpty(strC) ? new d() {
                                    @Override
                                    public void a(String str2) {
                                        f fVar2 = new f();
                                        fVar2.a(strC);
                                        fVar2.b(str2);
                                        BridgeWebView.this.b(fVar2);
                                    }
                                } : new d() {
                                    @Override
                                    public void a(String str2) {
                                    }
                                };
                                a aVar = !TextUtils.isEmpty(fVar.e()) ? BridgeWebView.this.e.get(fVar.e()) : BridgeWebView.this.f;
                                if (aVar != null) {
                                    aVar.a(fVar.d(), dVar);
                                }
                            } else {
                                BridgeWebView.this.d.get(strA).a(fVar.b());
                                BridgeWebView.this.d.remove(strA);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    public void e(String str) {
        String strC = b.c(str);
        d dVar = this.d.get(strC);
        String strB = b.b(str);
        if (dVar != null) {
            dVar.a(strB);
            this.d.remove(strC);
        }
    }

    private void b(String str, String str2, d dVar) {
        f fVar = new f();
        if (!TextUtils.isEmpty(str2)) {
            fVar.d(str2);
        }
        if (dVar != null) {
            StringBuilder sb = new StringBuilder();
            long j = this.c + 1;
            this.c = j;
            sb.append(j);
            sb.append("_");
            sb.append(SystemClock.currentThreadTimeMillis());
            String str3 = String.format("JAVA_CB_%s", sb.toString());
            this.d.put(str3, dVar);
            fVar.c(str3);
        }
        if (!TextUtils.isEmpty(str)) {
            fVar.e(str);
        }
        b(fVar);
    }

    @RequiresApi(api = 21)
    public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
    }

    public List<f> c() {
        return this.b;
    }

    public void a(WebView webView, String str) {
    }

    public void a(List<f> list) {
        this.b = list;
    }

    private void a(Context context) {
        Activity activityA;
        if (context instanceof Activity) {
            activityA = (Activity) context;
        } else {
            activityA = com.hunantv.imgo.util.a.a(context);
        }
        setWebViewClient(new com.mgtv.webview.b(this, activityA) {
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override
            public boolean a(String str) {
                BridgeWebView bridgeWebView = BridgeWebView.this;
                return bridgeWebView.c(bridgeWebView, str);
            }

            @Override
            public void b(WebView webView, String str) {
                BridgeWebView.this.a(webView, str);
            }

            @Override
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }

            @Override
            @RequiresApi(api = 21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                BridgeWebView.this.a(webView, webResourceRequest, webResourceResponse);
            }

            @Override
            public void a(WebView webView, String str) {
                BridgeWebView.this.b(webView, str);
            }

            @Override
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                BridgeWebView.this.a(webView, i, str, str2);
            }
        });
        setWebChromeClient(new com.mgtv.webview.a(activityA) {
            @Override
            public boolean a(View view, String str) {
                return super.a(view, str);
            }

            @Override
            public void b(WebView webView, String str) {
                super.b(webView, str);
            }

            @Override
            public void a(WebView webView, String str) {
                super.a(webView, str);
            }
        });
    }

    public BridgeWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = "BridgeWebView";
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new e();
        this.b = new ArrayList();
        this.c = 0L;
        a(context);
    }

    public void b(f fVar) {
        List<f> list = this.b;
        if (list != null) {
            list.add(fVar);
        } else {
            a(fVar);
        }
    }

    public void a(f fVar) {
        String str = String.format("javascript:WebViewJavascriptBridge._handleMessageFromNative('%s');", fVar.f().replaceAll("(\\\\)([^utrn])", "\\\\\\\\$1$2").replaceAll("(?<=[^\\\\])(\")", "\\\\\"").replaceAll("(?<=[^\\\\])(')", "\\\\'").replaceAll("%7B", URLEncoder.encode("%7B")).replaceAll("%7D", URLEncoder.encode("%7D")).replaceAll("%22", URLEncoder.encode("%22")));
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            loadUrl(str);
        }
    }

    public BridgeWebView(Context context) {
        super(context);
        this.a = "BridgeWebView";
        this.d = new HashMap();
        this.e = new HashMap();
        this.f = new e();
        this.b = new ArrayList();
        this.c = 0L;
        a(context);
    }

    public void a(String str, d dVar) {
        loadUrl(str);
        this.d.put(b.a(str), dVar);
    }

    public void a(String str, a aVar) {
        if (aVar != null) {
            this.e.put(str, aVar);
        }
    }

    public void a(String str, String str2, d dVar) {
        b(str, str2, dVar);
    }
}

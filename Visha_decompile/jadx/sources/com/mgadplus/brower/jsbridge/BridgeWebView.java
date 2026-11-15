package com.mgadplus.brower.jsbridge;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import defpackage.d2d;
import defpackage.h2d;
import defpackage.n5d;
import defpackage.nbd;
import defpackage.p1d;
import defpackage.u5d;
import defpackage.ued;
import defpackage.z9d;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressLint({"SetJavaScriptEnabled"})
public class BridgeWebView extends WebView {
    public final String e;
    public Map f;
    public Map g;
    public d2d h;
    public List i;
    public long j;

    public class a extends n5d {
        public a(BridgeWebView bridgeWebView, Activity activity) {
            super(bridgeWebView, activity);
        }

        @Override
        public void a(WebView webView, String str) {
            BridgeWebView.this.h(webView, str);
        }

        @Override
        public boolean b() {
            return BridgeWebView.this.a();
        }

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
        public boolean c(String str) {
            BridgeWebView bridgeWebView = BridgeWebView.this;
            return bridgeWebView.l(bridgeWebView, str);
        }

        @Override
        public void d(WebView webView, String str) {
            BridgeWebView.this.d(webView, str);
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            BridgeWebView.this.c(webView, webResourceRequest, webResourceResponse);
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return BridgeWebView.this.g(webView, renderProcessGoneDetail);
        }

        @Override
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            BridgeWebView.this.b(webView, i, str, str2);
        }
    }

    public class b extends p1d {
        public b(Activity activity) {
            super(activity);
        }

        @Override
        public void b(WebView webView, String str) {
            super.b(webView, str);
        }

        @Override
        public boolean c(View view, String str) {
            return super.c(view, str);
        }

        @Override
        public void d(WebView webView, String str) {
            BridgeWebView.this.k(str);
        }
    }

    public class c implements z9d {

        public class a implements z9d {
            public final String a;

            public a(String str) {
                this.a = str;
            }

            @Override
            public void a(String str) {
                ued uedVar = new ued();
                uedVar.b(this.a);
                uedVar.d(str);
                BridgeWebView.this.i(uedVar);
            }
        }

        public class b implements z9d {
            public b() {
            }

            @Override
            public void a(String str) {
            }
        }

        public c() {
        }

        @Override
        public void a(String str) {
            try {
                List listL = ued.l(str);
                if (listL == null || listL.size() == 0) {
                    return;
                }
                for (int i = 0; i < listL.size(); i++) {
                    ued uedVar = (ued) listL.get(i);
                    String strA = uedVar.a();
                    if (TextUtils.isEmpty(strA)) {
                        String strE = uedVar.e();
                        z9d aVar = !TextUtils.isEmpty(strE) ? new a(strE) : new b();
                        d2d d2dVar = !TextUtils.isEmpty(uedVar.i()) ? (d2d) BridgeWebView.this.g.get(uedVar.i()) : BridgeWebView.this.h;
                        if (d2dVar != null) {
                            d2dVar.a(uedVar.g(), aVar);
                        }
                    } else {
                        ((z9d) BridgeWebView.this.f.get(strA)).a(uedVar.c());
                        BridgeWebView.this.f.remove(strA);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public BridgeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = "BridgeWebView";
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = new nbd();
        this.i = new ArrayList();
        this.j = 0L;
        a(context);
    }

    public boolean a() {
        return false;
    }

    public void b(WebView webView, int i, String str, String str2) {
    }

    public void c(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
    }

    public void d(WebView webView, String str) {
    }

    public void f(ued uedVar) {
        String strK = uedVar.k();
        if (strK == null) {
            return;
        }
        String str = String.format("javascript:WebViewJavascriptBridge._handleMessageFromNative('%s');", strK.replaceAll("(\\\\)([^utrn])", "\\\\\\\\$1$2").replaceAll("(?<=[^\\\\])(\")", "\\\\\"").replaceAll("(?<=[^\\\\])(')", "\\\\'").replaceAll("%7B", URLEncoder.encode("%7B")).replaceAll("%7D", URLEncoder.encode("%7D")).replaceAll("%22", URLEncoder.encode("%22")));
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            loadUrl(str);
        }
    }

    public boolean g(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return true;
    }

    public List<ued> getStartupMessage() {
        return this.i;
    }

    public void h(WebView webView, String str) {
    }

    public final void i(ued uedVar) {
        List list = this.i;
        if (list != null) {
            list.add(uedVar);
        } else {
            f(uedVar);
        }
    }

    public final void j(String str, String str2, z9d z9dVar) {
        ued uedVar = new ued();
        if (!TextUtils.isEmpty(str2)) {
            uedVar.h(str2);
        }
        if (z9dVar != null) {
            StringBuilder sb = new StringBuilder();
            long j = this.j + 1;
            this.j = j;
            sb.append(j);
            sb.append("_");
            sb.append(SystemClock.currentThreadTimeMillis());
            String str3 = String.format("JAVA_CB_%s", sb.toString());
            this.f.put(str3, z9dVar);
            uedVar.f(str3);
        }
        if (!TextUtils.isEmpty(str)) {
            uedVar.j(str);
        }
        i(uedVar);
    }

    public void k(String str) {
    }

    public boolean l(WebView webView, String str) {
        return false;
    }

    public void m(String str) {
        String strE = u5d.e(str);
        z9d z9dVar = (z9d) this.f.get(strE);
        String strD = u5d.d(str);
        if (z9dVar != null) {
            z9dVar.a(strD);
            this.f.remove(strE);
        }
    }

    public void n() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a("javascript:WebViewJavascriptBridge._fetchQueue();", new c());
        }
    }

    public void setDefaultHandler(d2d d2dVar) {
        this.h = d2dVar;
    }

    public void setStartupMessage(List<ued> list) {
        this.i = list;
    }

    private void a(Context context) {
        Activity activityA = context instanceof Activity ? (Activity) context : h2d.a(context);
        setWebViewClient(new a(this, activityA));
        setWebChromeClient(new b(activityA));
    }

    public void a(String str, z9d z9dVar) {
        loadUrl(str);
        this.f.put(u5d.b(str), z9dVar);
    }

    public BridgeWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = "BridgeWebView";
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = new nbd();
        this.i = new ArrayList();
        this.j = 0L;
        a(context);
    }

    public void a(String str, d2d d2dVar) {
        if (d2dVar != null) {
            this.g.put(str, d2dVar);
        }
    }

    public void a(String str, String str2, z9d z9dVar) {
        j(str, str2, z9dVar);
    }

    public BridgeWebView(Context context) {
        super(context);
        this.e = "BridgeWebView";
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = new nbd();
        this.i = new ArrayList();
        this.j = 0L;
        a(context);
    }
}

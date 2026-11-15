package com.google.android.gms.internal.ads;

import android.view.View;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import defpackage.fvh;
import defpackage.gvh;
import defpackage.lwh;
import defpackage.ojf;
import defpackage.puh;
import defpackage.quh;
import defpackage.ruh;
import defpackage.suh;
import defpackage.vuh;
import defpackage.wuh;
import defpackage.zvh;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Timer;

public final class b6 {
    public final wuh a;
    public final WebView b;
    public lwh c;
    public final HashMap d;
    public final gvh e;

    public b6(wuh wuhVar, WebView webView, boolean z) {
        HashMap map = new HashMap();
        this.d = map;
        this.e = new gvh();
        zvh.a();
        this.a = wuhVar;
        this.b = webView;
        if (a() != webView) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((puh) it.next()).d(webView);
            }
            this.c = new lwh(webView);
        }
        if (!WebViewFeature.isFeatureSupported(WebViewFeature.WEB_MESSAGE_LISTENER)) {
            throw new UnsupportedOperationException("The JavaScriptSessionService cannot be supported in this WebView version.");
        }
        h();
        WebViewCompat.addWebMessageListener(this.b, "omidJsSessionService", new HashSet(Arrays.asList("*")), new vuh(this));
    }

    public static b6 b(wuh wuhVar, WebView webView, boolean z) {
        return new b6(wuhVar, webView, true);
    }

    public static void c(b6 b6Var, String str) {
        HashMap map = b6Var.d;
        puh puhVar = (puh) map.get(str);
        if (puhVar != null) {
            puhVar.c();
            map.remove(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(b6 b6Var, String str) {
        zzfka zzfkaVar = zzfka.DEFINED_BY_JAVASCRIPT;
        zzfkd zzfkdVar = zzfkd.DEFINED_BY_JAVASCRIPT;
        zzfkh zzfkhVar = zzfkh.JAVASCRIPT;
        suh suhVar = new suh(quh.a(zzfkaVar, zzfkdVar, zzfkhVar, zzfkhVar, false), ruh.b(b6Var.a, b6Var.b, null, null), str);
        b6Var.d.put(str, suhVar);
        suhVar.d(b6Var.a());
        for (fvh fvhVar : b6Var.e.a()) {
            suhVar.b((View) fvhVar.b().get(), fvhVar.a(), fvhVar.c());
        }
        suhVar.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a() {
        lwh lwhVar = this.c;
        if (lwhVar == null) {
            return null;
        }
        return (View) lwhVar.get();
    }

    public final void f(View view, zzfkc zzfkcVar, String str) {
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            ((puh) it.next()).b(view, zzfkcVar, "Ad overlay");
        }
        this.e.b(view, zzfkcVar, "Ad overlay");
    }

    public final void g(ojf ojfVar) {
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            ((puh) it.next()).c();
        }
        Timer timer = new Timer();
        timer.schedule(new zzfke(this, ojfVar, timer), 1000L);
    }

    public final void h() {
        WebViewCompat.removeWebMessageListener(this.b, "omidJsSessionService");
    }
}

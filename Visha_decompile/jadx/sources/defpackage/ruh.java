package defpackage;

import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzfjy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ruh {
    public final wuh a;
    public final WebView b;
    public final List c = new ArrayList();
    public final Map d = new HashMap();
    public final String e;
    public final String f;
    public final zzfjy g;

    public ruh(wuh wuhVar, WebView webView, String str, List list, String str2, String str3, zzfjy zzfjyVar) {
        this.a = wuhVar;
        this.b = webView;
        this.g = zzfjyVar;
        this.f = str2;
        this.e = str3;
    }

    public static ruh b(wuh wuhVar, WebView webView, String str, String str2) {
        if (str2 != null) {
            zvh.d(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new ruh(wuhVar, webView, null, null, str, str2, zzfjy.HTML);
    }

    public static ruh c(wuh wuhVar, WebView webView, String str, String str2) {
        zvh.d("", 256, "CustomReferenceData is greater than 256 characters");
        return new ruh(wuhVar, webView, null, null, str, "", zzfjy.JAVASCRIPT);
    }

    public final WebView a() {
        return this.b;
    }

    public final zzfjy d() {
        return this.g;
    }

    public final wuh e() {
        return this.a;
    }

    public final String f() {
        return this.f;
    }

    public final String g() {
        return this.e;
    }

    public final List h() {
        return Collections.unmodifiableList(this.c);
    }

    public final Map i() {
        return Collections.unmodifiableMap(this.d);
    }
}

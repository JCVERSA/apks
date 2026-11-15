package com.iab.omid.library.vungle.adsession;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class d {

    private final f f32943a;

    private final WebView f32944b;

    private final List f32945c;

    private final Map f32946d;

    private final String f32947e;

    private final String f32948f;

    private final String f32949g;

    private final AdSessionContextType f32950h;

    private d(f fVar, WebView webView, String str, List list, String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f32945c = arrayList;
        this.f32946d = new HashMap();
        this.f32943a = fVar;
        this.f32944b = webView;
        this.f32947e = str;
        this.f32950h = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                this.f32946d.put(UUID.randomUUID().toString(), gVar);
            }
        }
        this.f32949g = str2;
        this.f32948f = str3;
    }

    public static d a(f fVar, WebView webView, String str, String str2) {
        xe.g.d(fVar, "Partner is null");
        xe.g.d(webView, "WebView is null");
        if (str2 != null) {
            xe.g.e(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, webView, null, null, str, str2, AdSessionContextType.HTML);
    }

    public static d b(f fVar, String str, List list, String str2, String str3) {
        xe.g.d(fVar, "Partner is null");
        xe.g.d(str, "OM SDK JS script content is null");
        xe.g.d(list, "VerificationScriptResources is null");
        if (str3 != null) {
            xe.g.e(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType c() {
        return this.f32950h;
    }

    public String d() {
        return this.f32949g;
    }

    public String e() {
        return this.f32948f;
    }

    public Map f() {
        return Collections.unmodifiableMap(this.f32946d);
    }

    public String g() {
        return this.f32947e;
    }

    public f h() {
        return this.f32943a;
    }

    public List i() {
        return Collections.unmodifiableList(this.f32945c);
    }

    public WebView j() {
        return this.f32944b;
    }
}

package com.iab.omid.library.hisavana.adsession;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class d {

    private final f f32709a;

    private final WebView f32710b;

    private final List f32711c;

    private final Map f32712d;

    private final String f32713e;

    private final String f32714f;

    private final String f32715g;

    private final AdSessionContextType f32716h;

    private d(f fVar, WebView webView, String str, List list, String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f32711c = arrayList;
        this.f32712d = new HashMap();
        this.f32709a = fVar;
        this.f32710b = webView;
        this.f32713e = str;
        this.f32716h = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                this.f32712d.put(UUID.randomUUID().toString(), gVar);
            }
        }
        this.f32715g = str2;
        this.f32714f = str3;
    }

    public static d a(f fVar, String str, List list, String str2, String str3) {
        le.g.d(fVar, "Partner is null");
        le.g.d(str, "OM SDK JS script content is null");
        le.g.d(list, "VerificationScriptResources is null");
        if (str3 != null) {
            le.g.e(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType b() {
        return this.f32716h;
    }

    public String c() {
        return this.f32715g;
    }

    public String d() {
        return this.f32714f;
    }

    public Map e() {
        return Collections.unmodifiableMap(this.f32712d);
    }

    public String f() {
        return this.f32713e;
    }

    public f g() {
        return this.f32709a;
    }

    public List h() {
        return Collections.unmodifiableList(this.f32711c);
    }

    public WebView i() {
        return this.f32710b;
    }
}

package com.iab.omid.library.mmadbridge.adsession;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class d {

    private final f f32823a;

    private final WebView f32824b;

    private final List f32825c;

    private final Map f32826d;

    private final String f32827e;

    private final String f32828f;

    private final String f32829g;

    private final AdSessionContextType f32830h;

    private d(f fVar, WebView webView, String str, List list, String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f32825c = arrayList;
        this.f32826d = new HashMap();
        this.f32823a = fVar;
        this.f32824b = webView;
        this.f32827e = str;
        this.f32830h = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                this.f32826d.put(UUID.randomUUID().toString(), gVar);
            }
        }
        this.f32829g = str2;
        this.f32828f = str3;
    }

    public static d a(f fVar, WebView webView, String str, String str2) {
        re.g.d(fVar, "Partner is null");
        re.g.d(webView, "WebView is null");
        if (str2 != null) {
            re.g.e(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, webView, null, null, str, str2, AdSessionContextType.HTML);
    }

    public static d b(f fVar, String str, List list, String str2, String str3) {
        re.g.d(fVar, "Partner is null");
        re.g.d(str, "OM SDK JS script content is null");
        re.g.d(list, "VerificationScriptResources is null");
        if (str3 != null) {
            re.g.e(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType c() {
        return this.f32830h;
    }

    public String d() {
        return this.f32829g;
    }

    public String e() {
        return this.f32828f;
    }

    public Map f() {
        return Collections.unmodifiableMap(this.f32826d);
    }

    public String g() {
        return this.f32827e;
    }

    public f h() {
        return this.f32823a;
    }

    public List i() {
        return Collections.unmodifiableList(this.f32825c);
    }

    public WebView j() {
        return this.f32824b;
    }
}

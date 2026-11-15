package defpackage;

import android.webkit.WebView;
import com.iab.omid.library.hisavana.adsession.AdSessionContextType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class u7 {
    public final qx7 a;
    public final WebView b;
    public final List c;
    public final Map d;
    public final String e;
    public final String f;
    public final String g;
    public final AdSessionContextType h;

    public u7(qx7 qx7Var, WebView webView, String str, List list, String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        this.d = new HashMap();
        this.a = qx7Var;
        this.b = webView;
        this.e = str;
        this.h = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                lob lobVar = (lob) it.next();
                this.d.put(UUID.randomUUID().toString(), lobVar);
            }
        }
        this.g = str2;
        this.f = str3;
    }

    public static u7 a(qx7 qx7Var, String str, List list, String str2, String str3) {
        agd.d(qx7Var, "Partner is null");
        agd.d(str, "OM SDK JS script content is null");
        agd.d(list, "VerificationScriptResources is null");
        if (str3 != null) {
            agd.e(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new u7(qx7Var, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType b() {
        return this.h;
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return this.f;
    }

    public Map e() {
        return Collections.unmodifiableMap(this.d);
    }

    public String f() {
        return this.e;
    }

    public qx7 g() {
        return this.a;
    }

    public List h() {
        return Collections.unmodifiableList(this.c);
    }

    public WebView i() {
        return this.b;
    }
}

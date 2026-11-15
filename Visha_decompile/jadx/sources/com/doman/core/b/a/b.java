package com.doman.core.b.a;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.net.k;
import com.android.net.n;
import com.android.net.p;
import com.android.net.toolbox.m;
import com.android.net.u;
import com.doman.core.CoreMain;
import com.lzy.okgo.model.Progress;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class b extends m<String> {
    public static int l = 0;
    public static int m = 1;
    private static Map<String, String> o;
    private com.doman.core.a.e n;
    private String p;
    private String q;

    public b(int i, String str, String str2, String str3, final com.doman.core.a.e eVar) {
        super(i, eVar.b, str, new p.b<String>() {
            @Override
            public final void a(String str4) {
                String str5 = str4;
                try {
                    com.doman.core.a.e eVar2 = eVar;
                    if (eVar2 == null || TextUtils.isEmpty(eVar2.f)) {
                        return;
                    }
                    b.a(200, str5, eVar);
                } catch (Throwable unused) {
                }
            }
        }, new p.a() {
            @Override
            public final void a(u uVar) {
                try {
                    com.doman.core.a.e eVar2 = eVar;
                    if (eVar2 == null || TextUtils.isEmpty(eVar2.f) || uVar == null) {
                        return;
                    }
                    k kVar = uVar.a;
                    if (kVar != null) {
                        b.a(kVar.a, null, eVar);
                    } else {
                        b.a(10000, null, eVar);
                    }
                } catch (Throwable unused) {
                }
            }
        });
        this.n = eVar;
        this.p = str2;
        this.q = str3;
        this.j = new com.android.net.e(25000, 1, 1.0f);
    }

    @Override
    public final p<String> a(k kVar) {
        String str;
        try {
            Map<String, String> map = kVar.c;
            o = map;
            str = new String(kVar.b, com.android.net.toolbox.g.a(map));
        } catch (Throwable unused) {
            str = new String(kVar.b);
        }
        return p.a(str, com.android.net.toolbox.g.a(kVar));
    }

    @Override
    public final Map<String, String> c() {
        HashMap<String, String> map;
        HashMap map2 = new HashMap();
        try {
            com.doman.core.a.e eVar = this.n;
            if (eVar != null && (map = eVar.d) != null && map.size() > 0) {
                return this.n.d;
            }
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(this.p)) {
            map2.put("User-Agent", this.p);
        }
        if (!TextUtils.isEmpty(this.q)) {
            map2.put(Progress.REFERER, this.q);
        }
        return map2;
    }

    @Override
    public final n.b i() {
        return n.b.HIGH;
    }

    public static void a(int i, String str, com.doman.core.a.e eVar) throws JSONException {
        if (eVar != null) {
            try {
                if (TextUtils.isEmpty(eVar.f)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("httpcode", i);
                if (str != null && str.length() > 0) {
                    jSONObject.put(TtmlNode.TAG_BODY, str);
                }
                Map<String, String> map = o;
                if (map != null && map.keySet() != null) {
                    jSONObject.put("header", new JSONObject(o));
                }
                com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                String str2 = eVar.f;
                if (com.doman.core.d.f.a()) {
                    com.doman.core.b.c cVarA = com.doman.core.b.c.a(bVarA.a);
                    HashMap map2 = new HashMap();
                    JSONObject jSONObject2 = new JSONObject();
                    cVarA.a(jSONObject2);
                    jSONObject2.put("data", jSONObject);
                    map2.put("params", com.doman.core.b.c.a(jSONObject2.toString()));
                    cVarA.a.a(new a(com.doman.core.b.c.a(null, map2), str2));
                }
            } catch (Throwable unused) {
            }
        }
    }
}

package com.doman.core.b.a;

import android.content.Context;
import android.text.TextUtils;
import com.android.net.n;
import com.android.net.p;
import com.android.net.u;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class c extends d<String> {
    protected static p.a l = new p.a() {
        @Override
        public final void a(u uVar) {
            com.doman.core.webview.c.a(com.doman.core.webview.c.av, "error:" + uVar.getMessage());
        }
    };
    private com.doman.core.b.e n;
    private p.b<String> o;
    private String p;

    public c(Context context, com.doman.core.b.e eVar, String str, p.b<String> bVar) {
        super(str, l);
        this.p = "ApplistRequest";
        ((d) this).m = context;
        this.n = eVar;
        this.o = bVar;
    }

    private static String d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.equals(PlayerRealUrlEntity.OK)) {
                com.doman.core.webview.c.a(com.doman.core.webview.c.au);
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.getBoolean("success")) {
                return null;
            }
            com.doman.core.d.c.b.b(jSONObject.optString("data"), com.doman.core.b.c.c);
        } catch (JSONException unused) {
        }
        return null;
    }

    @Override
    public final String c(String str) {
        return d(str);
    }

    @Override
    public final Map<String, String> f() {
        com.doman.core.b.e eVar = this.n;
        return eVar == null ? super.f() : eVar.a;
    }

    @Override
    public final n.b i() {
        return n.b.NORMAL;
    }

    @Override
    public final p.b<String> n() {
        return this.o;
    }
}

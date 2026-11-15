package com.doman.core.b.a;

import android.text.TextUtils;
import com.android.net.n;
import com.android.net.p;
import com.android.net.toolbox.o;
import com.android.net.u;
import com.doman.core.CoreMain;
import java.util.HashMap;
import java.util.Map;

public final class a extends o {
    public static int l = 0;
    public static int m = 1;
    private com.doman.core.b.e n;

    public a(com.doman.core.b.e eVar, String str) {
        super(1, str, new p.b<String>() {
            @Override
            public final void a(String str2) {
            }
        }, new p.a() {
            @Override
            public final void a(u uVar) {
            }
        });
        this.n = eVar;
        com.doman.core.d.g.a("TrkCbR", "AdTrackingCbRequest tracking:".concat(String.valueOf(str)));
        this.j = new com.android.net.e(25000, 1, 1.0f);
    }

    @Override
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        com.doman.core.webview.b bVarA = com.doman.core.webview.b.a();
        if (TextUtils.isEmpty(bVarA.a)) {
            bVarA.a = CoreMain.getInstance().getUA();
        }
        String ua = bVarA.a;
        if (TextUtils.isEmpty(ua)) {
            ua = CoreMain.getInstance().getUA();
        }
        map.put("User-Agent", ua);
        return map;
    }

    @Override
    public final Map<String, String> f() {
        com.doman.core.b.e eVar = this.n;
        return eVar == null ? super.f() : eVar.a;
    }

    @Override
    public final n.b i() {
        return n.b.HIGH;
    }
}

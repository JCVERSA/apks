package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import defpackage.y45;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class za1 {
    private final y30 a;
    private final ConcurrentHashMap<String, ee2> b;

    public za1(Context context) {
        y45.j(context, "context");
        Context applicationContext = context.getApplicationContext();
        int i = ne2.c;
        y45.i(applicationContext, "appContext");
        this.a = ne2.b(applicationContext);
        this.b = new ConcurrentHashMap<>();
    }

    public final void a(String str, ee2 ee2Var, String str2) {
        y45.j(str, "url");
        y45.j(ee2Var, "videoCacheListener");
        y45.j(str2, "requestId");
        if (this.a == null) {
            ee2Var.b();
            a();
            return;
        }
        a40 a40VarA = new a40.b(Uri.parse(str), str2).a();
        this.b.put(str2, ee2Var);
        this.a.a(new qj2(str2, ee2Var));
        this.a.a(a40VarA);
        this.a.a();
    }

    public final void a() {
        Iterator<Map.Entry<String, ee2>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            y30 y30Var = this.a;
            if (y30Var != null) {
                y30Var.a(key);
            }
        }
        this.b.clear();
    }

    public final void a(String str) {
        y45.j(str, "requestId");
        y30 y30Var = this.a;
        if (y30Var != null) {
            y30Var.a(str);
        }
        this.b.remove(str);
    }
}

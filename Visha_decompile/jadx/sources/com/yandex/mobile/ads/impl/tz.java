package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
import java.util.Map;

public final class tz implements j40 {
    private final Object a = new Object();

    @GuardedBy("lock")
    private jw0.d b;

    @GuardedBy("lock")
    private sz c;

    @RequiresApi(18)
    private static sz a(jw0.d dVar) {
        yz.a aVarB = new yz.a().b();
        Uri uri = dVar.b;
        zh0 zh0Var = new zh0(uri == null ? null : uri.toString(), dVar.f, aVarB);
        i82<Map.Entry<String, String>> it = dVar.c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            zh0Var.a(next.getKey(), next.getValue());
        }
        sz szVarA = new sz.a().a(dVar.a, sc0.e).a(dVar.d).b(dVar.e).a(hq0.a(dVar.g)).a(zh0Var);
        szVarA.a(dVar.a());
        return szVarA;
    }

    @Override
    public final i40 a(jw0 jw0Var) {
        sz szVar;
        jw0Var.c.getClass();
        jw0.d dVar = jw0Var.c.c;
        if (dVar != null && f92.a >= 18) {
            synchronized (this.a) {
                try {
                    if (!f92.a(dVar, this.b)) {
                        this.b = dVar;
                        this.c = a(dVar);
                    }
                    szVar = this.c;
                    szVar.getClass();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return szVar;
        }
        return i40.a;
    }
}

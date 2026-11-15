package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

public final class d11 extends nk {
    private final c a;
    private final tn1 b;
    private final ee c;
    private final yc1 d;
    private final nk e;

    public d11(Context context, SSLSocketFactory sSLSocketFactory, c cVar, tn1 tn1Var, ee eeVar, yc1 yc1Var, ki0 ki0Var) {
        y45.j(context, "context");
        y45.j(cVar, "aabHurlStack");
        y45.j(tn1Var, "readyHttpResponseCreator");
        y45.j(eeVar, "antiAdBlockerStateValidator");
        y45.j(yc1Var, "networkResponseCreator");
        y45.j(ki0Var, "hurlStackFactory");
        this.a = cVar;
        this.b = tn1Var;
        this.c = eeVar;
        this.d = yc1Var;
        ki0Var.getClass();
        this.e = ki0.a(context, null, sSLSocketFactory);
    }

    @Override
    public final ci0 a(up1<?> up1Var, Map<String, String> map) throws IOException, ai {
        y45.j(up1Var, Progress.REQUEST);
        y45.j(map, "additionalHeaders");
        long jCurrentTimeMillis = System.currentTimeMillis();
        xc1 xc1VarA = this.d.a(up1Var);
        if (l11.a.a()) {
            fq1.a(jCurrentTimeMillis, up1Var, xc1VarA);
        }
        if (xc1VarA == null) {
            if (this.c.a()) {
                return this.a.a(up1Var, map);
            }
            ci0 ci0VarA = this.e.a(up1Var, map);
            y45.g(ci0VarA);
            return ci0VarA;
        }
        this.b.getClass();
        y45.j(xc1VarA, "networkResponse");
        ArrayList arrayList = new ArrayList();
        Map<String, String> map2 = xc1VarA.c;
        if (map2 != null) {
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                arrayList.add(new kf0(entry.getKey(), entry.getValue()));
            }
        }
        return new ci0(xc1VarA.a, arrayList, xc1VarA.b);
    }
}

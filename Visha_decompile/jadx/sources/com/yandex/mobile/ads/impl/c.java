package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

public final class c extends nk implements ji0.b {
    private final a a;
    private final nk b;

    public c(Context context, SSLSocketFactory sSLSocketFactory) {
        this(context, sSLSocketFactory, new ki0(), d.a());
    }

    @Override
    public final ci0 a(up1<?> up1Var, Map<String, String> map) throws IOException, ai {
        y45.j(up1Var, Progress.REQUEST);
        y45.j(map, "additionalHeaders");
        String strL = up1Var.l();
        boolean zA = this.a.a(strL);
        if (strL != null && !zA) {
            String strA = vh0.c.a();
            String strL2 = up1Var.l();
            y45.g(strL2);
            map.put(strA, strL2);
        }
        ci0 ci0VarA = this.b.a(up1Var, map);
        y45.i(ci0VarA, "executeRequest(...)");
        return ci0VarA;
    }

    public c(Context context, SSLSocketFactory sSLSocketFactory, ki0 ki0Var, a aVar) {
        y45.j(context, "context");
        y45.j(ki0Var, "hurlStackFactory");
        y45.j(aVar, "aabCryptedUrlValidator");
        this.a = aVar;
        ki0Var.getClass();
        this.b = ki0.a(context, this, sSLSocketFactory);
    }

    @Override
    public final String a(String str) {
        return (str == null || this.a.a(str)) ? str : "https://yandex.ru/appcry";
    }
}

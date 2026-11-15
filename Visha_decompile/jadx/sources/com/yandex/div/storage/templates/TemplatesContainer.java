package com.yandex.div.storage.templates;

import com.yandex.div.storage.b;
import defpackage.c74;
import defpackage.lx7;
import defpackage.ma1;
import defpackage.nq4;
import defpackage.oj8;
import defpackage.pq4;
import defpackage.y45;
import defpackage.yi5;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedHashMap;
import java.util.Map;

public class TemplatesContainer {
    public final b a;
    public final lx7 b;
    public final pq4 c;
    public final oj8 d;
    public final String e;
    public final ma1 f;
    public final Map g;
    public final Map h;
    public final yi5 i;

    public TemplatesContainer(b bVar, lx7 lx7Var, pq4 pq4Var, oj8 oj8Var, nq4 nq4Var) {
        y45.j(bVar, "divStorage");
        y45.j(lx7Var, "errorLogger");
        y45.j(pq4Var, "histogramRecorder");
        y45.j(oj8Var, "parsingHistogramProxy");
        this.a = bVar;
        this.b = lx7Var;
        this.c = pq4Var;
        this.d = oj8Var;
        this.e = null;
        this.f = new ma1(bVar, lx7Var, null, pq4Var, oj8Var);
        this.g = new LinkedHashMap();
        this.h = new LinkedHashMap();
        this.i = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final MessageDigest invoke() {
                try {
                    return MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException e) {
                    this.this$0.b.c(new IllegalStateException("Storage cannot work with templates!", e));
                    return null;
                }
            }
        });
    }
}

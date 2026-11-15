package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.mozilla.javascript.ES6Iterator;

public final class wd1 extends qg<String, String> {
    private final rr1 a;

    public wd1(rr1 rr1Var) {
        y45.j(rr1Var, "reviewCountFormatter");
        this.a = rr1Var;
    }

    @Override
    public final ig a(Object obj, String str) throws IOException {
        String strA = (String) obj;
        y45.j(str, "name");
        y45.j(strA, ES6Iterator.VALUE_PROPERTY);
        if (y45.e("review_count", str)) {
            try {
                strA = this.a.a(strA);
            } catch (t61 unused) {
            }
        }
        return qg.a(str, "string", strA);
    }
}

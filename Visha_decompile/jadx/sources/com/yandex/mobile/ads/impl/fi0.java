package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class fi0 extends nk {
    private final nk a;
    private final c92 b;

    public fi0(nk nkVar, c92 c92Var) {
        y45.j(nkVar, "httpStackDelegate");
        y45.j(c92Var, "userAgentProvider");
        this.a = nkVar;
        this.b = c92Var;
    }

    @Override
    public final ci0 a(up1<?> up1Var, Map<String, String> map) throws IOException, ai {
        y45.j(up1Var, Progress.REQUEST);
        y45.j(map, "additionalHeaders");
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.put(vh0.U.a(), this.b.a());
        ci0 ci0VarA = this.a.a(up1Var, map2);
        y45.i(ci0VarA, "executeRequest(...)");
        return ci0VarA;
    }
}

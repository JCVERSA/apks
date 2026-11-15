package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class zk2 implements lq1<mb2, List<? extends mb2>> {
    private final nd2 a;

    public zk2(nd2 nd2Var) {
        y45.j(nd2Var, "reportParametersProvider");
        this.a = nd2Var;
    }

    @Override
    public final op1 a(mb2 mb2Var) {
        y45.j(mb2Var, Progress.REQUEST);
        Map<String, String> mapA = this.a.a();
        op1.b bVar = op1.b.o;
        y45.j(bVar, "reportType");
        y45.j(mapA, "reportData");
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapA), (f) null);
    }

    @Override
    public final op1 a(xq1<List<? extends mb2>> xq1Var, int i, mb2 mb2Var) {
        op1.c cVar;
        y45.j(mb2Var, Progress.REQUEST);
        List<? extends mb2> list = xq1Var != null ? xq1Var.a : null;
        if (204 == i) {
            cVar = op1.c.e;
        } else if (list != null && i == 200) {
            cVar = list.isEmpty() ? op1.c.e : op1.c.c;
        } else {
            cVar = op1.c.d;
        }
        Map mapS = kotlin.collections.a.s(this.a.a(), ky5.h(abb.a("status", cVar.a())));
        op1.b bVar = op1.b.p;
        y45.j(bVar, "reportType");
        y45.j(mapS, "reportData");
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapS), (f) null);
    }
}

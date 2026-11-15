package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class so1 {
    private final List<String> a;
    private final v9 b;
    private final ro1 c;

    public so1(Context context, o8 o8Var, o3 o3Var, s9 s9Var, List list) {
        this(context, o8Var, o3Var, s9Var, list, new v9(context, o3Var), new ro1(context, o3Var, o8Var, s9Var));
    }

    public final void a(u91 u91Var) {
        y45.j(u91Var, "reportParameterManager");
        this.c.a(u91Var);
    }

    public final void a() {
        List<String> list = this.a;
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                this.b.a(it.next(), z62.i);
            }
        }
        this.c.a();
    }

    public so1(Context context, o8<?> o8Var, o3 o3Var, s9 s9Var, List<String> list, v9 v9Var, ro1 ro1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(s9Var, "adStructureType");
        y45.j(v9Var, "adTracker");
        y45.j(ro1Var, "renderReporter");
        this.a = list;
        this.b = v9Var;
        this.c = ro1Var;
    }
}

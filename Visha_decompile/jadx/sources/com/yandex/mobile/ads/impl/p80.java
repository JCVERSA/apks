package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class p80 {
    private final ps0 a;
    private final o80 b;

    public static final class a {
        private static p80 a;

        public static final synchronized p80 a(Context context) {
            p80 p80Var;
            y45.j(context, "context");
            p80Var = a;
            if (p80Var == null) {
                p80Var = new p80(context, 0);
                a = p80Var;
            }
            return p80Var;
        }
    }

    private p80(Context context) {
        this(rs0.a(context, "FalseClickDataStorage"));
    }

    public final void a() {
        this.a.clear();
    }

    public final List<n80> b() {
        Set<String> setKeySet = this.a.a().keySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setKeySet.iterator();
        while (it.hasNext()) {
            String strD = this.a.d((String) it.next());
            if (strD != null) {
                arrayList.add(strD);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            n80 n80VarA = this.b.a((String) it2.next());
            if (n80VarA != null) {
                arrayList2.add(n80VarA);
            }
        }
        return defpackage.i81.b1(arrayList2);
    }

    public p80(Context context, int i) {
        this(context);
    }

    public final void a(long j) {
        this.a.a(String.valueOf(j));
    }

    public p80(ps0 ps0Var) {
        this(ps0Var, new o80(0));
    }

    public final void a(n80 n80Var) {
        y45.j(n80Var, "falseClickData");
        this.a.a(String.valueOf(n80Var.f()), this.b.a(n80Var));
    }

    public p80(ps0 ps0Var, o80 o80Var) {
        y45.j(ps0Var, "localStorage");
        y45.j(o80Var, "falseClickDataFormatter");
        this.a = ps0Var;
        this.b = o80Var;
    }
}

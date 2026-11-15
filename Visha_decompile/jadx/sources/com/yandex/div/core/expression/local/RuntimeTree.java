package com.yandex.div.core.expression.local;

import defpackage.abb;
import defpackage.e74;
import defpackage.g1a;
import defpackage.rnb;
import defpackage.vj3;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class RuntimeTree {
    public final Map a = new LinkedHashMap();
    public final Map b = new LinkedHashMap();

    public final a c(String str) {
        y45.j(str, "path");
        return (a) this.b.get(str);
    }

    public final Map d() {
        Map map = this.b;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(abb.a(entry.getKey(), ((a) entry.getValue()).c()));
        }
        return kotlin.collections.a.y(arrayList);
    }

    public final void e(vj3 vj3Var, String str, e74 e74Var) {
        y45.j(vj3Var, "expressionsRuntime");
        y45.j(str, "path");
        y45.j(e74Var, "callback");
        a aVar = (a) this.a.get(vj3Var);
        if (aVar == null) {
            return;
        }
        if (g1a.R(aVar.b(), str, false, 2, null)) {
            f(aVar, e74Var);
            return;
        }
        for (a aVar2 : aVar.a()) {
            if (g1a.R(aVar2.b(), str, false, 2, null)) {
                f(aVar2, e74Var);
            }
        }
    }

    public final void f(a aVar, e74 e74Var) {
        e74Var.invoke(aVar);
        Iterator it = aVar.a().iterator();
        while (it.hasNext()) {
            f((a) it.next(), e74Var);
        }
    }

    public final void g(vj3 vj3Var, String str) {
        y45.j(vj3Var, "runtime");
        y45.j(str, "path");
        e(vj3Var, str, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((RuntimeTree.a) obj);
                return zfb.a;
            }

            public final void invoke(RuntimeTree.a aVar) {
                y45.j(aVar, "it");
                this.this$0.a.remove(aVar.c());
                this.this$0.b.remove(aVar.b());
                if (aVar.c().g() instanceof rnb) {
                    return;
                }
                aVar.c().a();
            }
        });
    }

    public final void h(vj3 vj3Var, vj3 vj3Var2, String str) {
        a aVar;
        List listA;
        y45.j(vj3Var, "runtime");
        y45.j(str, "path");
        a aVar2 = new a(vj3Var, str, null, 4, null);
        this.b.put(str, aVar2);
        this.a.put(vj3Var, aVar2);
        if (vj3Var2 == null || (aVar = (a) this.a.get(vj3Var2)) == null || (listA = aVar.a()) == null) {
            return;
        }
        listA.add(aVar2);
    }

    public static final class a {
        public final vj3 a;
        public final String b;
        public final List c;

        public a(vj3 vj3Var, String str, List list) {
            y45.j(vj3Var, "runtime");
            y45.j(str, "path");
            y45.j(list, "children");
            this.a = vj3Var;
            this.b = str;
            this.c = list;
        }

        public final List a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final vj3 c() {
            return this.a;
        }

        public a(vj3 vj3Var, String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(vj3Var, str, (i & 4) != 0 ? new ArrayList() : list);
        }
    }
}

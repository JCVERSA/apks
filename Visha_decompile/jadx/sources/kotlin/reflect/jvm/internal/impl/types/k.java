package kotlin.reflect.jvm.internal.impl.types;

import defpackage.eh5;
import defpackage.hcb;
import defpackage.i81;
import defpackage.lz4;
import defpackage.mcb;
import defpackage.sbb;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class k extends l {
    public static final a c = new a(null);

    public static final class a {

        public static final class C0411a extends k {
            public final Map d;
            public final boolean e;

            public C0411a(Map map, boolean z) {
                this.d = map;
                this.e = z;
            }

            @Override
            public boolean a() {
                return this.e;
            }

            @Override
            public boolean f() {
                return this.d.isEmpty();
            }

            @Override
            public mcb k(sbb sbbVar) {
                y45.j(sbbVar, "key");
                return (mcb) this.d.get(sbbVar);
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static k e(a aVar, Map map, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.d(map, z);
        }

        public final l a(eh5 eh5Var) {
            y45.j(eh5Var, "kotlinType");
            return b(eh5Var.I0(), eh5Var.G0());
        }

        public final l b(sbb sbbVar, List list) {
            y45.j(sbbVar, "typeConstructor");
            y45.j(list, "arguments");
            List parameters = sbbVar.getParameters();
            y45.i(parameters, "typeConstructor.parameters");
            hcb hcbVar = (hcb) i81.C0(parameters);
            if (hcbVar == null || !hcbVar.A()) {
                return new lz4(parameters, list);
            }
            List parameters2 = sbbVar.getParameters();
            y45.i(parameters2, "typeConstructor.parameters");
            List list2 = parameters2;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((hcb) it.next()).m());
            }
            return e(this, kotlin.collections.a.y(i81.l1(arrayList, list)), false, 2, null);
        }

        public final k c(Map map) {
            y45.j(map, "map");
            return e(this, map, false, 2, null);
        }

        public final k d(Map map, boolean z) {
            y45.j(map, "map");
            return new C0411a(map, z);
        }

        public a() {
        }
    }

    public static final l i(sbb sbbVar, List list) {
        return c.b(sbbVar, list);
    }

    public static final k j(Map map) {
        return c.c(map);
    }

    @Override
    public mcb e(eh5 eh5Var) {
        y45.j(eh5Var, "key");
        return k(eh5Var.I0());
    }

    public abstract mcb k(sbb sbbVar);
}

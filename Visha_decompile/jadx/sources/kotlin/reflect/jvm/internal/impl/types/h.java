package kotlin.reflect.jvm.internal.impl.types;

import defpackage.ebb;
import defpackage.hcb;
import defpackage.i81;
import defpackage.mcb;
import defpackage.px0;
import defpackage.sbb;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class h {
    public static final a e = new a(null);
    public final h a;
    public final ebb b;
    public final List c;
    public final Map d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a(h hVar, ebb ebbVar, List list) {
            y45.j(ebbVar, "typeAliasDescriptor");
            y45.j(list, "arguments");
            List parameters = ebbVar.m().getParameters();
            y45.i(parameters, "typeAliasDescriptor.typeConstructor.parameters");
            List list2 = parameters;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((hcb) it.next()).a());
            }
            return new h(hVar, ebbVar, list, kotlin.collections.a.y(i81.l1(arrayList, list)), null);
        }

        public a() {
        }
    }

    public h(h hVar, ebb ebbVar, List list, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(hVar, ebbVar, list, map);
    }

    public final List a() {
        return this.c;
    }

    public final ebb b() {
        return this.b;
    }

    public final mcb c(sbb sbbVar) {
        y45.j(sbbVar, "constructor");
        px0 px0VarC = sbbVar.c();
        if (px0VarC instanceof hcb) {
            return (mcb) this.d.get(px0VarC);
        }
        return null;
    }

    public final boolean d(ebb ebbVar) {
        y45.j(ebbVar, "descriptor");
        if (!y45.e(this.b, ebbVar)) {
            h hVar = this.a;
            if (!(hVar != null ? hVar.d(ebbVar) : false)) {
                return false;
            }
        }
        return true;
    }

    public h(h hVar, ebb ebbVar, List list, Map map) {
        this.a = hVar;
        this.b = ebbVar;
        this.c = list;
        this.d = map;
    }
}

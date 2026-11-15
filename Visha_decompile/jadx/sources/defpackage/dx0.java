package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.serialization.descriptors.a;

public final class dx0 {
    public final String a;
    public List b;
    public final List c;
    public final Set d;
    public final List e;
    public final List f;
    public final List g;

    public dx0(String str) {
        y45.j(str, "serialName");
        this.a = str;
        this.b = y71.k();
        this.c = new ArrayList();
        this.d = new HashSet();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = new ArrayList();
    }

    public static void b(dx0 dx0Var, String str, a aVar, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            list = y71.k();
        }
        if ((i & 8) != 0) {
            z = false;
        }
        dx0Var.a(str, aVar, list, z);
    }

    public final void a(String str, a aVar, List list, boolean z) {
        y45.j(str, "elementName");
        y45.j(aVar, "descriptor");
        y45.j(list, "annotations");
        if (this.d.add(str)) {
            this.c.add(str);
            this.e.add(aVar);
            this.f.add(list);
            this.g.add(Boolean.valueOf(z));
            return;
        }
        throw new IllegalArgumentException(("Element with name '" + str + "' is already registered in " + this.a).toString());
    }

    public final List c() {
        return this.b;
    }

    public final List d() {
        return this.f;
    }

    public final List e() {
        return this.e;
    }

    public final List f() {
        return this.c;
    }

    public final List g() {
        return this.g;
    }

    public final void h(List list) {
        y45.j(list, "<set-?>");
        this.b = list;
    }
}

package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class pd1 implements i8a {
    public final List b;

    public pd1(List list) {
        y45.j(list, "inner");
        this.b = list;
    }

    @Override
    public List a(gj5 gj5Var, qw0 qw0Var) {
        y45.j(gj5Var, "_context_receiver_0");
        y45.j(qw0Var, "thisDescriptor");
        List list = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d81.C(arrayList, ((i8a) it.next()).a(gj5Var, qw0Var));
        }
        return arrayList;
    }

    @Override
    public void b(gj5 gj5Var, qw0 qw0Var, List list) {
        y45.j(gj5Var, "_context_receiver_0");
        y45.j(qw0Var, "thisDescriptor");
        y45.j(list, "result");
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((i8a) it.next()).b(gj5Var, qw0Var, list);
        }
    }

    @Override
    public List c(gj5 gj5Var, qw0 qw0Var) {
        y45.j(gj5Var, "_context_receiver_0");
        y45.j(qw0Var, "thisDescriptor");
        List list = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d81.C(arrayList, ((i8a) it.next()).c(gj5Var, qw0Var));
        }
        return arrayList;
    }

    @Override
    public void d(gj5 gj5Var, qw0 qw0Var, by6 by6Var, Collection collection) {
        y45.j(gj5Var, "_context_receiver_0");
        y45.j(qw0Var, "thisDescriptor");
        y45.j(by6Var, "name");
        y45.j(collection, "result");
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((i8a) it.next()).d(gj5Var, qw0Var, by6Var, collection);
        }
    }

    @Override
    public void e(gj5 gj5Var, qw0 qw0Var, by6 by6Var, Collection collection) {
        y45.j(gj5Var, "_context_receiver_0");
        y45.j(qw0Var, "thisDescriptor");
        y45.j(by6Var, "name");
        y45.j(collection, "result");
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((i8a) it.next()).e(gj5Var, qw0Var, by6Var, collection);
        }
    }

    @Override
    public void f(gj5 gj5Var, qw0 qw0Var, by6 by6Var, List list) {
        y45.j(gj5Var, "_context_receiver_0");
        y45.j(qw0Var, "thisDescriptor");
        y45.j(by6Var, "name");
        y45.j(list, "result");
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((i8a) it.next()).f(gj5Var, qw0Var, by6Var, list);
        }
    }

    @Override
    public List g(gj5 gj5Var, qw0 qw0Var) {
        y45.j(gj5Var, "_context_receiver_0");
        y45.j(qw0Var, "thisDescriptor");
        List list = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d81.C(arrayList, ((i8a) it.next()).g(gj5Var, qw0Var));
        }
        return arrayList;
    }
}

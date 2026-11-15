package defpackage;

import java.util.List;
import java.util.Set;

public final class pq6 implements oq6 {
    public final List a;
    public final Set b;
    public final List c;
    public final Set d;

    public pq6(List list, Set set, List list2, Set set2) {
        y45.j(list, "allDependencies");
        y45.j(set, "modulesWhoseInternalsAreVisible");
        y45.j(list2, "directExpectedByDependencies");
        y45.j(set2, "allExpectedByDependencies");
        this.a = list;
        this.b = set;
        this.c = list2;
        this.d = set2;
    }

    @Override
    public List a() {
        return this.c;
    }

    @Override
    public Set b() {
        return this.b;
    }

    @Override
    public List c() {
        return this.a;
    }
}

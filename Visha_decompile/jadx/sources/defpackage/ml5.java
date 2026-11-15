package defpackage;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlinx.serialization.descriptors.a;

public final class ml5 extends q71 {
    public final a b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ml5(ef5 ef5Var) {
        super(ef5Var);
        y45.j(ef5Var, "eSerializer");
        this.b = new ll5(ef5Var.getDescriptor());
    }

    @Override
    public a getDescriptor() {
        return this.b;
    }

    @Override
    public LinkedHashSet a() {
        return new LinkedHashSet();
    }

    @Override
    public int b(LinkedHashSet linkedHashSet) {
        y45.j(linkedHashSet, "<this>");
        return linkedHashSet.size();
    }

    @Override
    public void c(LinkedHashSet linkedHashSet, int i) {
        y45.j(linkedHashSet, "<this>");
    }

    @Override
    public void n(LinkedHashSet linkedHashSet, int i, Object obj) {
        y45.j(linkedHashSet, "<this>");
        linkedHashSet.add(obj);
    }

    @Override
    public LinkedHashSet k(Set set) {
        y45.j(set, "<this>");
        LinkedHashSet linkedHashSet = set instanceof LinkedHashSet ? (LinkedHashSet) set : null;
        return linkedHashSet == null ? new LinkedHashSet(set) : linkedHashSet;
    }

    @Override
    public Set l(LinkedHashSet linkedHashSet) {
        y45.j(linkedHashSet, "<this>");
        return linkedHashSet;
    }
}

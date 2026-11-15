package defpackage;

import java.util.HashSet;
import java.util.Set;
import kotlinx.serialization.descriptors.a;

public final class jo4 extends q71 {
    public final a b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jo4(ef5 ef5Var) {
        super(ef5Var);
        y45.j(ef5Var, "eSerializer");
        this.b = new io4(ef5Var.getDescriptor());
    }

    @Override
    public a getDescriptor() {
        return this.b;
    }

    @Override
    public HashSet a() {
        return new HashSet();
    }

    @Override
    public int b(HashSet hashSet) {
        y45.j(hashSet, "<this>");
        return hashSet.size();
    }

    @Override
    public void c(HashSet hashSet, int i) {
        y45.j(hashSet, "<this>");
    }

    @Override
    public void n(HashSet hashSet, int i, Object obj) {
        y45.j(hashSet, "<this>");
        hashSet.add(obj);
    }

    @Override
    public HashSet k(Set set) {
        y45.j(set, "<this>");
        HashSet hashSet = set instanceof HashSet ? (HashSet) set : null;
        return hashSet == null ? new HashSet(set) : hashSet;
    }

    @Override
    public Set l(HashSet hashSet) {
        y45.j(hashSet, "<this>");
        return hashSet;
    }
}

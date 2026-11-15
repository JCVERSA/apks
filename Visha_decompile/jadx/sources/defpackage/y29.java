package defpackage;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public abstract class y29 {
    public static final Collection a(Collection collection, Collection collection2) {
        y45.j(collection2, "collection");
        if (collection2.isEmpty()) {
            return collection;
        }
        if (collection == null) {
            return collection2;
        }
        if (collection instanceof LinkedHashSet) {
            ((LinkedHashSet) collection).addAll(collection2);
            return collection;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        linkedHashSet.addAll(collection2);
        return linkedHashSet;
    }

    public static final bq9 b(Iterable iterable) {
        y45.j(iterable, "scopes");
        bq9 bq9Var = new bq9();
        for (Object obj : iterable) {
            MemberScope memberScope = (MemberScope) obj;
            if (memberScope != null && memberScope != MemberScope.a.b) {
                bq9Var.add(obj);
            }
        }
        return bq9Var;
    }
}

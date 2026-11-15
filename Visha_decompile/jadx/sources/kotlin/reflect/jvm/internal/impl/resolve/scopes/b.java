package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.d81;
import defpackage.y45;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class b {
    public static final Set a(Iterable iterable) {
        y45.j(iterable, "<this>");
        HashSet hashSet = new HashSet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Set setE = ((MemberScope) it.next()).e();
            if (setE == null) {
                return null;
            }
            d81.C(hashSet, setE);
        }
        return hashSet;
    }
}

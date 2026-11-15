package defpackage;

import com.google.android.gms.internal.ads.k6;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

public abstract class s5i {
    public static int a(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public static q5i b(Set set, Set set2) {
        v2i.c(set, "set1");
        v2i.c(set2, "set2");
        return new m5i(set, set2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Set c(Set set, w2i w2iVar) {
        if (!(set instanceof SortedSet)) {
            if (!(set instanceof n5i)) {
                set.getClass();
                return new n5i(set, w2iVar);
            }
            n5i n5iVar = (n5i) set;
            return new n5i((Set) n5iVar.b, k6.a(n5iVar.c, w2iVar));
        }
        SortedSet sortedSet = (SortedSet) set;
        if (!(sortedSet instanceof n5i)) {
            sortedSet.getClass();
            return new o5i(sortedSet, w2iVar);
        }
        n5i n5iVar2 = (n5i) sortedSet;
        return new o5i((SortedSet) n5iVar2.b, k6.a(n5iVar2.c, w2iVar));
    }

    public static boolean d(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean e(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof j5i) {
            collection = ((j5i) collection).zza();
        }
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            return f(set, collection.iterator());
        }
        Iterator it = set.iterator();
        collection.getClass();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean f(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }
}

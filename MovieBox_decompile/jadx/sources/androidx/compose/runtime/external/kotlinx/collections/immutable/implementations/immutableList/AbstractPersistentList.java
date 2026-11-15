package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.collections.AbstractList;
import kotlin.jvm.functions.Function1;

public abstract class AbstractPersistentList extends AbstractList implements t.f {
    @Override
    public t.f addAll(Collection collection) {
        t.f.a aVarBuilder = builder();
        aVarBuilder.addAll(collection);
        return aVarBuilder.build();
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public t.d subList(int i10, int i11) {
        return t.c.a(this, i10, i11);
    }

    @Override
    public Iterator iterator() {
        return listIterator();
    }

    @Override
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    public t.f remove(Object obj) {
        int iIndexOf = indexOf(obj);
        return iIndexOf != -1 ? d(iIndexOf) : this;
    }

    @Override
    public t.f removeAll(final Collection collection) {
        return k(new Function1<Object, Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(collection.contains(obj));
            }
        });
    }
}

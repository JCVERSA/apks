package defpackage;

import freemarker.ext.util.IdentityHashMap;
import java.util.AbstractCollection;
import java.util.Iterator;

public class px4 extends AbstractCollection {
    public final IdentityHashMap b;

    public px4(IdentityHashMap identityHashMap) {
        this.b = identityHashMap;
    }

    @Override
    public void clear() {
        this.b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.b.containsValue(obj);
    }

    @Override
    public Iterator iterator() {
        return this.b.getHashIterator(1);
    }

    @Override
    public int size() {
        return this.b.count;
    }
}

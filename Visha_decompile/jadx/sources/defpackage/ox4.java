package defpackage;

import freemarker.ext.util.IdentityHashMap;
import java.util.AbstractSet;
import java.util.Iterator;

public class ox4 extends AbstractSet {
    public final IdentityHashMap b;

    public ox4(IdentityHashMap identityHashMap) {
        this.b = identityHashMap;
    }

    @Override
    public void clear() {
        this.b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override
    public Iterator iterator() {
        return this.b.getHashIterator(0);
    }

    @Override
    public boolean remove(Object obj) {
        int i = this.b.count;
        this.b.remove(obj);
        return this.b.count != i;
    }

    @Override
    public int size() {
        return this.b.count;
    }
}

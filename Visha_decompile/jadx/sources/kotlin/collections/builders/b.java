package kotlin.collections.builders;

import defpackage.m3;
import defpackage.y45;
import defpackage.ze5;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class b extends m3 implements Set, ze5 {
    public final MapBuilder b;

    public b(MapBuilder mapBuilder) {
        y45.j(mapBuilder, "backing");
        this.b = mapBuilder;
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection collection) {
        y45.j(collection, "elements");
        throw new UnsupportedOperationException();
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
    public int getSize() {
        return this.b.size();
    }

    @Override
    public boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return this.b.keysIterator$kotlin_stdlib();
    }

    @Override
    public boolean remove(Object obj) {
        return this.b.removeKey$kotlin_stdlib(obj);
    }

    @Override
    public boolean removeAll(Collection collection) {
        y45.j(collection, "elements");
        this.b.checkIsMutable$kotlin_stdlib();
        return super.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection collection) {
        y45.j(collection, "elements");
        this.b.checkIsMutable$kotlin_stdlib();
        return super.retainAll(collection);
    }
}

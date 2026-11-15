package kotlin.collections.builders;

import defpackage.j3;
import defpackage.re5;
import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;

public final class c extends j3 implements Collection, re5 {
    public final MapBuilder b;

    public c(MapBuilder mapBuilder) {
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
    public int b() {
        return this.b.size();
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
    public boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return this.b.valuesIterator$kotlin_stdlib();
    }

    @Override
    public boolean remove(Object obj) {
        return this.b.removeValue$kotlin_stdlib(obj);
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

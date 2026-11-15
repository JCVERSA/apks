package kotlin.collections.builders;

import defpackage.h3;
import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class a extends h3 {
    public final MapBuilder b;

    public a(MapBuilder mapBuilder) {
        y45.j(mapBuilder, "backing");
        this.b = mapBuilder;
    }

    @Override
    public boolean addAll(Collection collection) {
        y45.j(collection, "elements");
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean c(Map.Entry entry) {
        y45.j(entry, "element");
        return this.b.containsEntry$kotlin_stdlib(entry);
    }

    @Override
    public void clear() {
        this.b.clear();
    }

    @Override
    public boolean containsAll(Collection collection) {
        y45.j(collection, "elements");
        return this.b.containsAllEntries$kotlin_stdlib(collection);
    }

    @Override
    public boolean f(Map.Entry entry) {
        y45.j(entry, "element");
        return this.b.removeEntry$kotlin_stdlib(entry);
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
        return this.b.entriesIterator$kotlin_stdlib();
    }

    @Override
    public boolean add(Map.Entry entry) {
        y45.j(entry, "element");
        throw new UnsupportedOperationException();
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

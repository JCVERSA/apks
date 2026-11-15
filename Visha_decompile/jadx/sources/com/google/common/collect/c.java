package com.google.common.collect;

import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;

public abstract class c extends Maps.k implements NavigableMap {

    public final class b extends Maps.h {
        public b() {
        }

        @Override
        public Iterator k() {
            return c.this.b();
        }

        @Override
        public NavigableMap l() {
            return c.this;
        }
    }

    public abstract Iterator b();

    @Override
    public Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override
    public Object ceilingKey(Object obj) {
        return Maps.m(ceilingEntry(obj));
    }

    @Override
    public NavigableSet descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    @Override
    public NavigableMap descendingMap() {
        return new b();
    }

    @Override
    public Map.Entry firstEntry() {
        return (Map.Entry) Iterators.o(a(), null);
    }

    @Override
    public Object firstKey() {
        Map.Entry entryFirstEntry = firstEntry();
        if (entryFirstEntry != null) {
            return entryFirstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override
    public Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override
    public Object floorKey(Object obj) {
        return Maps.m(floorEntry(obj));
    }

    @Override
    public SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override
    public Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override
    public Object higherKey(Object obj) {
        return Maps.m(higherEntry(obj));
    }

    @Override
    public Set keySet() {
        return navigableKeySet();
    }

    @Override
    public Map.Entry lastEntry() {
        return (Map.Entry) Iterators.o(b(), null);
    }

    @Override
    public Object lastKey() {
        Map.Entry entryLastEntry = lastEntry();
        if (entryLastEntry != null) {
            return entryLastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override
    public Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override
    public Object lowerKey(Object obj) {
        return Maps.m(lowerEntry(obj));
    }

    @Override
    public NavigableSet navigableKeySet() {
        return new Maps.m(this);
    }

    @Override
    public Map.Entry pollFirstEntry() {
        return (Map.Entry) Iterators.t(a());
    }

    @Override
    public Map.Entry pollLastEntry() {
        return (Map.Entry) Iterators.t(b());
    }

    @Override
    public SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override
    public SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }
}

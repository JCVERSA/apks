package com.google.common.collect;

import defpackage.at6;
import defpackage.fm5;
import defpackage.i3;
import defpackage.xd8;
import defpackage.z6b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

public class LinkedListMultimap<K, V> extends com.google.common.collect.a implements fm5, Serializable {
    private static final long serialVersionUID = 0;
    private transient g head;
    private transient Map<K, f> keyToKeyList;
    private transient int modCount;
    private transient int size;
    private transient g tail;

    public class a extends AbstractSequentialList {
        public final Object b;
        public final LinkedListMultimap c;

        public a(LinkedListMultimap linkedListMultimap, Object obj) {
            this.b = obj;
            this.c = linkedListMultimap;
        }

        @Override
        public ListIterator listIterator(int i) {
            return new i(this.b, i);
        }

        @Override
        public int size() {
            f fVar = (f) this.c.keyToKeyList.get(this.b);
            if (fVar == null) {
                return 0;
            }
            return fVar.c;
        }
    }

    public class b extends AbstractSequentialList {
        public b() {
        }

        @Override
        public ListIterator listIterator(int i) {
            return new h(i);
        }

        @Override
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    public class c extends Sets.d {
        public c() {
        }

        @Override
        public boolean contains(Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override
        public Iterator iterator() {
            return new e(LinkedListMultimap.this, null);
        }

        @Override
        public boolean remove(Object obj) {
            return !LinkedListMultimap.this.removeAll(obj).isEmpty();
        }

        @Override
        public int size() {
            return LinkedListMultimap.this.keyToKeyList.size();
        }
    }

    public class d extends AbstractSequentialList {

        public class a extends z6b {
            public final h c;
            public final d d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, ListIterator listIterator, h hVar) {
                super(listIterator);
                this.c = hVar;
                this.d = dVar;
            }

            @Override
            public Object a(Map.Entry entry) {
                return entry.getValue();
            }

            @Override
            public void set(Object obj) {
                this.c.f(obj);
            }
        }

        public d() {
        }

        @Override
        public ListIterator listIterator(int i) {
            h hVar = new h(i);
            return new a(this, hVar, hVar);
        }

        @Override
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    public static class f {
        public g a;
        public g b;
        public int c;

        public f(g gVar) {
            this.a = gVar;
            this.b = gVar;
            gVar.g = null;
            gVar.f = null;
            this.c = 1;
        }
    }

    public static final class g extends i3 {
        public final Object b;
        public Object c;
        public g d;
        public g e;
        public g f;
        public g g;

        public g(Object obj, Object obj2) {
            this.b = obj;
            this.c = obj2;
        }

        @Override
        public Object getKey() {
            return this.b;
        }

        @Override
        public Object getValue() {
            return this.c;
        }

        @Override
        public Object setValue(Object obj) {
            Object obj2 = this.c;
            this.c = obj;
            return obj2;
        }
    }

    public class h implements ListIterator {
        public int b;
        public g c;
        public g d;
        public g e;
        public int f;

        public h(int i) {
            this.f = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            xd8.r(i, size);
            if (i < size / 2) {
                this.c = LinkedListMultimap.this.head;
                while (true) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i2;
                }
            } else {
                this.e = LinkedListMultimap.this.tail;
                this.b = size;
                while (true) {
                    int i3 = i + 1;
                    if (i >= size) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            }
            this.d = null;
        }

        @Override
        public void add(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        public final void b() {
            if (LinkedListMultimap.this.modCount != this.f) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public g next() {
            b();
            g gVar = this.c;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.d = gVar;
            this.e = gVar;
            this.c = gVar.d;
            this.b++;
            return gVar;
        }

        @Override
        public g previous() {
            b();
            g gVar = this.e;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.d = gVar;
            this.c = gVar;
            this.e = gVar.e;
            this.b--;
            return gVar;
        }

        @Override
        public void set(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        public void f(Object obj) {
            xd8.u(this.d != null);
            this.d.c = obj;
        }

        @Override
        public boolean hasNext() {
            b();
            return this.c != null;
        }

        @Override
        public boolean hasPrevious() {
            b();
            return this.e != null;
        }

        @Override
        public int nextIndex() {
            return this.b;
        }

        @Override
        public int previousIndex() {
            return this.b - 1;
        }

        @Override
        public void remove() {
            b();
            xd8.v(this.d != null, "no calls to next() since the last call to remove()");
            g gVar = this.d;
            if (gVar != this.c) {
                this.e = gVar.e;
                this.b--;
            } else {
                this.c = gVar.d;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.d = null;
            this.f = LinkedListMultimap.this.modCount;
        }
    }

    public LinkedListMultimap() {
        this(12);
    }

    public g addNode(K k, V v, g gVar) {
        g gVar2 = new g(k, v);
        if (this.head == null) {
            this.tail = gVar2;
            this.head = gVar2;
            this.keyToKeyList.put(k, new f(gVar2));
            this.modCount++;
        } else if (gVar == null) {
            g gVar3 = this.tail;
            Objects.requireNonNull(gVar3);
            gVar3.d = gVar2;
            gVar2.e = this.tail;
            this.tail = gVar2;
            f fVar = this.keyToKeyList.get(k);
            if (fVar == null) {
                this.keyToKeyList.put(k, new f(gVar2));
                this.modCount++;
            } else {
                fVar.c++;
                g gVar4 = fVar.b;
                gVar4.f = gVar2;
                gVar2.g = gVar4;
                fVar.b = gVar2;
            }
        } else {
            f fVar2 = this.keyToKeyList.get(k);
            Objects.requireNonNull(fVar2);
            fVar2.c++;
            gVar2.e = gVar.e;
            gVar2.g = gVar.g;
            gVar2.d = gVar;
            gVar2.f = gVar;
            g gVar5 = gVar.g;
            if (gVar5 == null) {
                fVar2.a = gVar2;
            } else {
                gVar5.f = gVar2;
            }
            g gVar6 = gVar.e;
            if (gVar6 == null) {
                this.head = gVar2;
            } else {
                gVar6.d = gVar2;
            }
            gVar.e = gVar2;
            gVar.g = gVar2;
        }
        this.size++;
        return gVar2;
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    private List<V> getCopy(K k) {
        return Collections.unmodifiableList(Lists.k(new i(k)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.keyToKeyList = CompactLinkedHashMap.create();
        int i2 = objectInputStream.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    public void removeAllNodes(K k) {
        Iterators.d(new i(k));
    }

    public void removeNode(g gVar) {
        g gVar2 = gVar.e;
        if (gVar2 != null) {
            gVar2.d = gVar.d;
        } else {
            this.head = gVar.d;
        }
        g gVar3 = gVar.d;
        if (gVar3 != null) {
            gVar3.e = gVar2;
        } else {
            this.tail = gVar2;
        }
        if (gVar.g == null && gVar.f == null) {
            f fVarRemove = this.keyToKeyList.remove(gVar.b);
            Objects.requireNonNull(fVarRemove);
            fVarRemove.c = 0;
            this.modCount++;
        } else {
            f fVar = this.keyToKeyList.get(gVar.b);
            Objects.requireNonNull(fVar);
            fVar.c--;
            g gVar4 = gVar.g;
            if (gVar4 == null) {
                g gVar5 = gVar.f;
                Objects.requireNonNull(gVar5);
                fVar.a = gVar5;
            } else {
                gVar4.f = gVar.f;
            }
            g gVar6 = gVar.f;
            if (gVar6 == null) {
                g gVar7 = gVar.g;
                Objects.requireNonNull(gVar7);
                fVar.b = gVar7;
            } else {
                gVar6.g = gVar.g;
            }
        }
        this.size--;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override
    public Map asMap() {
        return super.asMap();
    }

    @Override
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyToKeyList.clear();
        this.size = 0;
        this.modCount++;
    }

    @Override
    public boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.keyToKeyList.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override
    public Map<K, Collection<V>> createAsMap() {
        return new Multimaps.a(this);
    }

    @Override
    public Set<K> createKeySet() {
        return new c();
    }

    @Override
    public j createKeys() {
        return new Multimaps.c(this);
    }

    @Override
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override
    public Set keySet() {
        return super.keySet();
    }

    @Override
    public j keys() {
        return super.keys();
    }

    @Override
    public boolean put(K k, V v) {
        addNode(k, v, null);
        return true;
    }

    @Override
    public boolean putAll(at6 at6Var) {
        return super.putAll(at6Var);
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public String toString() {
        return super.toString();
    }

    private LinkedListMultimap(int i2) {
        this.keyToKeyList = l.d(i2);
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i2) {
        return new LinkedListMultimap<>(i2);
    }

    @Override
    public List<Map.Entry<K, V>> createEntries() {
        return new b();
    }

    @Override
    public List<V> createValues() {
        return new d();
    }

    @Override
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override
    public List<V> get(K k) {
        return new a(this, k);
    }

    @Override
    public boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public List<V> removeAll(Object obj) {
        List<V> copy = getCopy(obj);
        removeAllNodes(obj);
        return copy;
    }

    public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
        List<V> copy = getCopy(k);
        i iVar = new i(k);
        Iterator<? extends V> it = iterable.iterator();
        while (iVar.hasNext() && it.hasNext()) {
            iVar.next();
            iVar.set(it.next());
        }
        while (iVar.hasNext()) {
            iVar.next();
            iVar.remove();
        }
        while (it.hasNext()) {
            iVar.add(it.next());
        }
        return copy;
    }

    @Override
    public List<V> values() {
        return (List) super.values();
    }

    public static <K, V> LinkedListMultimap<K, V> create(at6 at6Var) {
        return new LinkedListMultimap<>(at6Var);
    }

    public class e implements Iterator {
        public final Set b;
        public g c;
        public g d;
        public int e;

        public e() {
            this.b = Sets.h(LinkedListMultimap.this.keySet().size());
            this.c = LinkedListMultimap.this.head;
            this.e = LinkedListMultimap.this.modCount;
        }

        public final void a() {
            if (LinkedListMultimap.this.modCount != this.e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public boolean hasNext() {
            a();
            return this.c != null;
        }

        @Override
        public Object next() {
            g gVar;
            a();
            g gVar2 = this.c;
            if (gVar2 == null) {
                throw new NoSuchElementException();
            }
            this.d = gVar2;
            this.b.add(gVar2.b);
            do {
                gVar = this.c.d;
                this.c = gVar;
                if (gVar == null) {
                    break;
                }
            } while (!this.b.add(gVar.b));
            return this.d.b;
        }

        @Override
        public void remove() {
            a();
            xd8.v(this.d != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.removeAllNodes(this.d.b);
            this.d = null;
            this.e = LinkedListMultimap.this.modCount;
        }

        public e(LinkedListMultimap linkedListMultimap, a aVar) {
            this();
        }
    }

    public class i implements ListIterator {
        public final Object b;
        public int c;
        public g d;
        public g e;
        public g f;

        public i(Object obj) {
            this.b = obj;
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(obj);
            this.d = fVar == null ? null : fVar.a;
        }

        @Override
        public void add(Object obj) {
            this.f = LinkedListMultimap.this.addNode(this.b, obj, this.d);
            this.c++;
            this.e = null;
        }

        @Override
        public boolean hasNext() {
            return this.d != null;
        }

        @Override
        public boolean hasPrevious() {
            return this.f != null;
        }

        @Override
        public Object next() {
            g gVar = this.d;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.e = gVar;
            this.f = gVar;
            this.d = gVar.f;
            this.c++;
            return gVar.c;
        }

        @Override
        public int nextIndex() {
            return this.c;
        }

        @Override
        public Object previous() {
            g gVar = this.f;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.e = gVar;
            this.d = gVar;
            this.f = gVar.g;
            this.c--;
            return gVar.c;
        }

        @Override
        public int previousIndex() {
            return this.c - 1;
        }

        @Override
        public void remove() {
            xd8.v(this.e != null, "no calls to next() since the last call to remove()");
            g gVar = this.e;
            if (gVar != this.d) {
                this.f = gVar.g;
                this.c--;
            } else {
                this.d = gVar.f;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.e = null;
        }

        @Override
        public void set(Object obj) {
            xd8.u(this.e != null);
            this.e.c = obj;
        }

        public i(Object obj, int i) {
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(obj);
            int i2 = fVar == null ? 0 : fVar.c;
            xd8.r(i, i2);
            if (i >= i2 / 2) {
                this.f = fVar == null ? null : fVar.b;
                this.c = i2;
                while (true) {
                    int i3 = i + 1;
                    if (i >= i2) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            } else {
                this.d = fVar == null ? null : fVar.a;
                while (true) {
                    int i4 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i4;
                }
            }
            this.b = obj;
            this.e = null;
        }
    }

    private LinkedListMultimap(at6 at6Var) {
        this(at6Var.keySet().size());
        putAll(at6Var);
    }
}

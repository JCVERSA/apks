package com.google.common.collect;

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

public class LinkedListMultimap<K, V> extends com.google.common.collect.c implements i3, Serializable {
    private static final long serialVersionUID = 0;
    private transient g head;
    private transient Map<K, f> keyToKeyList;
    private transient int modCount;
    private transient int size;
    private transient g tail;

    class a extends AbstractSequentialList {

        final Object f29680a;

        final LinkedListMultimap f29681b;

        a(LinkedListMultimap linkedListMultimap, Object obj) {
            this.f29680a = obj;
            this.f29681b = linkedListMultimap;
        }

        @Override
        public ListIterator listIterator(int i10) {
            return new i(this.f29680a, i10);
        }

        @Override
        public int size() {
            f fVar = (f) this.f29681b.keyToKeyList.get(this.f29680a);
            if (fVar == null) {
                return 0;
            }
            return fVar.f29694c;
        }
    }

    class b extends AbstractSequentialList {
        b() {
        }

        @Override
        public ListIterator listIterator(int i10) {
            return new h(i10);
        }

        @Override
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    class c extends Sets.e {
        c() {
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

    class d extends AbstractSequentialList {

        class a extends p4 {

            final h f29685b;

            final d f29686c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(d dVar, ListIterator listIterator, h hVar) {
                super(listIterator);
                this.f29685b = hVar;
                this.f29686c = dVar;
            }

            @Override
            public Object a(Map.Entry entry) {
                return entry.getValue();
            }

            @Override
            public void set(Object obj) {
                this.f29685b.f(obj);
            }
        }

        d() {
        }

        @Override
        public ListIterator listIterator(int i10) {
            h hVar = new h(i10);
            return new a(this, hVar, hVar);
        }

        @Override
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    private static class f {

        g f29692a;

        g f29693b;

        int f29694c;

        f(g gVar) {
            this.f29692a = gVar;
            this.f29693b = gVar;
            gVar.f29700f = null;
            gVar.f29699e = null;
            this.f29694c = 1;
        }
    }

    static final class g extends com.google.common.collect.b {

        final Object f29695a;

        Object f29696b;

        g f29697c;

        g f29698d;

        g f29699e;

        g f29700f;

        g(Object obj, Object obj2) {
            this.f29695a = obj;
            this.f29696b = obj2;
        }

        @Override
        public Object getKey() {
            return this.f29695a;
        }

        @Override
        public Object getValue() {
            return this.f29696b;
        }

        @Override
        public Object setValue(Object obj) {
            Object obj2 = this.f29696b;
            this.f29696b = obj;
            return obj2;
        }
    }

    private class h implements ListIterator {

        int f29701a;

        g f29702b;

        g f29703c;

        g f29704d;

        int f29705e;

        h(int i10) {
            this.f29705e = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            com.google.common.base.m.r(i10, size);
            if (i10 < size / 2) {
                this.f29702b = LinkedListMultimap.this.head;
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    next();
                    i10 = i11;
                }
            } else {
                this.f29704d = LinkedListMultimap.this.tail;
                this.f29701a = size;
                while (true) {
                    int i12 = i10 + 1;
                    if (i10 >= size) {
                        break;
                    }
                    previous();
                    i10 = i12;
                }
            }
            this.f29703c = null;
        }

        private void b() {
            if (LinkedListMultimap.this.modCount != this.f29705e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public void add(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public g next() {
            b();
            g gVar = this.f29702b;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f29703c = gVar;
            this.f29704d = gVar;
            this.f29702b = gVar.f29697c;
            this.f29701a++;
            return gVar;
        }

        @Override
        public g previous() {
            b();
            g gVar = this.f29704d;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f29703c = gVar;
            this.f29702b = gVar;
            this.f29704d = gVar.f29698d;
            this.f29701a--;
            return gVar;
        }

        @Override
        public void set(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        void f(Object obj) {
            com.google.common.base.m.u(this.f29703c != null);
            this.f29703c.f29696b = obj;
        }

        @Override
        public boolean hasNext() {
            b();
            return this.f29702b != null;
        }

        @Override
        public boolean hasPrevious() {
            b();
            return this.f29704d != null;
        }

        @Override
        public int nextIndex() {
            return this.f29701a;
        }

        @Override
        public int previousIndex() {
            return this.f29701a - 1;
        }

        @Override
        public void remove() {
            b();
            com.google.common.base.m.v(this.f29703c != null, "no calls to next() since the last call to remove()");
            g gVar = this.f29703c;
            if (gVar != this.f29702b) {
                this.f29704d = gVar.f29698d;
                this.f29701a--;
            } else {
                this.f29702b = gVar.f29697c;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.f29703c = null;
            this.f29705e = LinkedListMultimap.this.modCount;
        }
    }

    LinkedListMultimap() {
        this(12);
    }

    public g addNode(K k10, V v10, g gVar) {
        g gVar2 = new g(k10, v10);
        if (this.head == null) {
            this.tail = gVar2;
            this.head = gVar2;
            this.keyToKeyList.put(k10, new f(gVar2));
            this.modCount++;
        } else if (gVar == null) {
            g gVar3 = this.tail;
            Objects.requireNonNull(gVar3);
            gVar3.f29697c = gVar2;
            gVar2.f29698d = this.tail;
            this.tail = gVar2;
            f fVar = this.keyToKeyList.get(k10);
            if (fVar == null) {
                this.keyToKeyList.put(k10, new f(gVar2));
                this.modCount++;
            } else {
                fVar.f29694c++;
                g gVar4 = fVar.f29693b;
                gVar4.f29699e = gVar2;
                gVar2.f29700f = gVar4;
                fVar.f29693b = gVar2;
            }
        } else {
            f fVar2 = this.keyToKeyList.get(k10);
            Objects.requireNonNull(fVar2);
            fVar2.f29694c++;
            gVar2.f29698d = gVar.f29698d;
            gVar2.f29700f = gVar.f29700f;
            gVar2.f29697c = gVar;
            gVar2.f29699e = gVar;
            g gVar5 = gVar.f29700f;
            if (gVar5 == null) {
                fVar2.f29692a = gVar2;
            } else {
                gVar5.f29699e = gVar2;
            }
            g gVar6 = gVar.f29698d;
            if (gVar6 == null) {
                this.head = gVar2;
            } else {
                gVar6.f29697c = gVar2;
            }
            gVar.f29698d = gVar2;
            gVar.f29700f = gVar2;
        }
        this.size++;
        return gVar2;
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    private List<V> getCopy(K k10) {
        return Collections.unmodifiableList(Lists.k(new i(k10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.keyToKeyList = CompactLinkedHashMap.create();
        int i10 = objectInputStream.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    public void removeAllNodes(K k10) {
        Iterators.d(new i(k10));
    }

    public void removeNode(g gVar) {
        g gVar2 = gVar.f29698d;
        if (gVar2 != null) {
            gVar2.f29697c = gVar.f29697c;
        } else {
            this.head = gVar.f29697c;
        }
        g gVar3 = gVar.f29697c;
        if (gVar3 != null) {
            gVar3.f29698d = gVar2;
        } else {
            this.tail = gVar2;
        }
        if (gVar.f29700f == null && gVar.f29699e == null) {
            f fVarRemove = this.keyToKeyList.remove(gVar.f29695a);
            Objects.requireNonNull(fVarRemove);
            fVarRemove.f29694c = 0;
            this.modCount++;
        } else {
            f fVar = this.keyToKeyList.get(gVar.f29695a);
            Objects.requireNonNull(fVar);
            fVar.f29694c--;
            g gVar4 = gVar.f29700f;
            if (gVar4 == null) {
                g gVar5 = gVar.f29699e;
                Objects.requireNonNull(gVar5);
                fVar.f29692a = gVar5;
            } else {
                gVar4.f29699e = gVar.f29699e;
            }
            g gVar6 = gVar.f29699e;
            if (gVar6 == null) {
                g gVar7 = gVar.f29700f;
                Objects.requireNonNull(gVar7);
                fVar.f29693b = gVar7;
            } else {
                gVar6.f29700f = gVar.f29700f;
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
    Map<K, Collection<V>> createAsMap() {
        return new Multimaps.a(this);
    }

    @Override
    Set<K> createKeySet() {
        return new c();
    }

    @Override
    l3 createKeys() {
        return new Multimaps.c(this);
    }

    @Override
    Iterator<Map.Entry<K, V>> entryIterator() {
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
    public l3 keys() {
        return super.keys();
    }

    @Override
    public boolean put(K k10, V v10) {
        addNode(k10, v10, null);
        return true;
    }

    @Override
    public boolean putAll(j3 j3Var) {
        return super.putAll(j3Var);
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

    private LinkedListMultimap(int i10) {
        this.keyToKeyList = r3.d(i10);
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i10) {
        return new LinkedListMultimap<>(i10);
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
    public List<V> get(K k10) {
        return new a(this, k10);
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

    public List<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        List<V> copy = getCopy(k10);
        i iVar = new i(k10);
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

    public static <K, V> LinkedListMultimap<K, V> create(j3 j3Var) {
        return new LinkedListMultimap<>(j3Var);
    }

    private class e implements Iterator {

        final Set f29687a;

        g f29688b;

        g f29689c;

        int f29690d;

        private e() {
            this.f29687a = Sets.g(LinkedListMultimap.this.keySet().size());
            this.f29688b = LinkedListMultimap.this.head;
            this.f29690d = LinkedListMultimap.this.modCount;
        }

        private void a() {
            if (LinkedListMultimap.this.modCount != this.f29690d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public boolean hasNext() {
            a();
            return this.f29688b != null;
        }

        @Override
        public Object next() {
            g gVar;
            a();
            g gVar2 = this.f29688b;
            if (gVar2 == null) {
                throw new NoSuchElementException();
            }
            this.f29689c = gVar2;
            this.f29687a.add(gVar2.f29695a);
            do {
                gVar = this.f29688b.f29697c;
                this.f29688b = gVar;
                if (gVar == null) {
                    break;
                }
            } while (!this.f29687a.add(gVar.f29695a));
            return this.f29689c.f29695a;
        }

        @Override
        public void remove() {
            a();
            com.google.common.base.m.v(this.f29689c != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.removeAllNodes(this.f29689c.f29695a);
            this.f29689c = null;
            this.f29690d = LinkedListMultimap.this.modCount;
        }

        e(LinkedListMultimap linkedListMultimap, a aVar) {
            this();
        }
    }

    private class i implements ListIterator {

        final Object f29707a;

        int f29708b;

        g f29709c;

        g f29710d;

        g f29711e;

        i(Object obj) {
            this.f29707a = obj;
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(obj);
            this.f29709c = fVar == null ? null : fVar.f29692a;
        }

        @Override
        public void add(Object obj) {
            this.f29711e = LinkedListMultimap.this.addNode(this.f29707a, obj, this.f29709c);
            this.f29708b++;
            this.f29710d = null;
        }

        @Override
        public boolean hasNext() {
            return this.f29709c != null;
        }

        @Override
        public boolean hasPrevious() {
            return this.f29711e != null;
        }

        @Override
        public Object next() {
            g gVar = this.f29709c;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f29710d = gVar;
            this.f29711e = gVar;
            this.f29709c = gVar.f29699e;
            this.f29708b++;
            return gVar.f29696b;
        }

        @Override
        public int nextIndex() {
            return this.f29708b;
        }

        @Override
        public Object previous() {
            g gVar = this.f29711e;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f29710d = gVar;
            this.f29709c = gVar;
            this.f29711e = gVar.f29700f;
            this.f29708b--;
            return gVar.f29696b;
        }

        @Override
        public int previousIndex() {
            return this.f29708b - 1;
        }

        @Override
        public void remove() {
            com.google.common.base.m.v(this.f29710d != null, "no calls to next() since the last call to remove()");
            g gVar = this.f29710d;
            if (gVar != this.f29709c) {
                this.f29711e = gVar.f29700f;
                this.f29708b--;
            } else {
                this.f29709c = gVar.f29699e;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.f29710d = null;
        }

        @Override
        public void set(Object obj) {
            com.google.common.base.m.u(this.f29710d != null);
            this.f29710d.f29696b = obj;
        }

        public i(Object obj, int i10) {
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(obj);
            int i11 = fVar == null ? 0 : fVar.f29694c;
            com.google.common.base.m.r(i10, i11);
            if (i10 >= i11 / 2) {
                this.f29711e = fVar == null ? null : fVar.f29693b;
                this.f29708b = i11;
                while (true) {
                    int i12 = i10 + 1;
                    if (i10 >= i11) {
                        break;
                    }
                    previous();
                    i10 = i12;
                }
            } else {
                this.f29709c = fVar == null ? null : fVar.f29692a;
                while (true) {
                    int i13 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    next();
                    i10 = i13;
                }
            }
            this.f29707a = obj;
            this.f29710d = null;
        }
    }

    private LinkedListMultimap(j3 j3Var) {
        this(j3Var.keySet().size());
        putAll(j3Var);
    }
}

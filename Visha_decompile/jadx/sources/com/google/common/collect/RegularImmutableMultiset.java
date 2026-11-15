package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;

class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    static final RegularImmutableMultiset<Object> EMPTY = new RegularImmutableMultiset<>(k.b());
    public final transient int b;
    public transient ImmutableSet c;
    final transient k contents;

    public final class ElementSet extends IndexedImmutableSet<E> {
        public ElementSet() {
        }

        @Override
        public boolean contains(Object obj) {
            return RegularImmutableMultiset.this.contains(obj);
        }

        @Override
        public E get(int i) {
            return (E) RegularImmutableMultiset.this.contents.i(i);
        }

        @Override
        public boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return RegularImmutableMultiset.this.contents.C();
        }

        @Override
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final int[] counts;
        final Object[] elements;

        public SerializedForm(j jVar) {
            int size = jVar.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i = 0;
            for (j.a aVar : jVar.entrySet()) {
                this.elements[i] = aVar.getElement();
                this.counts[i] = aVar.getCount();
                i++;
            }
        }

        public Object readResolve() {
            ImmutableMultiset.b bVar = new ImmutableMultiset.b(this.elements.length);
            int i = 0;
            while (true) {
                Object[] objArr = this.elements;
                if (i >= objArr.length) {
                    return bVar.e();
                }
                bVar.k(objArr[i], this.counts[i]);
                i++;
            }
        }
    }

    public RegularImmutableMultiset(k kVar) {
        this.contents = kVar;
        long jK = 0;
        for (int i = 0; i < kVar.C(); i++) {
            jK += (long) kVar.k(i);
        }
        this.b = Ints.n(jK);
    }

    @Override
    public int count(Object obj) {
        return this.contents.f(obj);
    }

    @Override
    public j.a getEntry(int i) {
        return this.contents.g(i);
    }

    @Override
    public boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.b;
    }

    @Override
    public Object writeReplace() {
        return new SerializedForm(this);
    }

    @Override
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.c;
        if (immutableSet != null) {
            return immutableSet;
        }
        ElementSet elementSet = new ElementSet();
        this.c = elementSet;
        return elementSet;
    }
}

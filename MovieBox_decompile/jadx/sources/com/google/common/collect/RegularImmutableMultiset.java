package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;

class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    static final RegularImmutableMultiset<Object> EMPTY = new RegularImmutableMultiset<>(o3.b());

    private final transient int f29820a;

    private transient ImmutableSet f29821b;
    final transient o3 contents;

    private final class ElementSet extends IndexedImmutableSet<E> {
        private ElementSet() {
        }

        @Override
        public boolean contains(Object obj) {
            return RegularImmutableMultiset.this.contains(obj);
        }

        @Override
        E get(int i10) {
            return (E) RegularImmutableMultiset.this.contents.i(i10);
        }

        @Override
        boolean isPartialView() {
            return true;
        }

        @Override
        public int size() {
            return RegularImmutableMultiset.this.contents.C();
        }

        @Override
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final int[] counts;
        final Object[] elements;

        SerializedForm(l3 l3Var) {
            int size = l3Var.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i10 = 0;
            for (l3.a aVar : l3Var.entrySet()) {
                this.elements[i10] = aVar.getElement();
                this.counts[i10] = aVar.getCount();
                i10++;
            }
        }

        Object readResolve() {
            ImmutableMultiset.b bVar = new ImmutableMultiset.b(this.elements.length);
            int i10 = 0;
            while (true) {
                Object[] objArr = this.elements;
                if (i10 >= objArr.length) {
                    return bVar.e();
                }
                bVar.k(objArr[i10], this.counts[i10]);
                i10++;
            }
        }
    }

    RegularImmutableMultiset(o3 o3Var) {
        this.contents = o3Var;
        long jK = 0;
        for (int i10 = 0; i10 < o3Var.C(); i10++) {
            jK += (long) o3Var.k(i10);
        }
        this.f29820a = Ints.n(jK);
    }

    @Override
    public int count(Object obj) {
        return this.contents.f(obj);
    }

    @Override
    l3.a getEntry(int i10) {
        return this.contents.g(i10);
    }

    @Override
    boolean isPartialView() {
        return false;
    }

    @Override
    public int size() {
        return this.f29820a;
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this);
    }

    @Override
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f29821b;
        if (immutableSet != null) {
            return immutableSet;
        }
        ElementSet elementSet = new ElementSet();
        this.f29821b = elementSet;
        return elementSet;
    }
}

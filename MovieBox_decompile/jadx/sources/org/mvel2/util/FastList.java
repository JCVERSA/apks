package org.mvel2.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.mvel2.ImmutableElementException;

public class FastList<E> extends AbstractList<E> implements Externalizable {
    private E[] elements;
    private int size;
    private boolean updated;

    class a implements Iterator {

        private int f68867a = 0;

        final int f68868b;

        a(int i10) {
            this.f68868b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f68867a < this.f68868b;
        }

        @Override
        public Object next() {
            Object[] objArr = FastList.this.elements;
            int i10 = this.f68867a;
            this.f68867a = i10 + 1;
            return objArr[i10];
        }

        @Override
        public void remove() {
            throw new ImmutableElementException("cannot change elements in immutable list");
        }
    }

    class b implements ListIterator {

        private int f68870a = -1;

        b() {
        }

        @Override
        public void add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasNext() {
            return this.f68870a < FastList.this.size - 1;
        }

        @Override
        public boolean hasPrevious() {
            return this.f68870a > 0;
        }

        @Override
        public Object next() {
            Object[] objArr = FastList.this.elements;
            int i10 = this.f68870a + 1;
            this.f68870a = i10;
            return objArr[i10];
        }

        @Override
        public int nextIndex() {
            int i10 = this.f68870a;
            this.f68870a = i10 + 1;
            return i10;
        }

        @Override
        public Object previous() {
            Object[] objArr = FastList.this.elements;
            int i10 = this.f68870a - 1;
            this.f68870a = i10;
            return objArr[i10];
        }

        @Override
        public int previousIndex() {
            int i10 = this.f68870a;
            this.f68870a = i10 - 1;
            return i10;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void set(Object obj) {
            FastList.this.elements[this.f68870a] = obj;
        }
    }

    public FastList(int i10) {
        this.size = 0;
        this.updated = false;
        this.elements = (E[]) new Object[i10 == 0 ? 1 : i10];
    }

    private void copyArray() {
        increaseSize(this.elements.length);
    }

    private void ensureCapacity(int i10) {
        int i11 = this.size;
        if (i11 + i10 > this.elements.length) {
            increaseSize((i11 + i10) * 2);
        }
    }

    private void increaseSize(int i10) {
        E[] eArr = (E[]) new Object[i10];
        int i11 = 0;
        while (true) {
            E[] eArr2 = this.elements;
            if (i11 >= eArr2.length) {
                this.elements = eArr;
                this.updated = true;
                return;
            } else {
                eArr[i11] = eArr2[i11];
                i11++;
            }
        }
    }

    @Override
    public boolean add(E e10) {
        int i10 = this.size;
        E[] eArr = this.elements;
        if (i10 == eArr.length) {
            increaseSize(eArr.length * 2);
        }
        E[] eArr2 = this.elements;
        int i11 = this.size;
        this.size = i11 + 1;
        eArr2[i11] = e10;
        return true;
    }

    @Override
    public boolean addAll(int i10, Collection<? extends E> collection) {
        int size = collection.size();
        ensureCapacity(this.size + size);
        if (i10 != 0) {
            for (int i11 = i10; i11 != i10 + size; i11++) {
                E[] eArr = this.elements;
                eArr[i11 + size + 1] = eArr[i11];
            }
        }
        int i12 = this.size == 0 ? -1 : 0;
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            this.elements[i12 + size] = it.next();
            i12++;
        }
        this.size += size;
        return true;
    }

    @Override
    public void clear() {
        this.elements = (E[]) new Object[1];
        this.size = 0;
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public boolean containsAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        ListIterator<E> listIterator = listIterator();
        ListIterator<E> listIterator2 = ((List) obj).listIterator();
        while (listIterator.hasNext() && listIterator2.hasNext()) {
            E next = listIterator.next();
            E next2 = listIterator2.next();
            if (next == null) {
                if (next2 != null) {
                    return false;
                }
            } else if (!next.equals(next2)) {
                return false;
            }
        }
        return (listIterator.hasNext() || listIterator2.hasNext()) ? false : true;
    }

    @Override
    public E get(int i10) {
        return this.elements[i10];
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int i10 = 0;
        while (true) {
            E[] eArr = this.elements;
            if (i10 >= eArr.length) {
                return -1;
            }
            if (obj.equals(eArr[i10])) {
                return i10;
            }
            i10++;
        }
    }

    @Override
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override
    public Iterator iterator() {
        return new a(this.size);
    }

    @Override
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int length = this.elements.length - 1; length != -1; length--) {
            if (obj.equals(this.elements[length])) {
                return length;
            }
        }
        return -1;
    }

    @Override
    public ListIterator<E> listIterator() {
        return new b();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i10 = objectInput.readInt();
        this.size = i10;
        this.elements = (E[]) new Object[i10];
        for (int i11 = 0; i11 < this.size; i11++) {
            ((E[]) this.elements)[i11] = objectInput.readObject();
        }
    }

    @Override
    public E remove(int i10) {
        E e10 = this.elements[i10];
        while (true) {
            i10++;
            int i11 = this.size;
            if (i10 >= i11) {
                this.size = i11 - 1;
                return e10;
            }
            E[] eArr = this.elements;
            eArr[i10 - 1] = eArr[i10];
            eArr[i10] = null;
        }
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override
    protected void removeRange(int i10, int i11) {
        throw new RuntimeException("not implemented");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override
    public E set(int i10, E e10) {
        if (!this.updated) {
            copyArray();
        }
        E[] eArr = this.elements;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        return e11;
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public List subList(int i10, int i11) {
        return super.subList(i10, i11);
    }

    @Override
    public Object[] toArray() {
        return toArray(new Object[this.size]);
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.size);
        for (int i10 = 0; i10 < this.size; i10++) {
            objectOutput.writeObject(this.elements[i10]);
        }
    }

    @Override
    public ListIterator listIterator(int i10) {
        return super.listIterator(i10);
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int i10 = this.size;
        if (length < i10) {
            objArr = new Object[i10];
        }
        for (int i11 = 0; i11 < this.size; i11++) {
            objArr[i11] = this.elements[i11];
        }
        return objArr;
    }

    @Override
    public void add(int i10, E e10) {
        int i11 = this.size;
        E[] eArr = this.elements;
        if (i11 == eArr.length) {
            increaseSize(eArr.length * 2);
        }
        for (int i12 = this.size; i12 != i10; i12--) {
            E[] eArr2 = this.elements;
            eArr2[i12] = eArr2[i12 - 1];
        }
        this.elements[i10] = e10;
        this.size++;
    }

    public FastList(E[] eArr) {
        this.size = 0;
        this.updated = false;
        this.elements = eArr;
        this.size = eArr.length;
    }

    @Override
    public boolean remove(Object obj) {
        throw new RuntimeException("not implemented");
    }

    @Override
    public boolean addAll(Collection collection) {
        return addAll(this.size, collection);
    }

    public FastList() {
        this(10);
    }
}

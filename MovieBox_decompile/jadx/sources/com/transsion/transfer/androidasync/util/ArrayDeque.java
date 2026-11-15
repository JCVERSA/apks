package com.transsion.transfer.androidasync.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Queue;

public class ArrayDeque<E> extends AbstractCollection<E> implements Queue, Cloneable, Serializable {
    private static final int MIN_INITIAL_CAPACITY = 8;
    private static final long serialVersionUID = 2340985798034038923L;
    private transient Object[] elements;
    private transient int head;
    private transient int tail;

    private class a implements Iterator {

        private int f53482a;

        private int f53483b;

        private int f53484c;

        @Override
        public boolean hasNext() {
            return this.f53482a != this.f53483b;
        }

        @Override
        public Object next() {
            if (this.f53482a == this.f53483b) {
                throw new NoSuchElementException();
            }
            Object obj = ArrayDeque.this.elements[this.f53482a];
            if (ArrayDeque.this.tail != this.f53483b || obj == null) {
                throw new ConcurrentModificationException();
            }
            int i10 = this.f53482a;
            this.f53484c = i10;
            this.f53482a = (i10 + 1) & (ArrayDeque.this.elements.length - 1);
            return obj;
        }

        @Override
        public void remove() {
            int i10 = this.f53484c;
            if (i10 < 0) {
                throw new IllegalStateException();
            }
            if (ArrayDeque.this.delete(i10)) {
                this.f53482a = (this.f53482a - 1) & (ArrayDeque.this.elements.length - 1);
                this.f53483b = ArrayDeque.this.tail;
            }
            this.f53484c = -1;
        }

        private a() {
            this.f53482a = ArrayDeque.this.head;
            this.f53483b = ArrayDeque.this.tail;
            this.f53484c = -1;
        }
    }

    private class b implements Iterator {

        private int f53486a;

        private int f53487b;

        private int f53488c;

        @Override
        public boolean hasNext() {
            return this.f53486a != this.f53487b;
        }

        @Override
        public Object next() {
            int i10 = this.f53486a;
            if (i10 == this.f53487b) {
                throw new NoSuchElementException();
            }
            this.f53486a = (i10 - 1) & (ArrayDeque.this.elements.length - 1);
            Object obj = ArrayDeque.this.elements[this.f53486a];
            if (ArrayDeque.this.head != this.f53487b || obj == null) {
                throw new ConcurrentModificationException();
            }
            this.f53488c = this.f53486a;
            return obj;
        }

        @Override
        public void remove() {
            int i10 = this.f53488c;
            if (i10 < 0) {
                throw new IllegalStateException();
            }
            if (!ArrayDeque.this.delete(i10)) {
                this.f53486a = (this.f53486a + 1) & (ArrayDeque.this.elements.length - 1);
                this.f53487b = ArrayDeque.this.head;
            }
            this.f53488c = -1;
        }

        private b() {
            this.f53486a = ArrayDeque.this.tail;
            this.f53487b = ArrayDeque.this.head;
            this.f53488c = -1;
        }
    }

    public ArrayDeque() {
        this.elements = new Object[16];
    }

    private void allocateElements(int i10) {
        int i11 = 8;
        if (i10 >= 8) {
            int i12 = i10 | (i10 >>> 1);
            int i13 = i12 | (i12 >>> 2);
            int i14 = i13 | (i13 >>> 4);
            int i15 = i14 | (i14 >>> 8);
            i11 = (i15 | (i15 >>> 16)) + 1;
            if (i11 < 0) {
                i11 >>>= 1;
            }
        }
        this.elements = new Object[i11];
    }

    private void checkInvariants() {
    }

    private <T> T[] copyElements(T[] tArr) {
        int i10 = this.head;
        int i11 = this.tail;
        if (i10 < i11) {
            System.arraycopy(this.elements, i10, tArr, 0, size());
        } else if (i10 > i11) {
            Object[] objArr = this.elements;
            int length = objArr.length - i10;
            System.arraycopy(objArr, i10, tArr, 0, length);
            System.arraycopy(this.elements, 0, tArr, length, this.tail);
        }
        return tArr;
    }

    public boolean delete(int i10) {
        checkInvariants();
        Object[] objArr = this.elements;
        int length = objArr.length - 1;
        int i11 = this.head;
        int i12 = this.tail;
        int i13 = (i10 - i11) & length;
        int i14 = (i12 - i10) & length;
        if (i13 >= ((i12 - i11) & length)) {
            throw new ConcurrentModificationException();
        }
        if (i13 < i14) {
            if (i11 <= i10) {
                System.arraycopy(objArr, i11, objArr, i11 + 1, i13);
            } else {
                System.arraycopy(objArr, 0, objArr, 1, i10);
                objArr[0] = objArr[length];
                System.arraycopy(objArr, i11, objArr, i11 + 1, length - i11);
            }
            objArr[i11] = null;
            this.head = (i11 + 1) & length;
            return false;
        }
        if (i10 < i12) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, i14);
            this.tail = i12 - 1;
        } else {
            System.arraycopy(objArr, i10 + 1, objArr, i10, length - i10);
            objArr[length] = objArr[0];
            System.arraycopy(objArr, 1, objArr, 0, i12);
            this.tail = (i12 - 1) & length;
        }
        return true;
    }

    private void doubleCapacity() {
        int i10 = this.head;
        Object[] objArr = this.elements;
        int length = objArr.length;
        int i11 = length - i10;
        int i12 = length << 1;
        if (i12 < 0) {
            throw new IllegalStateException("Sorry, deque too big");
        }
        Object[] objArr2 = new Object[i12];
        System.arraycopy(objArr, i10, objArr2, 0, i11);
        System.arraycopy(this.elements, 0, objArr2, i11, i10);
        this.elements = objArr2;
        this.head = 0;
        this.tail = length;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i10 = objectInputStream.readInt();
        allocateElements(i10);
        this.head = 0;
        this.tail = i10;
        for (int i11 = 0; i11 < i10; i11++) {
            this.elements[i11] = objectInputStream.readObject();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        int length = this.elements.length - 1;
        for (int i10 = this.head; i10 != this.tail; i10 = (i10 + 1) & length) {
            objectOutputStream.writeObject(this.elements[i10]);
        }
    }

    @Override
    public boolean add(E e10) {
        addLast(e10);
        return true;
    }

    public void addFirst(E e10) {
        if (e10 == null) {
            throw new NullPointerException("e == null");
        }
        Object[] objArr = this.elements;
        int length = (this.head - 1) & (objArr.length - 1);
        this.head = length;
        objArr[length] = e10;
        if (length == this.tail) {
            doubleCapacity();
        }
    }

    public void addLast(E e10) {
        if (e10 == null) {
            throw new NullPointerException("e == null");
        }
        Object[] objArr = this.elements;
        int i10 = this.tail;
        objArr[i10] = e10;
        int length = (objArr.length - 1) & (i10 + 1);
        this.tail = length;
        if (length == this.head) {
            doubleCapacity();
        }
    }

    @Override
    public void clear() {
        int i10 = this.head;
        int i11 = this.tail;
        if (i10 != i11) {
            this.tail = 0;
            this.head = 0;
            int length = this.elements.length - 1;
            do {
                this.elements[i10] = null;
                i10 = (i10 + 1) & length;
            } while (i10 != i11);
        }
    }

    @Override
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.elements.length - 1;
        int i10 = this.head;
        while (true) {
            Object obj2 = this.elements[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                return true;
            }
            i10 = (i10 + 1) & length;
        }
    }

    public Iterator<E> descendingIterator() {
        return new b();
    }

    @Override
    public E element() {
        return getFirst();
    }

    public E getFirst() {
        E e10 = (E) this.elements[this.head];
        if (e10 != null) {
            return e10;
        }
        throw new NoSuchElementException();
    }

    public E getLast() {
        Object[] objArr = this.elements;
        E e10 = (E) objArr[(this.tail - 1) & (objArr.length - 1)];
        if (e10 != null) {
            return e10;
        }
        throw new NoSuchElementException();
    }

    @Override
    public boolean isEmpty() {
        return this.head == this.tail;
    }

    @Override
    public Iterator<E> iterator() {
        return new a();
    }

    @Override
    public boolean offer(E e10) {
        return offerLast(e10);
    }

    public boolean offerFirst(E e10) {
        addFirst(e10);
        return true;
    }

    public boolean offerLast(E e10) {
        addLast(e10);
        return true;
    }

    @Override
    public E peek() {
        return peekFirst();
    }

    public E peekFirst() {
        return (E) this.elements[this.head];
    }

    public E peekLast() {
        Object[] objArr = this.elements;
        return (E) objArr[(this.tail - 1) & (objArr.length - 1)];
    }

    @Override
    public E poll() {
        return pollFirst();
    }

    public E pollFirst() {
        int i10 = this.head;
        Object[] objArr = this.elements;
        E e10 = (E) objArr[i10];
        if (e10 == null) {
            return null;
        }
        objArr[i10] = null;
        this.head = (i10 + 1) & (objArr.length - 1);
        return e10;
    }

    public E pollLast() {
        int i10 = this.tail - 1;
        Object[] objArr = this.elements;
        int length = i10 & (objArr.length - 1);
        E e10 = (E) objArr[length];
        if (e10 == null) {
            return null;
        }
        objArr[length] = null;
        this.tail = length;
        return e10;
    }

    public E pop() {
        return removeFirst();
    }

    public void push(E e10) {
        addFirst(e10);
    }

    @Override
    public E remove() {
        return removeFirst();
    }

    public E removeFirst() {
        E ePollFirst = pollFirst();
        if (ePollFirst != null) {
            return ePollFirst;
        }
        throw new NoSuchElementException();
    }

    public boolean removeFirstOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.elements.length - 1;
        int i10 = this.head;
        while (true) {
            Object obj2 = this.elements[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                delete(i10);
                return true;
            }
            i10 = (i10 + 1) & length;
        }
    }

    public E removeLast() {
        E ePollLast = pollLast();
        if (ePollLast != null) {
            return ePollLast;
        }
        throw new NoSuchElementException();
    }

    public boolean removeLastOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.elements.length - 1;
        int i10 = this.tail - 1;
        while (true) {
            int i11 = i10 & length;
            Object obj2 = this.elements[i11];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                delete(i11);
                return true;
            }
            i10 = i11 - 1;
        }
    }

    @Override
    public int size() {
        return (this.tail - this.head) & (this.elements.length - 1);
    }

    @Override
    public Object[] toArray() {
        return copyElements(new Object[size()]);
    }

    public ArrayDeque<E> m321clone() {
        try {
            ArrayDeque<E> arrayDeque = (ArrayDeque) super.clone();
            Object[] objArr = this.elements;
            System.arraycopy(objArr, 0, arrayDeque.elements, 0, objArr.length);
            return arrayDeque;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public boolean remove(Object obj) {
        return removeFirstOccurrence(obj);
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        copyElements(tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    public ArrayDeque(int i10) {
        allocateElements(i10);
    }

    public ArrayDeque(Collection<? extends E> collection) {
        allocateElements(collection.size());
        addAll(collection);
    }
}

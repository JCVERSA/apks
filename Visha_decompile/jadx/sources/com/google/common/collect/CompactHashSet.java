package com.google.common.collect;

import androidx.collection.ScatterMap$MapWrapper$keys$1;
import com.google.common.primitives.Ints;
import defpackage.k71;
import defpackage.kc7;
import defpackage.mo4;
import defpackage.ta1;
import defpackage.vb7;
import defpackage.xd8;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

class CompactHashSet<E> extends AbstractSet<E> implements Serializable {
    static final double HASH_FLOODING_FPP = 0.001d;
    public transient Object b;
    public transient int[] c;
    public transient int d;
    public transient int e;
    transient Object[] elements;

    public class a implements Iterator {
        public int b;
        public int c;
        public int d = -1;

        public a() {
            this.b = CompactHashSet.this.d;
            this.c = CompactHashSet.this.firstEntryIndex();
        }

        public final void a() {
            if (CompactHashSet.this.d != this.b) {
                throw new ConcurrentModificationException();
            }
        }

        public void b() {
            this.b += 32;
        }

        @Override
        public boolean hasNext() {
            return this.c >= 0;
        }

        @Override
        public Object next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.c;
            this.d = i;
            Object objC = CompactHashSet.this.c(i);
            this.c = CompactHashSet.this.getSuccessor(this.c);
            return objC;
        }

        @Override
        public void remove() {
            a();
            k71.e(this.d >= 0);
            b();
            CompactHashSet compactHashSet = CompactHashSet.this;
            compactHashSet.remove(compactHashSet.c(this.d));
            this.c = CompactHashSet.this.adjustAfterRemove(this.c, this.d);
            this.d = -1;
        }
    }

    public CompactHashSet() {
        init(3);
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i) {
        return new CompactHashSet<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException("Invalid size: " + i);
        }
        init(i);
        for (int i2 = 0; i2 < i; i2++) {
            add(objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    @Override
    public boolean add(E e) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.add(e);
        }
        int[] iArrK = k();
        Object[] objArrJ = j();
        int i = this.e;
        int i2 = i + 1;
        int iD = mo4.d(e);
        int i3 = i();
        int i4 = iD & i3;
        int iH = ta1.h(l(), i4);
        if (iH != 0) {
            int iB = ta1.b(iD, i3);
            int i5 = 0;
            while (true) {
                int i6 = iH - 1;
                int i7 = iArrK[i6];
                if (ta1.b(i7, i3) == iB && kc7.a(e, objArrJ[i6])) {
                    return false;
                }
                int iC = ta1.c(i7, i3);
                i5++;
                if (iC != 0) {
                    iH = iC;
                } else {
                    if (i5 >= 9) {
                        return convertToHashFloodingResistantImplementation().add(e);
                    }
                    if (i2 > i3) {
                        i3 = n(i3, ta1.e(i3), iD, i);
                    } else {
                        iArrK[i6] = ta1.d(i7, i2, i3);
                    }
                }
            }
        } else if (i2 > i3) {
            i3 = n(i3, ta1.e(i3), iD, i);
        } else {
            ta1.i(l(), i4, i2);
        }
        m(i2);
        insertEntry(i, e, iD, i3);
        this.e = i2;
        incrementModCount();
        return true;
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    public int allocArrays() {
        xd8.v(needsAllocArrays(), "Arrays already allocated");
        int i = this.d;
        int iJ = ta1.j(i);
        this.b = ta1.a(iJ);
        q(iJ - 1);
        this.c = new int[i];
        this.elements = new Object[i];
        return i;
    }

    public final Set b(int i) {
        return new LinkedHashSet(i, 1.0f);
    }

    public final Object c(int i) {
        return j()[i];
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            this.d = Ints.f(size(), 3, 1073741823);
            setDelegateOrNull.clear();
            this.b = null;
            this.e = 0;
            return;
        }
        Arrays.fill(j(), 0, this.e, (Object) null);
        ta1.g(l());
        Arrays.fill(k(), 0, this.e, 0);
        this.e = 0;
    }

    @Override
    public boolean contains(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.contains(obj);
        }
        int iD = mo4.d(obj);
        int i = i();
        int iH = ta1.h(l(), iD & i);
        if (iH == 0) {
            return false;
        }
        int iB = ta1.b(iD, i);
        do {
            int i2 = iH - 1;
            int iF = f(i2);
            if (ta1.b(iF, i) == iB && kc7.a(obj, c(i2))) {
                return true;
            }
            iH = ta1.c(iF, i);
        } while (iH != 0);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Set<E> convertToHashFloodingResistantImplementation() {
        ScatterMap$MapWrapper$keys$1 scatterMap$MapWrapper$keys$1 = (Set<E>) b(i() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            scatterMap$MapWrapper$keys$1.add(c(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.b = scatterMap$MapWrapper$keys$1;
        this.c = null;
        this.elements = null;
        incrementModCount();
        return scatterMap$MapWrapper$keys$1;
    }

    public Set<E> delegateOrNull() {
        Object obj = this.b;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public final int f(int i) {
        return k()[i];
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.e) {
            return i2;
        }
        return -1;
    }

    public final int i() {
        return (1 << (this.d & 31)) - 1;
    }

    public void incrementModCount() {
        this.d += 32;
    }

    public void init(int i) {
        xd8.e(i >= 0, "Expected size must be >= 0");
        this.d = Ints.f(i, 1, 1073741823);
    }

    public void insertEntry(int i, E e, int i2, int i3) {
        p(i, ta1.d(i2, 0, i3));
        o(i, e);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean isUsingHashFloodingResistance() {
        return delegateOrNull() != null;
    }

    @Override
    public Iterator<E> iterator() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.iterator() : new a();
    }

    public final Object[] j() {
        Object[] objArr = this.elements;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final int[] k() {
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object l() {
        Object obj = this.b;
        Objects.requireNonNull(obj);
        return obj;
    }

    public final void m(int i) {
        int iMin;
        int length = k().length;
        if (i <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    public void moveLastEntry(int i, int i2) {
        Object objL = l();
        int[] iArrK = k();
        Object[] objArrJ = j();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArrJ[i] = null;
            iArrK[i] = 0;
            return;
        }
        Object obj = objArrJ[i3];
        objArrJ[i] = obj;
        objArrJ[i3] = null;
        iArrK[i] = iArrK[i3];
        iArrK[i3] = 0;
        int iD = mo4.d(obj) & i2;
        int iH = ta1.h(objL, iD);
        if (iH == size) {
            ta1.i(objL, iD, i + 1);
            return;
        }
        while (true) {
            int i4 = iH - 1;
            int i5 = iArrK[i4];
            int iC = ta1.c(i5, i2);
            if (iC == size) {
                iArrK[i4] = ta1.d(i5, i + 1, i2);
                return;
            }
            iH = iC;
        }
    }

    public final int n(int i, int i2, int i3, int i4) {
        Object objA = ta1.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            ta1.i(objA, i3 & i5, i4 + 1);
        }
        Object objL = l();
        int[] iArrK = k();
        for (int i6 = 0; i6 <= i; i6++) {
            int iH = ta1.h(objL, i6);
            while (iH != 0) {
                int i7 = iH - 1;
                int i8 = iArrK[i7];
                int iB = ta1.b(i8, i) | i6;
                int i9 = iB & i5;
                int iH2 = ta1.h(objA, i9);
                ta1.i(objA, i9, iH);
                iArrK[i7] = ta1.d(iB, iH2, i5);
                iH = ta1.c(i8, i);
            }
        }
        this.b = objA;
        q(i5);
        return i5;
    }

    public boolean needsAllocArrays() {
        return this.b == null;
    }

    public final void o(int i, Object obj) {
        j()[i] = obj;
    }

    public final void p(int i, int i2) {
        k()[i] = i2;
    }

    public final void q(int i) {
        this.d = ta1.d(this.d, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    @Override
    public boolean remove(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.remove(obj);
        }
        int i = i();
        int iF = ta1.f(obj, null, i, l(), k(), j(), null);
        if (iF == -1) {
            return false;
        }
        moveLastEntry(iF, i);
        this.e--;
        incrementModCount();
        return true;
    }

    public void resizeEntries(int i) {
        this.c = Arrays.copyOf(k(), i);
        this.elements = Arrays.copyOf(j(), i);
    }

    @Override
    public int size() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.size() : this.e;
    }

    @Override
    public Object[] toArray() {
        if (needsAllocArrays()) {
            return new Object[0];
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.toArray() : Arrays.copyOf(j(), this.e);
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            Set setB = b(size());
            setB.addAll(setDelegateOrNull);
            this.b = setB;
            return;
        }
        int i = this.e;
        if (i < k().length) {
            resizeEntries(i);
        }
        int iJ = ta1.j(i);
        int i2 = i();
        if (iJ < i2) {
            n(i2, iJ, 0, 0);
        }
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactHashSetCreateWithExpectedSize.addAll(collection);
        return compactHashSetCreateWithExpectedSize;
    }

    public CompactHashSet(int i) {
        init(i);
    }

    @SafeVarargs
    public static <E> CompactHashSet<E> create(E... eArr) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactHashSetCreateWithExpectedSize, eArr);
        return compactHashSetCreateWithExpectedSize;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        if (needsAllocArrays()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return (T[]) setDelegateOrNull.toArray(tArr);
        }
        return (T[]) vb7.h(j(), 0, this.e, tArr);
    }
}

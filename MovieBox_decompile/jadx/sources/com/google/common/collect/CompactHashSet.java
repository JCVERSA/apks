package com.google.common.collect;

import com.google.common.primitives.Ints;
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

    private transient Object f29523a;

    private transient int[] f29524b;

    private transient int f29525c;

    private transient int f29526d;
    transient Object[] elements;

    class a implements Iterator {

        int f29527a;

        int f29528b;

        int f29529c = -1;

        a() {
            this.f29527a = CompactHashSet.this.f29525c;
            this.f29528b = CompactHashSet.this.firstEntryIndex();
        }

        private void a() {
            if (CompactHashSet.this.f29525c != this.f29527a) {
                throw new ConcurrentModificationException();
            }
        }

        void b() {
            this.f29527a += 32;
        }

        @Override
        public boolean hasNext() {
            return this.f29528b >= 0;
        }

        @Override
        public Object next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i10 = this.f29528b;
            this.f29529c = i10;
            Object objB = CompactHashSet.this.b(i10);
            this.f29528b = CompactHashSet.this.getSuccessor(this.f29528b);
            return objB;
        }

        @Override
        public void remove() {
            a();
            e2.e(this.f29529c >= 0);
            b();
            CompactHashSet compactHashSet = CompactHashSet.this;
            compactHashSet.remove(compactHashSet.b(this.f29529c));
            this.f29528b = CompactHashSet.this.adjustAfterRemove(this.f29528b, this.f29529c);
            this.f29529c = -1;
        }
    }

    CompactHashSet() {
        init(3);
    }

    private Set a(int i10) {
        return new LinkedHashSet(i10, 1.0f);
    }

    public Object b(int i10) {
        return f()[i10];
    }

    private int c(int i10) {
        return g()[i10];
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i10) {
        return new CompactHashSet<>(i10);
    }

    private int e() {
        return (1 << (this.f29525c & 31)) - 1;
    }

    private Object[] f() {
        Object[] objArr = this.elements;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private int[] g() {
        int[] iArr = this.f29524b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private Object i() {
        Object obj = this.f29523a;
        Objects.requireNonNull(obj);
        return obj;
    }

    private void j(int i10) {
        int iMin;
        int length = g().length;
        if (i10 <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    private int l(int i10, int i11, int i12, int i13) {
        Object objA = g2.a(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            g2.i(objA, i12 & i14, i13 + 1);
        }
        Object objI = i();
        int[] iArrG = g();
        for (int i15 = 0; i15 <= i10; i15++) {
            int iH = g2.h(objI, i15);
            while (iH != 0) {
                int i16 = iH - 1;
                int i17 = iArrG[i16];
                int iB = g2.b(i17, i10) | i15;
                int i18 = iB & i14;
                int iH2 = g2.h(objA, i18);
                g2.i(objA, i18, iH);
                iArrG[i16] = g2.d(iB, iH2, i14);
                iH = g2.c(i17, i10);
            }
        }
        this.f29523a = objA;
        o(i14);
        return i14;
    }

    private void m(int i10, Object obj) {
        f()[i10] = obj;
    }

    private void n(int i10, int i11) {
        g()[i10] = i11;
    }

    private void o(int i10) {
        this.f29525c = g2.d(this.f29525c, 32 - Integer.numberOfLeadingZeros(i10), 31);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i10 = objectInputStream.readInt();
        if (i10 < 0) {
            throw new InvalidObjectException("Invalid size: " + i10);
        }
        init(i10);
        for (int i11 = 0; i11 < i10; i11++) {
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
    public boolean add(E e10) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.add(e10);
        }
        int[] iArrG = g();
        Object[] objArrF = f();
        int i10 = this.f29526d;
        int i11 = i10 + 1;
        int iD = v2.d(e10);
        int iE = e();
        int i12 = iD & iE;
        int iH = g2.h(i(), i12);
        if (iH != 0) {
            int iB = g2.b(iD, iE);
            int i13 = 0;
            while (true) {
                int i14 = iH - 1;
                int i15 = iArrG[i14];
                if (g2.b(i15, iE) == iB && com.google.common.base.j.a(e10, objArrF[i14])) {
                    return false;
                }
                int iC = g2.c(i15, iE);
                i13++;
                if (iC != 0) {
                    iH = iC;
                } else {
                    if (i13 >= 9) {
                        return convertToHashFloodingResistantImplementation().add(e10);
                    }
                    if (i11 > iE) {
                        iE = l(iE, g2.e(iE), iD, i10);
                    } else {
                        iArrG[i14] = g2.d(i15, i11, iE);
                    }
                }
            }
        } else if (i11 > iE) {
            iE = l(iE, g2.e(iE), iD, i10);
        } else {
            g2.i(i(), i12, i11);
        }
        j(i11);
        insertEntry(i10, e10, iD, iE);
        this.f29526d = i11;
        incrementModCount();
        return true;
    }

    int adjustAfterRemove(int i10, int i11) {
        return i10 - 1;
    }

    int allocArrays() {
        com.google.common.base.m.v(needsAllocArrays(), "Arrays already allocated");
        int i10 = this.f29525c;
        int iJ = g2.j(i10);
        this.f29523a = g2.a(iJ);
        o(iJ - 1);
        this.f29524b = new int[i10];
        this.elements = new Object[i10];
        return i10;
    }

    @Override
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            this.f29525c = Ints.f(size(), 3, 1073741823);
            setDelegateOrNull.clear();
            this.f29523a = null;
            this.f29526d = 0;
            return;
        }
        Arrays.fill(f(), 0, this.f29526d, (Object) null);
        g2.g(i());
        Arrays.fill(g(), 0, this.f29526d, 0);
        this.f29526d = 0;
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
        int iD = v2.d(obj);
        int iE = e();
        int iH = g2.h(i(), iD & iE);
        if (iH == 0) {
            return false;
        }
        int iB = g2.b(iD, iE);
        do {
            int i10 = iH - 1;
            int iC = c(i10);
            if (g2.b(iC, iE) == iB && com.google.common.base.j.a(obj, b(i10))) {
                return true;
            }
            iH = g2.c(iC, iE);
        } while (iH != 0);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    Set<E> convertToHashFloodingResistantImplementation() {
        androidx.compose.runtime.snapshots.o oVar = (Set<E>) a(e() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            oVar.add(b(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.f29523a = oVar;
        this.f29524b = null;
        this.elements = null;
        incrementModCount();
        return oVar;
    }

    Set<E> delegateOrNull() {
        Object obj = this.f29523a;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    int getSuccessor(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.f29526d) {
            return i11;
        }
        return -1;
    }

    void incrementModCount() {
        this.f29525c += 32;
    }

    void init(int i10) {
        com.google.common.base.m.e(i10 >= 0, "Expected size must be >= 0");
        this.f29525c = Ints.f(i10, 1, 1073741823);
    }

    void insertEntry(int i10, E e10, int i11, int i12) {
        n(i10, g2.d(i11, 0, i12));
        m(i10, e10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    boolean isUsingHashFloodingResistance() {
        return delegateOrNull() != null;
    }

    @Override
    public Iterator<E> iterator() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.iterator() : new a();
    }

    void moveLastEntry(int i10, int i11) {
        Object objI = i();
        int[] iArrG = g();
        Object[] objArrF = f();
        int size = size();
        int i12 = size - 1;
        if (i10 >= i12) {
            objArrF[i10] = null;
            iArrG[i10] = 0;
            return;
        }
        Object obj = objArrF[i12];
        objArrF[i10] = obj;
        objArrF[i12] = null;
        iArrG[i10] = iArrG[i12];
        iArrG[i12] = 0;
        int iD = v2.d(obj) & i11;
        int iH = g2.h(objI, iD);
        if (iH == size) {
            g2.i(objI, iD, i10 + 1);
            return;
        }
        while (true) {
            int i13 = iH - 1;
            int i14 = iArrG[i13];
            int iC = g2.c(i14, i11);
            if (iC == size) {
                iArrG[i13] = g2.d(i14, i10 + 1, i11);
                return;
            }
            iH = iC;
        }
    }

    boolean needsAllocArrays() {
        return this.f29523a == null;
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
        int iE = e();
        int iF = g2.f(obj, null, iE, i(), g(), f(), null);
        if (iF == -1) {
            return false;
        }
        moveLastEntry(iF, iE);
        this.f29526d--;
        incrementModCount();
        return true;
    }

    void resizeEntries(int i10) {
        this.f29524b = Arrays.copyOf(g(), i10);
        this.elements = Arrays.copyOf(f(), i10);
    }

    @Override
    public int size() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.size() : this.f29526d;
    }

    @Override
    public Object[] toArray() {
        if (needsAllocArrays()) {
            return new Object[0];
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.toArray() : Arrays.copyOf(f(), this.f29526d);
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            Set setA = a(size());
            setA.addAll(setDelegateOrNull);
            this.f29523a = setA;
            return;
        }
        int i10 = this.f29526d;
        if (i10 < g().length) {
            resizeEntries(i10);
        }
        int iJ = g2.j(i10);
        int iE = e();
        if (iJ < iE) {
            l(iE, iJ, 0, 0);
        }
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactHashSetCreateWithExpectedSize.addAll(collection);
        return compactHashSetCreateWithExpectedSize;
    }

    CompactHashSet(int i10) {
        init(i10);
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
        return (T[]) n3.h(f(), 0, this.f29526d, tArr);
    }
}

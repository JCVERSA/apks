package defpackage;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class hg extends k3 {
    public static final a e = new a(null);
    public static final Object[] f = new Object[0];
    public int b;
    public Object[] c = f;
    public int d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    private final void k(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.c;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == f) {
            this.c = new Object[wn8.d(i, 10)];
        } else {
            c(g3.Companion.e(objArr.length, i));
        }
    }

    @Override
    public boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override
    public boolean addAll(Collection collection) {
        y45.j(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        registerModification();
        k(size() + collection.size());
        b(p(this.b + size()), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        registerModification();
        k(size() + 1);
        int iF = f(this.b);
        this.b = iF;
        this.c[iF] = obj;
        this.d = size() + 1;
    }

    public final void addLast(Object obj) {
        registerModification();
        k(size() + 1);
        this.c[p(this.b + size())] = obj;
        this.d = size() + 1;
    }

    public final void b(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.c.length;
        while (i < length && it.hasNext()) {
            this.c[i] = it.next();
            i++;
        }
        int i2 = this.b;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.c[i3] = it.next();
        }
        this.d = size() + collection.size();
    }

    public final void c(int i) {
        Object[] objArr = new Object[i];
        Object[] objArr2 = this.c;
        fi.l(objArr2, objArr, 0, this.b, objArr2.length);
        Object[] objArr3 = this.c;
        int length = objArr3.length;
        int i2 = this.b;
        fi.l(objArr3, objArr, length - i2, 0, i2);
        this.b = 0;
        this.c = objArr;
    }

    @Override
    public void clear() {
        if (!isEmpty()) {
            registerModification();
            o(this.b, p(this.b + size()));
        }
        this.b = 0;
        this.d = 0;
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int f(int i) {
        return i == 0 ? hi.d0(this.c) : i - 1;
    }

    @Override
    public Object get(int i) {
        g3.Companion.b(i, size());
        return this.c[p(this.b + i)];
    }

    @Override
    public int getLength() {
        return this.d;
    }

    @Override
    public int indexOf(Object obj) {
        int i;
        int iP = p(this.b + size());
        int length = this.b;
        if (length < iP) {
            while (length < iP) {
                if (y45.e(obj, this.c[length])) {
                    i = this.b;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iP) {
            return -1;
        }
        int length2 = this.c.length;
        while (length < length2) {
            if (y45.e(obj, this.c[length])) {
                i = this.b;
            } else {
                length++;
            }
        }
        for (int i2 = 0; i2 < iP; i2++) {
            if (y45.e(obj, this.c[i2])) {
                length = i2 + this.c.length;
                i = this.b;
            }
        }
        return -1;
        return length - i;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public final int l(int i) {
        if (i == hi.d0(this.c)) {
            return 0;
        }
        return i + 1;
    }

    @Override
    public int lastIndexOf(Object obj) {
        int iD0;
        int i;
        int iP = p(this.b + size());
        int i2 = this.b;
        if (i2 < iP) {
            iD0 = iP - 1;
            if (i2 <= iD0) {
                while (!y45.e(obj, this.c[iD0])) {
                    if (iD0 != i2) {
                        iD0--;
                    }
                }
                i = this.b;
                return iD0 - i;
            }
            return -1;
        }
        if (i2 > iP) {
            for (int i3 = iP - 1; -1 < i3; i3--) {
                if (y45.e(obj, this.c[i3])) {
                    iD0 = i3 + this.c.length;
                    i = this.b;
                    return iD0 - i;
                }
            }
            iD0 = hi.d0(this.c);
            int i4 = this.b;
            if (i4 <= iD0) {
                while (!y45.e(obj, this.c[iD0])) {
                    if (iD0 != i4) {
                        iD0--;
                    }
                }
                i = this.b;
                return iD0 - i;
            }
        }
        return -1;
    }

    public final Object m() {
        if (isEmpty()) {
            return null;
        }
        return this.c[p(this.b + y71.m(this))];
    }

    public final int n(int i) {
        return i < 0 ? i + this.c.length : i;
    }

    public final void o(int i, int i2) {
        if (i < i2) {
            fi.v(this.c, null, i, i2);
            return;
        }
        Object[] objArr = this.c;
        fi.v(objArr, null, i, objArr.length);
        fi.v(this.c, null, 0, i2);
    }

    public final int p(int i) {
        Object[] objArr = this.c;
        return i >= objArr.length ? i - objArr.length : i;
    }

    public final Object q() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final Object r() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    public final void registerModification() {
        ((AbstractList) this).modCount++;
    }

    @Override
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override
    public boolean removeAll(Collection collection) {
        int iP;
        y45.j(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.c.length != 0) {
            int iP2 = p(this.b + size());
            int i = this.b;
            if (i < iP2) {
                iP = i;
                while (i < iP2) {
                    Object obj = this.c[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.c[iP] = obj;
                        iP++;
                    }
                    i++;
                }
                fi.v(this.c, null, iP, iP2);
            } else {
                int length = this.c.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr = this.c;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.c[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                iP = p(i2);
                for (int i3 = 0; i3 < iP2; i3++) {
                    Object[] objArr2 = this.c;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.c[iP] = obj3;
                        iP = l(iP);
                    }
                }
                z = z2;
            }
            if (z) {
                registerModification();
                this.d = n(iP - this.b);
            }
        }
        return z;
    }

    @Override
    public Object removeAt(int i) {
        g3.Companion.b(i, size());
        if (i == y71.m(this)) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        registerModification();
        int iP = p(this.b + i);
        Object obj = this.c[iP];
        if (i < (size() >> 1)) {
            int i2 = this.b;
            if (iP >= i2) {
                Object[] objArr = this.c;
                fi.l(objArr, objArr, i2 + 1, i2, iP);
            } else {
                Object[] objArr2 = this.c;
                fi.l(objArr2, objArr2, 1, 0, iP);
                Object[] objArr3 = this.c;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i3 = this.b;
                fi.l(objArr3, objArr3, i3 + 1, i3, objArr3.length - 1);
            }
            Object[] objArr4 = this.c;
            int i4 = this.b;
            objArr4[i4] = null;
            this.b = l(i4);
        } else {
            int iP2 = p(this.b + y71.m(this));
            if (iP <= iP2) {
                Object[] objArr5 = this.c;
                fi.l(objArr5, objArr5, iP, iP + 1, iP2 + 1);
            } else {
                Object[] objArr6 = this.c;
                fi.l(objArr6, objArr6, iP, iP + 1, objArr6.length);
                Object[] objArr7 = this.c;
                objArr7[objArr7.length - 1] = objArr7[0];
                fi.l(objArr7, objArr7, 0, 1, iP2 + 1);
            }
            this.c[iP2] = null;
        }
        this.d = size() - 1;
        return obj;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        registerModification();
        Object[] objArr = this.c;
        int i = this.b;
        Object obj = objArr[i];
        objArr[i] = null;
        this.b = l(i);
        this.d = size() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        registerModification();
        int iP = p(this.b + y71.m(this));
        Object[] objArr = this.c;
        Object obj = objArr[iP];
        objArr[iP] = null;
        this.d = size() - 1;
        return obj;
    }

    @Override
    public void removeRange(int i, int i2) {
        g3.Companion.d(i, i2, size());
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == size()) {
            clear();
            return;
        }
        if (i3 == 1) {
            remove(i);
            return;
        }
        registerModification();
        if (i < size() - i2) {
            s(i, i2);
            int iP = p(this.b + i3);
            o(this.b, iP);
            this.b = iP;
        } else {
            t(i, i2);
            int iP2 = p(this.b + size());
            o(n(iP2 - i3), iP2);
        }
        this.d = size() - i3;
    }

    @Override
    public boolean retainAll(Collection collection) {
        int iP;
        y45.j(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.c.length != 0) {
            int iP2 = p(this.b + size());
            int i = this.b;
            if (i < iP2) {
                iP = i;
                while (i < iP2) {
                    Object obj = this.c[i];
                    if (collection.contains(obj)) {
                        this.c[iP] = obj;
                        iP++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                fi.v(this.c, null, iP, iP2);
            } else {
                int length = this.c.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr = this.c;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        this.c[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                iP = p(i2);
                for (int i3 = 0; i3 < iP2; i3++) {
                    Object[] objArr2 = this.c;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        this.c[iP] = obj3;
                        iP = l(iP);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                registerModification();
                this.d = n(iP - this.b);
            }
        }
        return z;
    }

    public final void s(int i, int i2) {
        int iP = p(this.b + (i - 1));
        int iP2 = p(this.b + (i2 - 1));
        while (i > 0) {
            int i3 = iP + 1;
            int iMin = Math.min(i, Math.min(i3, iP2 + 1));
            Object[] objArr = this.c;
            int i4 = iP2 - iMin;
            int i5 = iP - iMin;
            fi.l(objArr, objArr, i4 + 1, i5 + 1, i3);
            iP = n(i5);
            iP2 = n(i4);
            i -= iMin;
        }
    }

    @Override
    public Object set(int i, Object obj) {
        g3.Companion.b(i, size());
        int iP = p(this.b + i);
        Object[] objArr = this.c;
        Object obj2 = objArr[iP];
        objArr[iP] = obj;
        return obj2;
    }

    public final void t(int i, int i2) {
        int iP = p(this.b + i2);
        int iP2 = p(this.b + i);
        int size = size();
        while (true) {
            size -= i2;
            if (size <= 0) {
                return;
            }
            Object[] objArr = this.c;
            i2 = Math.min(size, Math.min(objArr.length - iP, objArr.length - iP2));
            Object[] objArr2 = this.c;
            int i3 = iP + i2;
            fi.l(objArr2, objArr2, iP2, iP, i3);
            iP = p(i3);
            iP2 = p(iP2 + i2);
        }
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        y45.j(objArr, "array");
        if (objArr.length < size()) {
            objArr = di.a(objArr, size());
        }
        int iP = p(this.b + size());
        int i = this.b;
        if (i < iP) {
            fi.q(this.c, objArr, 0, i, iP, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.c;
            fi.l(objArr2, objArr, 0, this.b, objArr2.length);
            Object[] objArr3 = this.c;
            fi.l(objArr3, objArr, objArr3.length - this.b, 0, iP);
        }
        return x71.f(size(), objArr);
    }

    @Override
    public void add(int i, Object obj) {
        g3.Companion.c(i, size());
        if (i == size()) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        registerModification();
        k(size() + 1);
        int iP = p(this.b + i);
        if (i < ((size() + 1) >> 1)) {
            int iF = f(iP);
            int iF2 = f(this.b);
            int i2 = this.b;
            if (iF >= i2) {
                Object[] objArr = this.c;
                objArr[iF2] = objArr[i2];
                fi.l(objArr, objArr, i2, i2 + 1, iF + 1);
            } else {
                Object[] objArr2 = this.c;
                fi.l(objArr2, objArr2, i2 - 1, i2, objArr2.length);
                Object[] objArr3 = this.c;
                objArr3[objArr3.length - 1] = objArr3[0];
                fi.l(objArr3, objArr3, 0, 1, iF + 1);
            }
            this.c[iF] = obj;
            this.b = iF2;
        } else {
            int iP2 = p(this.b + size());
            if (iP < iP2) {
                Object[] objArr4 = this.c;
                fi.l(objArr4, objArr4, iP + 1, iP, iP2);
            } else {
                Object[] objArr5 = this.c;
                fi.l(objArr5, objArr5, 1, 0, iP2);
                Object[] objArr6 = this.c;
                objArr6[0] = objArr6[objArr6.length - 1];
                fi.l(objArr6, objArr6, iP + 1, iP, objArr6.length - 1);
            }
            this.c[iP] = obj;
        }
        this.d = size() + 1;
    }

    @Override
    public boolean addAll(int i, Collection collection) {
        y45.j(collection, "elements");
        g3.Companion.c(i, size());
        if (collection.isEmpty()) {
            return false;
        }
        if (i == size()) {
            return addAll(collection);
        }
        registerModification();
        k(size() + collection.size());
        int iP = p(this.b + size());
        int iP2 = p(this.b + i);
        int size = collection.size();
        if (i < ((size() + 1) >> 1)) {
            int i2 = this.b;
            int length = i2 - size;
            if (iP2 < i2) {
                Object[] objArr = this.c;
                fi.l(objArr, objArr, length, i2, objArr.length);
                if (size >= iP2) {
                    Object[] objArr2 = this.c;
                    fi.l(objArr2, objArr2, objArr2.length - size, 0, iP2);
                } else {
                    Object[] objArr3 = this.c;
                    fi.l(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.c;
                    fi.l(objArr4, objArr4, 0, size, iP2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.c;
                fi.l(objArr5, objArr5, length, i2, iP2);
            } else {
                Object[] objArr6 = this.c;
                length += objArr6.length;
                int i3 = iP2 - i2;
                int length2 = objArr6.length - length;
                if (length2 >= i3) {
                    fi.l(objArr6, objArr6, length, i2, iP2);
                } else {
                    fi.l(objArr6, objArr6, length, i2, i2 + length2);
                    Object[] objArr7 = this.c;
                    fi.l(objArr7, objArr7, 0, this.b + length2, iP2);
                }
            }
            this.b = length;
            b(n(iP2 - size), collection);
        } else {
            int i4 = iP2 + size;
            if (iP2 < iP) {
                int i5 = size + iP;
                Object[] objArr8 = this.c;
                if (i5 <= objArr8.length) {
                    fi.l(objArr8, objArr8, i4, iP2, iP);
                } else if (i4 >= objArr8.length) {
                    fi.l(objArr8, objArr8, i4 - objArr8.length, iP2, iP);
                } else {
                    int length3 = iP - (i5 - objArr8.length);
                    fi.l(objArr8, objArr8, 0, length3, iP);
                    Object[] objArr9 = this.c;
                    fi.l(objArr9, objArr9, i4, iP2, length3);
                }
            } else {
                Object[] objArr10 = this.c;
                fi.l(objArr10, objArr10, size, 0, iP);
                Object[] objArr11 = this.c;
                if (i4 >= objArr11.length) {
                    fi.l(objArr11, objArr11, i4 - objArr11.length, iP2, objArr11.length);
                } else {
                    fi.l(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.c;
                    fi.l(objArr12, objArr12, i4, iP2, objArr12.length - size);
                }
            }
            b(iP2, collection);
        }
        return true;
    }

    @Override
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}

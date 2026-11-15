package com.bytedance.adsdk.sP;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class Sj<E> implements Collection<E>, Set<E> {
    private static int Dq;
    private static Object[] HiB;
    private static Object[] Jcg;
    private static int vS;
    Object[] Sj;
    private Zq<E, E> TEQ;
    int sP;
    private int[] uA;
    private static final int[] TKC = new int[0];
    private static final Object[] EjP = new Object[0];

    public Sj() {
        this(0);
    }

    private void EjP(int i10) {
        if (i10 == 8) {
            synchronized (Sj.class) {
                Object[] objArr = Jcg;
                if (objArr != null) {
                    this.Sj = objArr;
                    Jcg = (Object[]) objArr[0];
                    this.uA = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    Dq--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (Sj.class) {
                Object[] objArr2 = HiB;
                if (objArr2 != null) {
                    this.Sj = objArr2;
                    HiB = (Object[]) objArr2[0];
                    this.uA = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    vS--;
                    return;
                }
            }
        }
        this.uA = new int[i10];
        this.Sj = new Object[i10];
    }

    private int Sj(Object obj, int i10) {
        int i11 = this.sP;
        if (i11 == 0) {
            return -1;
        }
        int iSj = sP.Sj(this.uA, i11, i10);
        if (iSj < 0 || obj.equals(this.Sj[iSj])) {
            return iSj;
        }
        int i12 = iSj + 1;
        while (i12 < i11 && this.uA[i12] == i10) {
            if (obj.equals(this.Sj[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iSj - 1; i13 >= 0 && this.uA[i13] == i10; i13--) {
            if (obj.equals(this.Sj[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    public E TKC(int i10) {
        Object[] objArr = this.Sj;
        E e10 = (E) objArr[i10];
        int i11 = this.sP;
        if (i11 <= 1) {
            Sj(this.uA, objArr, i11);
            this.uA = TKC;
            this.Sj = EjP;
            this.sP = 0;
        } else {
            int[] iArr = this.uA;
            if (iArr.length <= 8 || i11 >= iArr.length / 3) {
                int i12 = i11 - 1;
                this.sP = i12;
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    System.arraycopy(iArr, i13, iArr, i10, i12 - i10);
                    Object[] objArr2 = this.Sj;
                    System.arraycopy(objArr2, i13, objArr2, i10, this.sP - i10);
                }
                this.Sj[this.sP] = null;
            } else {
                EjP(i11 > 8 ? i11 + (i11 >> 1) : 8);
                this.sP--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.uA, 0, i10);
                    System.arraycopy(objArr, 0, this.Sj, 0, i10);
                }
                int i14 = this.sP;
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    System.arraycopy(iArr, i15, this.uA, i10, i14 - i10);
                    System.arraycopy(objArr, i15, this.Sj, i10, this.sP - i10);
                }
            }
        }
        return e10;
    }

    @Override
    public boolean add(E e10) {
        int i10;
        int iSj;
        if (e10 == null) {
            iSj = Sj();
            i10 = 0;
        } else {
            int iHashCode = e10.hashCode();
            i10 = iHashCode;
            iSj = Sj(e10, iHashCode);
        }
        if (iSj >= 0) {
            return false;
        }
        int i11 = ~iSj;
        int i12 = this.sP;
        int[] iArr = this.uA;
        if (i12 >= iArr.length) {
            int i13 = 8;
            if (i12 >= 8) {
                i13 = (i12 >> 1) + i12;
            } else if (i12 < 4) {
                i13 = 4;
            }
            Object[] objArr = this.Sj;
            EjP(i13);
            int[] iArr2 = this.uA;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.Sj, 0, objArr.length);
            }
            Sj(iArr, objArr, this.sP);
        }
        int i14 = this.sP;
        if (i11 < i14) {
            int[] iArr3 = this.uA;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr2 = this.Sj;
            System.arraycopy(objArr2, i11, objArr2, i15, this.sP - i11);
        }
        this.uA[i11] = i10;
        this.Sj[i11] = e10;
        this.sP++;
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        Sj(this.sP + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override
    public void clear() {
        int i10 = this.sP;
        if (i10 != 0) {
            Sj(this.uA, this.Sj, i10);
            this.uA = TKC;
            this.Sj = EjP;
            this.sP = 0;
        }
    }

    @Override
    public boolean contains(Object obj) {
        return Sj(obj) >= 0;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.sP; i10++) {
                try {
                    if (!set.contains(sP(i10))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int[] iArr = this.uA;
        int i10 = this.sP;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    @Override
    public boolean isEmpty() {
        return this.sP <= 0;
    }

    @Override
    public Iterator<E> iterator() {
        return sP().EjP().iterator();
    }

    @Override
    public boolean remove(Object obj) {
        int iSj = Sj(obj);
        if (iSj < 0) {
            return false;
        }
        TKC(iSj);
        return true;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i10 = this.sP - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.Sj[i10])) {
                TKC(i10);
                z10 = true;
            }
        }
        return z10;
    }

    public E sP(int i10) {
        return (E) this.Sj[i10];
    }

    @Override
    public int size() {
        return this.sP;
    }

    @Override
    public Object[] toArray() {
        int i10 = this.sP;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.Sj, 0, objArr, 0, i10);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.sP * 14);
        sb2.append('{');
        for (int i10 = 0; i10 < this.sP; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            E eSP = sP(i10);
            if (eSP != this) {
                sb2.append(eSP);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public Sj(int i10) {
        if (i10 == 0) {
            this.uA = TKC;
            this.Sj = EjP;
        } else {
            EjP(i10);
        }
        this.sP = 0;
    }

    private Zq<E, E> sP() {
        if (this.TEQ == null) {
            this.TEQ = new Zq<E, E>() {
                @Override
                protected int Sj() {
                    return Sj.this.sP;
                }

                @Override
                protected void TKC() {
                    Sj.this.clear();
                }

                @Override
                protected Map<E, E> sP() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override
                protected Object Sj(int i10, int i11) {
                    return Sj.this.Sj[i10];
                }

                @Override
                protected int Sj(Object obj) {
                    return Sj.this.Sj(obj);
                }

                @Override
                protected void Sj(int i10) {
                    Sj.this.TKC(i10);
                }
            };
        }
        return this.TEQ;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.sP) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.sP));
        }
        System.arraycopy(this.Sj, 0, tArr, 0, this.sP);
        int length = tArr.length;
        int i10 = this.sP;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }

    private int Sj() {
        int i10 = this.sP;
        if (i10 == 0) {
            return -1;
        }
        int iSj = sP.Sj(this.uA, i10, 0);
        if (iSj < 0 || this.Sj[iSj] == null) {
            return iSj;
        }
        int i11 = iSj + 1;
        while (i11 < i10 && this.uA[i11] == 0) {
            if (this.Sj[i11] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iSj - 1; i12 >= 0 && this.uA[i12] == 0; i12--) {
            if (this.Sj[i12] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    private static void Sj(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (Sj.class) {
                try {
                    if (Dq < 10) {
                        objArr[0] = Jcg;
                        objArr[1] = iArr;
                        for (int i11 = i10 - 1; i11 >= 2; i11--) {
                            objArr[i11] = null;
                        }
                        Jcg = objArr;
                        Dq++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (Sj.class) {
                try {
                    if (vS < 10) {
                        objArr[0] = HiB;
                        objArr[1] = iArr;
                        for (int i12 = i10 - 1; i12 >= 2; i12--) {
                            objArr[i12] = null;
                        }
                        HiB = objArr;
                        vS++;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public void Sj(int i10) {
        int[] iArr = this.uA;
        if (iArr.length < i10) {
            Object[] objArr = this.Sj;
            EjP(i10);
            int i11 = this.sP;
            if (i11 > 0) {
                System.arraycopy(iArr, 0, this.uA, 0, i11);
                System.arraycopy(objArr, 0, this.Sj, 0, this.sP);
            }
            Sj(iArr, objArr, this.sP);
        }
    }

    public int Sj(Object obj) {
        return obj == null ? Sj() : Sj(obj, obj.hashCode());
    }
}

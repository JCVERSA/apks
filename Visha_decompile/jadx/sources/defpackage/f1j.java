package defpackage;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;

public final class f1j extends mmh implements RandomAccess {
    public static final Object[] e;
    public static final f1j f;
    public Object[] c;
    public int d;

    static {
        Object[] objArr = new Object[0];
        e = objArr;
        f = new f1j(objArr, 0, false);
    }

    public f1j(Object[] objArr, int i, boolean z) {
        super(z);
        this.c = objArr;
        this.d = i;
    }

    public static f1j f() {
        return f;
    }

    public static int j(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    private final void zzi(int i) {
        if (i < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException(k(i));
        }
    }

    @Override
    public final void add(int i, Object obj) {
        int i2;
        b();
        if (i < 0 || i > (i2 = this.d)) {
            throw new IndexOutOfBoundsException(k(i));
        }
        int i3 = i + 1;
        Object[] objArr = this.c;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[j(length)];
            System.arraycopy(this.c, 0, objArr2, 0, i);
            System.arraycopy(this.c, i, objArr2, i3, this.d - i);
            this.c = objArr2;
        }
        this.c[i] = obj;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final npi d(int i) {
        if (i >= this.d) {
            return new f1j(i == 0 ? e : Arrays.copyOf(this.c, i), this.d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int i = this.d;
        if (i != list.size()) {
            return false;
        }
        if (!(obj instanceof f1j)) {
            for (int i2 = 0; i2 < i; i2++) {
                if (!this.c[i2].equals(list.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        f1j f1jVar = (f1j) obj;
        for (int i3 = 0; i3 < i; i3++) {
            if (!this.c[i3].equals(f1jVar.c[i3])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i) {
        zzi(i);
        return this.c[i];
    }

    @Override
    public final int hashCode() {
        int i = this.d;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode = (iHashCode * 31) + this.c[i2].hashCode();
        }
        return iHashCode;
    }

    public final void i(int i) {
        int length = this.c.length;
        if (i <= length) {
            return;
        }
        if (length == 0) {
            this.c = new Object[Math.max(i, 10)];
            return;
        }
        while (length < i) {
            length = j(length);
        }
        this.c = Arrays.copyOf(this.c, length);
    }

    public final String k(int i) {
        return "Index:" + i + ", Size:" + this.d;
    }

    @Override
    public final Object remove(int i) {
        b();
        zzi(i);
        Object[] objArr = this.c;
        Object obj = objArr[i];
        int i2 = this.d;
        if (i < i2 - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (i2 - i) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override
    public final Object set(int i, Object obj) {
        b();
        zzi(i);
        Object[] objArr = this.c;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override
    public final int size() {
        return this.d;
    }

    @Override
    public final boolean add(Object obj) {
        b();
        int i = this.d;
        int length = this.c.length;
        if (i == length) {
            this.c = Arrays.copyOf(this.c, j(length));
        }
        Object[] objArr = this.c;
        int i2 = this.d;
        this.d = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}

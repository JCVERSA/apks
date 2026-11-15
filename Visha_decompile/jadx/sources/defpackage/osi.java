package defpackage;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class osi extends iri implements RandomAccess, vsi, wti {
    public static final int[] e;
    public static final osi f;
    public int[] c;
    public int d;

    static {
        int[] iArr = new int[0];
        e = iArr;
        f = new osi(iArr, 0, false);
    }

    public osi(int[] iArr, int i, boolean z) {
        super(z);
        this.c = iArr;
        this.d = i;
    }

    public static osi i() {
        return f;
    }

    public static int k(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    @Override
    public final void add(int i, Object obj) {
        int i2;
        int iIntValue = ((Integer) obj).intValue();
        b();
        if (i < 0 || i > (i2 = this.d)) {
            throw new IndexOutOfBoundsException(l(i));
        }
        int i3 = i + 1;
        int[] iArr = this.c;
        int length = iArr.length;
        if (i2 < length) {
            System.arraycopy(iArr, i, iArr, i3, i2 - i);
        } else {
            int[] iArr2 = new int[k(length)];
            System.arraycopy(this.c, 0, iArr2, 0, i);
            System.arraycopy(this.c, i, iArr2, i3, this.d - i);
            this.c = iArr2;
        }
        this.c[i] = iIntValue;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = zsi.a;
        collection.getClass();
        if (!(collection instanceof osi)) {
            return super.addAll(collection);
        }
        osi osiVar = (osi) collection;
        int i = osiVar.d;
        if (i == 0) {
            return false;
        }
        int i2 = this.d;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.c;
        if (i3 > iArr.length) {
            this.c = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(osiVar.c, 0, this.c, this.d, osiVar.d);
        this.d = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final int c(int i) {
        m(i);
        return this.c[i];
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof osi)) {
            return super.equals(obj);
        }
        osi osiVar = (osi) obj;
        if (this.d != osiVar.d) {
            return false;
        }
        int[] iArr = osiVar.c;
        for (int i = 0; i < this.d; i++) {
            if (this.c[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final int f(int i, int i2) {
        b();
        m(i);
        int[] iArr = this.c;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    @Override
    public final Object get(int i) {
        m(i);
        return Integer.valueOf(this.c[i]);
    }

    @Override
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.d; i2++) {
            i = (i * 31) + this.c[i2];
        }
        return i;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.c[i2] == iIntValue) {
                return i2;
            }
        }
        return -1;
    }

    public final void j(int i) {
        int length = this.c.length;
        if (i <= length) {
            return;
        }
        if (length == 0) {
            this.c = new int[Math.max(i, 10)];
            return;
        }
        while (length < i) {
            length = k(length);
        }
        this.c = Arrays.copyOf(this.c, length);
    }

    public final String l(int i) {
        return "Index:" + i + ", Size:" + this.d;
    }

    public final void m(int i) {
        if (i < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException(l(i));
        }
    }

    @Override
    public final Object remove(int i) {
        b();
        m(i);
        int[] iArr = this.c;
        int i2 = iArr[i];
        int i3 = this.d;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override
    public final void removeRange(int i, int i2) {
        b();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.c;
        System.arraycopy(iArr, i2, iArr, i, this.d - i2);
        this.d -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override
    public final Object set(int i, Object obj) {
        return Integer.valueOf(f(i, ((Integer) obj).intValue()));
    }

    @Override
    public final int size() {
        return this.d;
    }

    @Override
    public final vsi e(int i) {
        if (i >= this.d) {
            return new osi(i == 0 ? e : Arrays.copyOf(this.c, i), this.d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void zzi(int i) {
        b();
        int i2 = this.d;
        int length = this.c.length;
        if (i2 == length) {
            int[] iArr = new int[k(length)];
            System.arraycopy(this.c, 0, iArr, 0, this.d);
            this.c = iArr;
        }
        int[] iArr2 = this.c;
        int i3 = this.d;
        this.d = i3 + 1;
        iArr2[i3] = i;
    }

    @Override
    public final boolean add(Object obj) {
        zzi(((Integer) obj).intValue());
        return true;
    }
}

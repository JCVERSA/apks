package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

final class y0 extends c implements RandomAccess {

    private static final y0 f8622d = new y0(new Object[0], 0, false);

    private Object[] f8623b;

    private int f8624c;

    private y0(Object[] objArr, int i10, boolean z10) {
        super(z10);
        this.f8623b = objArr;
        this.f8624c = i10;
    }

    private static Object[] b(int i10) {
        return new Object[i10];
    }

    public static y0 c() {
        return f8622d;
    }

    private void e(int i10) {
        if (i10 < 0 || i10 >= this.f8624c) {
            throw new IndexOutOfBoundsException(f(i10));
        }
    }

    private String f(int i10) {
        return "Index:" + i10 + ", Size:" + this.f8624c;
    }

    @Override
    public boolean add(Object obj) {
        a();
        int i10 = this.f8624c;
        Object[] objArr = this.f8623b;
        if (i10 == objArr.length) {
            this.f8623b = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f8623b;
        int i11 = this.f8624c;
        this.f8624c = i11 + 1;
        objArr2[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override
    public y0 mutableCopyWithCapacity(int i10) {
        if (i10 >= this.f8624c) {
            return new y0(Arrays.copyOf(this.f8623b, i10), this.f8624c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public Object get(int i10) {
        e(i10);
        return this.f8623b[i10];
    }

    @Override
    public Object remove(int i10) {
        a();
        e(i10);
        Object[] objArr = this.f8623b;
        Object obj = objArr[i10];
        int i11 = this.f8624c;
        if (i10 < i11 - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (i11 - i10) - 1);
        }
        this.f8624c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override
    public Object set(int i10, Object obj) {
        a();
        e(i10);
        Object[] objArr = this.f8623b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override
    public int size() {
        return this.f8624c;
    }

    @Override
    public void add(int i10, Object obj) {
        int i11;
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f8624c)) {
            Object[] objArr = this.f8623b;
            if (i11 < objArr.length) {
                System.arraycopy(objArr, i10, objArr, i10 + 1, i11 - i10);
            } else {
                Object[] objArrB = b(((i11 * 3) / 2) + 1);
                System.arraycopy(this.f8623b, 0, objArrB, 0, i10);
                System.arraycopy(this.f8623b, i10, objArrB, i10 + 1, this.f8624c - i10);
                this.f8623b = objArrB;
            }
            this.f8623b[i10] = obj;
            this.f8624c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(f(i10));
    }
}

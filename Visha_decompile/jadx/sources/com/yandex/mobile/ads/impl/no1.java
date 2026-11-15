package com.yandex.mobile.ads.impl;

final class no1<E> extends mk0<E> {
    private static final Object[] i = null;
    static final no1<Object> j;
    final transient Object[] d;
    private final transient int e;
    final transient Object[] f;
    private final transient int g;
    private final transient int h;

    static {
        Object[] objArr = new Object[0];
        j = new no1<>(objArr, 0, objArr, 0, 0);
    }

    public no1(Object[] objArr, int i2, Object[] objArr2, int i3, int i4) {
        this.d = objArr;
        this.e = i2;
        this.f = objArr2;
        this.g = i3;
        this.h = i4;
    }

    @Override
    public final int a(int i2, Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, i2, this.h);
        return i2 + this.h;
    }

    @Override
    public final Object[] c() {
        return this.d;
    }

    @Override
    public final boolean contains(Object obj) {
        Object[] objArr = this.f;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iA = jf0.a(obj.hashCode());
        while (true) {
            int i2 = iA & this.g;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iA = i2 + 1;
        }
    }

    @Override
    public final int d() {
        return this.h;
    }

    @Override
    public final int e() {
        return 0;
    }

    @Override
    public final boolean f() {
        return false;
    }

    @Override
    public final kk0<E> g() {
        return kk0.b(this.h, this.d);
    }

    @Override
    public final int hashCode() {
        return this.e;
    }

    @Override
    public final i82<E> iterator() {
        return b().listIterator(0);
    }

    @Override
    public final int size() {
        return this.h;
    }
}

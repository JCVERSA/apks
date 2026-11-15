package com.yandex.mobile.ads.impl;

import android.util.SparseArray;

final class p12<V> {
    private final yr<V> c;
    private final SparseArray<V> b = new SparseArray<>();
    private int a = -1;

    public p12(yr<V> yrVar) {
        this.c = yrVar;
    }

    public final void a(int i, V v) {
        if (this.a == -1) {
            if (this.b.size() != 0) {
                throw new IllegalStateException();
            }
            this.a = 0;
        }
        if (this.b.size() > 0) {
            SparseArray<V> sparseArray = this.b;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            if (i < iKeyAt) {
                throw new IllegalArgumentException();
            }
            if (iKeyAt == i) {
                yr<V> yrVar = this.c;
                SparseArray<V> sparseArray2 = this.b;
                yrVar.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.b.append(i, v);
    }

    public final V b(int i) {
        if (this.a == -1) {
            this.a = 0;
        }
        while (true) {
            int i2 = this.a;
            if (i2 <= 0 || i >= this.b.keyAt(i2)) {
                break;
            }
            this.a--;
        }
        while (this.a < this.b.size() - 1 && i >= this.b.keyAt(this.a + 1)) {
            this.a++;
        }
        return this.b.valueAt(this.a);
    }

    public final boolean c() {
        return this.b.size() == 0;
    }

    public final V b() {
        SparseArray<V> sparseArray = this.b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public final void a() {
        for (int i = 0; i < this.b.size(); i++) {
            this.c.accept(this.b.valueAt(i));
        }
        this.a = -1;
        this.b.clear();
    }

    public final void a(int i) {
        int i2 = 0;
        while (i2 < this.b.size() - 1) {
            int i3 = i2 + 1;
            if (i < this.b.keyAt(i3)) {
                return;
            }
            this.c.accept(this.b.valueAt(i2));
            this.b.removeAt(i2);
            int i4 = this.a;
            if (i4 > 0) {
                this.a = i4 - 1;
            }
            i2 = i3;
        }
    }
}

package com.google.android.exoplayer2.source;

import android.util.SparseArray;

final class f0 {

    private int f25245a;

    private final SparseArray f25246b;

    private final com.google.android.exoplayer2.util.i f25247c;

    public f0() {
        this(new com.google.android.exoplayer2.util.i() {
            @Override
            public final void accept(Object obj) {
                f0.i(obj);
            }
        });
    }

    public void b(int i10, Object obj) {
        if (this.f25245a == -1) {
            com.google.android.exoplayer2.util.a.g(this.f25246b.size() == 0);
            this.f25245a = 0;
        }
        if (this.f25246b.size() > 0) {
            SparseArray sparseArray = this.f25246b;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            com.google.android.exoplayer2.util.a.a(i10 >= iKeyAt);
            if (iKeyAt == i10) {
                com.google.android.exoplayer2.util.i iVar = this.f25247c;
                SparseArray sparseArray2 = this.f25246b;
                iVar.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f25246b.append(i10, obj);
    }

    public void c() {
        for (int i10 = 0; i10 < this.f25246b.size(); i10++) {
            this.f25247c.accept(this.f25246b.valueAt(i10));
        }
        this.f25245a = -1;
        this.f25246b.clear();
    }

    public void d(int i10) {
        for (int size = this.f25246b.size() - 1; size >= 0 && i10 < this.f25246b.keyAt(size); size--) {
            this.f25247c.accept(this.f25246b.valueAt(size));
            this.f25246b.removeAt(size);
        }
        this.f25245a = this.f25246b.size() > 0 ? Math.min(this.f25245a, this.f25246b.size() - 1) : -1;
    }

    public void e(int i10) {
        int i11 = 0;
        while (i11 < this.f25246b.size() - 1) {
            int i12 = i11 + 1;
            if (i10 < this.f25246b.keyAt(i12)) {
                return;
            }
            this.f25247c.accept(this.f25246b.valueAt(i11));
            this.f25246b.removeAt(i11);
            int i13 = this.f25245a;
            if (i13 > 0) {
                this.f25245a = i13 - 1;
            }
            i11 = i12;
        }
    }

    public Object f(int i10) {
        if (this.f25245a == -1) {
            this.f25245a = 0;
        }
        while (true) {
            int i11 = this.f25245a;
            if (i11 <= 0 || i10 >= this.f25246b.keyAt(i11)) {
                break;
            }
            this.f25245a--;
        }
        while (this.f25245a < this.f25246b.size() - 1 && i10 >= this.f25246b.keyAt(this.f25245a + 1)) {
            this.f25245a++;
        }
        return this.f25246b.valueAt(this.f25245a);
    }

    public Object g() {
        SparseArray sparseArray = this.f25246b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean h() {
        return this.f25246b.size() == 0;
    }

    public f0(com.google.android.exoplayer2.util.i iVar) {
        this.f25246b = new SparseArray();
        this.f25247c = iVar;
        this.f25245a = -1;
    }

    public static void i(Object obj) {
    }
}

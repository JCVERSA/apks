package androidx.media3.exoplayer.source;

import android.util.SparseArray;

final class j0 {

    private int f12523a;

    private final SparseArray f12524b;

    private final androidx.media3.common.util.m f12525c;

    public j0() {
        this(new androidx.media3.common.util.m() {
            @Override
            public final void accept(Object obj) {
                j0.i(obj);
            }
        });
    }

    public void b(int i10, Object obj) {
        if (this.f12523a == -1) {
            androidx.media3.common.util.a.g(this.f12524b.size() == 0);
            this.f12523a = 0;
        }
        if (this.f12524b.size() > 0) {
            SparseArray sparseArray = this.f12524b;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            androidx.media3.common.util.a.a(i10 >= iKeyAt);
            if (iKeyAt == i10) {
                androidx.media3.common.util.m mVar = this.f12525c;
                SparseArray sparseArray2 = this.f12524b;
                mVar.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f12524b.append(i10, obj);
    }

    public void c() {
        for (int i10 = 0; i10 < this.f12524b.size(); i10++) {
            this.f12525c.accept(this.f12524b.valueAt(i10));
        }
        this.f12523a = -1;
        this.f12524b.clear();
    }

    public void d(int i10) {
        for (int size = this.f12524b.size() - 1; size >= 0 && i10 < this.f12524b.keyAt(size); size--) {
            this.f12525c.accept(this.f12524b.valueAt(size));
            this.f12524b.removeAt(size);
        }
        this.f12523a = this.f12524b.size() > 0 ? Math.min(this.f12523a, this.f12524b.size() - 1) : -1;
    }

    public void e(int i10) {
        int i11 = 0;
        while (i11 < this.f12524b.size() - 1) {
            int i12 = i11 + 1;
            if (i10 < this.f12524b.keyAt(i12)) {
                return;
            }
            this.f12525c.accept(this.f12524b.valueAt(i11));
            this.f12524b.removeAt(i11);
            int i13 = this.f12523a;
            if (i13 > 0) {
                this.f12523a = i13 - 1;
            }
            i11 = i12;
        }
    }

    public Object f(int i10) {
        if (this.f12523a == -1) {
            this.f12523a = 0;
        }
        while (true) {
            int i11 = this.f12523a;
            if (i11 <= 0 || i10 >= this.f12524b.keyAt(i11)) {
                break;
            }
            this.f12523a--;
        }
        while (this.f12523a < this.f12524b.size() - 1 && i10 >= this.f12524b.keyAt(this.f12523a + 1)) {
            this.f12523a++;
        }
        return this.f12524b.valueAt(this.f12523a);
    }

    public Object g() {
        SparseArray sparseArray = this.f12524b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean h() {
        return this.f12524b.size() == 0;
    }

    public j0(androidx.media3.common.util.m mVar) {
        this.f12524b = new SparseArray();
        this.f12525c = mVar;
        this.f12523a = -1;
    }

    public static void i(Object obj) {
    }
}

package defpackage;

import android.util.SparseArray;

public final class dpj {
    public final qfg c;
    public final SparseArray b = new SparseArray();
    public int a = -1;

    public dpj(qfg qfgVar) {
        this.c = qfgVar;
    }

    public final Object a(int i) {
        SparseArray sparseArray;
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
        while (true) {
            int i3 = this.a;
            sparseArray = this.b;
            if (i3 >= sparseArray.size() - 1 || i < sparseArray.keyAt(this.a + 1)) {
                break;
            }
            this.a++;
        }
        return sparseArray.valueAt(this.a);
    }

    public final Object b() {
        SparseArray sparseArray = this.b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public final void c(int i, Object obj) {
        if (this.a == -1) {
            n7g.f(this.b.size() == 0);
            this.a = 0;
        }
        SparseArray sparseArray = this.b;
        if (sparseArray.size() > 0) {
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            n7g.d(i >= iKeyAt);
            if (iKeyAt == i) {
                this.c.zza(sparseArray.valueAt(sparseArray.size() - 1));
            }
        }
        sparseArray.append(i, obj);
    }

    public final void d() {
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.b;
            if (i >= sparseArray.size()) {
                this.a = -1;
                sparseArray.clear();
                return;
            } else {
                this.c.zza(sparseArray.valueAt(i));
                i++;
            }
        }
    }

    public final void e(int i) {
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.b;
            if (i2 >= sparseArray.size() - 1) {
                return;
            }
            int i3 = i2 + 1;
            if (i < sparseArray.keyAt(i3)) {
                return;
            }
            this.c.zza(sparseArray.valueAt(i2));
            sparseArray.removeAt(i2);
            int i4 = this.a;
            if (i4 > 0) {
                this.a = i4 - 1;
            }
            i2 = i3;
        }
    }

    public final boolean f() {
        return this.b.size() == 0;
    }
}

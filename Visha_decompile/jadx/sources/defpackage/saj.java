package defpackage;

import android.util.SparseArray;

public final class saj {
    public final enj a;
    public final SparseArray b;

    public saj(enj enjVar, SparseArray sparseArray) {
        this.a = enjVar;
        SparseArray sparseArray2 = new SparseArray(enjVar.b());
        for (int i = 0; i < enjVar.b(); i++) {
            int iA = enjVar.a(i);
            raj rajVar = (raj) sparseArray.get(iA);
            rajVar.getClass();
            sparseArray2.append(iA, rajVar);
        }
        this.b = sparseArray2;
    }

    public final int a(int i) {
        return this.a.a(i);
    }

    public final int b() {
        return this.a.b();
    }

    public final raj c(int i) {
        raj rajVar = (raj) this.b.get(i);
        rajVar.getClass();
        return rajVar;
    }

    public final boolean d(int i) {
        return this.a.c(i);
    }
}

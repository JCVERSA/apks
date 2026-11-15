package io.appmetrica.analytics.impl;

import android.util.SparseArray;

public final class Xj extends Pc {
    public final Tn a;

    public Xj() {
        this(C2910ua.j().B().b());
    }

    @Override
    public final void a(int i) {
        Tn tn = this.a;
        synchronized (tn) {
            Vn vn = tn.a;
            vn.a(vn.a().put("last_migration_api_level", i));
        }
    }

    @Override
    public final int b() {
        int iOptInt;
        Tn tn = this.a;
        synchronized (tn) {
            iOptInt = tn.a.a().optInt("last_migration_api_level", -1);
        }
        return iOptInt;
    }

    @Override
    public final SparseArray<Oc> c() {
        SparseArray<Oc> sparseArray = new SparseArray<>(1);
        sparseArray.put(112, new Yj(this.a));
        sparseArray.put(115, new Zj());
        return sparseArray;
    }

    public Xj(Tn tn) {
        this.a = tn;
    }
}

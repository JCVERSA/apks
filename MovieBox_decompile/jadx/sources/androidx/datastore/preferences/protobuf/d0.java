package androidx.datastore.preferences.protobuf;

import java.util.List;

final class d0 implements c0 {
    d0() {
    }

    static w.d d(Object obj, long j10) {
        return (w.d) k1.G(obj, j10);
    }

    @Override
    public void a(Object obj, long j10) {
        d(obj, j10).makeImmutable();
    }

    @Override
    public void b(Object obj, Object obj2, long j10) {
        w.d dVarD = d(obj, j10);
        w.d dVarD2 = d(obj2, j10);
        int size = dVarD.size();
        int size2 = dVarD2.size();
        if (size > 0 && size2 > 0) {
            if (!dVarD.isModifiable()) {
                dVarD = dVarD.mutableCopyWithCapacity(size2 + size);
            }
            dVarD.addAll(dVarD2);
        }
        if (size > 0) {
            dVarD2 = dVarD;
        }
        k1.W(obj, j10, dVarD2);
    }

    @Override
    public List c(Object obj, long j10) {
        w.d dVarD = d(obj, j10);
        if (dVarD.isModifiable()) {
            return dVarD;
        }
        int size = dVarD.size();
        w.d dVarMutableCopyWithCapacity = dVarD.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
        k1.W(obj, j10, dVarMutableCopyWithCapacity);
        return dVarMutableCopyWithCapacity;
    }
}

package defpackage;

public final class gti implements pti {
    public final pti[] a;

    public gti(pti... ptiVarArr) {
        this.a = ptiVarArr;
    }

    @Override
    public final oti a(Class cls) {
        for (int i = 0; i < 2; i++) {
            pti ptiVar = this.a[i];
            if (ptiVar.b(cls)) {
                return ptiVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override
    public final boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.a[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}

package defpackage;

import java.util.Comparator;

public final class c4i extends f4i {
    public c4i() {
        super(null);
    }

    public static final f4i j(int i) {
        if (i < 0) {
            return f4i.b;
        }
        return i > 0 ? f4i.c : f4i.a;
    }

    @Override
    public final int a() {
        return 0;
    }

    @Override
    public final f4i b(int i, int i2) {
        return j(Integer.compare(i, i2));
    }

    @Override
    public final f4i c(Object obj, Object obj2, Comparator comparator) {
        return j(comparator.compare(obj, obj2));
    }

    @Override
    public final f4i d(boolean z, boolean z2) {
        return j(Boolean.compare(z, z2));
    }

    @Override
    public final f4i e(boolean z, boolean z2) {
        return j(Boolean.compare(z2, z));
    }
}

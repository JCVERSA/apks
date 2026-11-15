package defpackage;

import java.util.Objects;

public final class umj extends pmj {
    public static final Object e = new Object();
    public final Object c;
    public final Object d;

    public umj(w4f w4fVar, Object obj, Object obj2) {
        super(w4fVar);
        this.c = obj;
        this.d = obj2;
    }

    public static umj q(cme cmeVar) {
        return new umj(new vmj(cmeVar), e4f.o, e);
    }

    public static umj r(w4f w4fVar, Object obj, Object obj2) {
        return new umj(w4fVar, obj, obj2);
    }

    @Override
    public final int a(Object obj) {
        Object obj2;
        if (e.equals(obj) && (obj2 = this.d) != null) {
            obj = obj2;
        }
        return this.b.a(obj);
    }

    @Override
    public final y2f d(int i, y2f y2fVar, boolean z) {
        this.b.d(i, y2fVar, z);
        if (Objects.equals(y2fVar.b, this.d) && z) {
            y2fVar.b = e;
        }
        return y2fVar;
    }

    @Override
    public final e4f e(int i, e4f e4fVar, long j) {
        this.b.e(i, e4fVar, j);
        if (Objects.equals(e4fVar.a, this.c)) {
            e4fVar.a = e4f.o;
        }
        return e4fVar;
    }

    @Override
    public final Object f(int i) {
        Object objF = this.b.f(i);
        return Objects.equals(objF, this.d) ? e : objF;
    }

    public final umj p(w4f w4fVar) {
        return new umj(w4fVar, this.c, this.d);
    }
}

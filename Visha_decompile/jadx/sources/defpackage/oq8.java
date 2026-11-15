package defpackage;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;

public final class oq8 extends lq8 implements b95 {
    public final WildcardType b;
    public final Collection c;
    public final boolean d;

    public oq8(WildcardType wildcardType) {
        y45.j(wildcardType, "reflectType");
        this.b = wildcardType;
        this.c = y71.k();
    }

    @Override
    public boolean M() {
        Type[] upperBounds = O().getUpperBounds();
        y45.i(upperBounds, "reflectType.upperBounds");
        return !y45.e(hi.Y(upperBounds), Object.class);
    }

    @Override
    public lq8 s() {
        Type[] upperBounds = O().getUpperBounds();
        Type[] lowerBounds = O().getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            throw new UnsupportedOperationException("Wildcard types with many bounds are not yet supported: " + O());
        }
        if (lowerBounds.length == 1) {
            lq8.a aVar = lq8.a;
            y45.i(lowerBounds, "lowerBounds");
            Object objF0 = hi.F0(lowerBounds);
            y45.i(objF0, "lowerBounds.single()");
            return aVar.a((Type) objF0);
        }
        if (upperBounds.length == 1) {
            y45.i(upperBounds, "upperBounds");
            Type type = (Type) hi.F0(upperBounds);
            if (!y45.e(type, Object.class)) {
                lq8.a aVar2 = lq8.a;
                y45.i(type, "ub");
                return aVar2.a(type);
            }
        }
        return null;
    }

    @Override
    public WildcardType O() {
        return this.b;
    }

    @Override
    public Collection getAnnotations() {
        return this.c;
    }

    @Override
    public boolean x() {
        return this.d;
    }
}

package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Collection;

public final class vp8 extends lq8 implements q65 {
    public final Type b;
    public final lq8 c;
    public final Collection d;
    public final boolean e;

    public vp8(Type type) {
        lq8 lq8VarA;
        y45.j(type, "reflectType");
        this.b = type;
        Type typeO = O();
        if (!(typeO instanceof GenericArrayType)) {
            if (typeO instanceof Class) {
                Class cls = (Class) typeO;
                if (cls.isArray()) {
                    lq8.a aVar = lq8.a;
                    Class<?> componentType = cls.getComponentType();
                    y45.i(componentType, "getComponentType()");
                    lq8VarA = aVar.a(componentType);
                }
            }
            throw new IllegalArgumentException("Not an array type (" + O().getClass() + "): " + O());
        }
        lq8.a aVar2 = lq8.a;
        Type genericComponentType = ((GenericArrayType) typeO).getGenericComponentType();
        y45.i(genericComponentType, "genericComponentType");
        lq8VarA = aVar2.a(genericComponentType);
        this.c = lq8VarA;
        this.d = y71.k();
    }

    @Override
    public Type O() {
        return this.b;
    }

    @Override
    public lq8 h() {
        return this.c;
    }

    @Override
    public Collection getAnnotations() {
        return this.d;
    }

    @Override
    public boolean x() {
        return this.e;
    }
}

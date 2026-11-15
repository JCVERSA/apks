package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.Type;

public final class dq8 extends fq8 implements m75 {
    public final Field a;

    public dq8(Field field) {
        y45.j(field, "member");
        this.a = field;
    }

    @Override
    public boolean C() {
        return false;
    }

    @Override
    public boolean K() {
        return P().isEnumConstant();
    }

    @Override
    public Field P() {
        return this.a;
    }

    @Override
    public lq8 getType() {
        lq8.a aVar = lq8.a;
        Type genericType = P().getGenericType();
        y45.i(genericType, "member.genericType");
        return aVar.a(genericType);
    }
}

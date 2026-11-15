package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;

public final class kq8 extends fq8 implements c85 {
    public final Object a;

    public kq8(Object obj) {
        y45.j(obj, "recordComponent");
        this.a = obj;
    }

    @Override
    public Member P() throws IllegalAccessException, InvocationTargetException {
        Method methodC = e65.a.c(this.a);
        if (methodC != null) {
            return methodC;
        }
        throw new NoSuchMethodError("Can't find `getAccessor` method");
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public o85 getType() throws IllegalAccessException, InvocationTargetException {
        Class clsD = e65.a.d(this.a);
        if (clsD != null) {
            return new zp8(clsD);
        }
        throw new NoSuchMethodError("Can't find `getType` method");
    }
}

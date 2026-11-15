package defpackage;

import freemarker.ext.beans.b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;

public final class ar8 extends qq0 {
    public final Member a;
    public final Class[] b;

    public ar8(Method method, Class[] clsArr) {
        this.a = method;
        this.b = clsArr;
    }

    @Override
    public String a() {
        return u0d.p(this.a);
    }

    @Override
    public Class[] b() {
        return this.b;
    }

    @Override
    public Object c(b bVar, Object[] objArr) {
        return ((Constructor) this.a).newInstance(objArr);
    }

    @Override
    public zfa d(b bVar, Object obj, Object[] objArr) {
        return bVar.y(obj, (Method) this.a, objArr);
    }

    @Override
    public boolean e() {
        return this.a instanceof Constructor;
    }

    @Override
    public boolean f() {
        return (this.a.getModifiers() & 8) != 0;
    }

    public boolean g() {
        return u0d.i(this.a);
    }

    public ar8(Constructor constructor, Class[] clsArr) {
        this.a = constructor;
        this.b = clsArr;
    }
}

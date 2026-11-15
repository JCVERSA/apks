package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import com.transsion.json.k;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

public class a8d {
    public final String a;
    public String b;
    public final l6d c;
    public Class d;
    public final Field e;
    public Method f;
    public Method g;
    public final Map h = new HashMap();
    public pfd i = null;
    public pfd j = null;
    public Boolean k = null;

    public a8d(String str, l6d l6dVar) {
        this.b = str;
        this.a = str;
        this.c = l6dVar;
        Field fieldB = l6dVar.b(str);
        this.e = fieldB;
        if (fieldB == null || !fieldB.isAnnotationPresent(pab.class)) {
            return;
        }
        c((pab) fieldB.getAnnotation(pab.class));
    }

    public Object a(Object obj) {
        try {
            Method methodI = i();
            if (methodI != null) {
                return methodI.invoke(obj, null);
            }
            Field field = this.e;
            if (field != null) {
                return field.get(obj);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new k("Error while reading property " + this.d.getName() + Consts.DOT + this.a, e);
        }
    }

    public String b() {
        return this.b;
    }

    public final void c(pab pabVar) {
        this.b = pabVar.name().length() > 0 ? pabVar.name() : this.a;
        this.i = pabVar.transformer() == mod.class ? null : new pfd(pabVar.transformer());
        this.j = pabVar.objectFactory() != tpd.class ? new pfd(pabVar.objectFactory()) : null;
        this.k = Boolean.valueOf(pabVar.include());
    }

    public void d(Method method) {
        Class<?> cls = method.getParameterTypes()[0];
        if (this.d == null) {
            this.d = cls;
        }
        this.h.put(cls, method);
        method.setAccessible(true);
    }

    public String e() {
        return this.a;
    }

    public void f(Method method) {
        if (this.d == null) {
            this.d = method.getReturnType();
            this.f = method;
            method.setAccessible(true);
        } else if (method.getReturnType().isAssignableFrom(this.d)) {
            this.f = method;
            method.setAccessible(true);
        }
        Method method2 = this.f;
        if (method2 == null || !method2.isAnnotationPresent(pab.class)) {
            return;
        }
        c((pab) this.f.getAnnotation(pab.class));
    }

    public Field g() {
        return this.e;
    }

    public Class h() {
        return this.d;
    }

    public Method i() {
        return (this.f == null && this.c.e() != null && this.c.e().h(this.a)) ? this.c.e().f(this.a).i() : this.f;
    }

    public mod j() {
        pfd pfdVar = this.i;
        if (pfdVar != null) {
            return (mod) pfdVar.a();
        }
        return null;
    }

    public Method k() {
        if (this.g == null) {
            Method method = (Method) this.h.get(this.d);
            this.g = method;
            if (method == null && this.c.e() != null && this.c.e().h(this.a)) {
                return this.c.e().f(this.a).k();
            }
        }
        return this.g;
    }

    public Boolean l() {
        return this.k;
    }

    public boolean m() {
        return i() == null && k() == null && !Modifier.isPublic(this.e.getModifiers());
    }

    public Boolean n() {
        Field field;
        Method methodI = i();
        return Boolean.valueOf(((methodI == null || Modifier.isStatic(methodI.getModifiers())) && ((field = this.e) == null || Modifier.isStatic(field.getModifiers()) || Modifier.isTransient(this.e.getModifiers()))) ? false : true);
    }

    public Boolean o() {
        Field field = this.e;
        return Boolean.valueOf(field != null && Modifier.isTransient(field.getModifiers()));
    }

    public Boolean p() {
        Field field;
        return Boolean.valueOf((k() == null && ((field = this.e) == null || !Modifier.isPublic(field.getModifiers()) || Modifier.isTransient(this.e.getModifiers()))) ? false : true);
    }

    public a8d(Field field, l6d l6dVar) {
        String name = field.getName();
        this.b = name;
        this.a = name;
        this.c = l6dVar;
        this.e = field;
        this.d = field.getType();
        if (field.isAnnotationPresent(pab.class)) {
            c((pab) field.getAnnotation(pab.class));
        }
    }
}

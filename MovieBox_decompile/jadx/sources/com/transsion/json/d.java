package com.transsion.json;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

public class d {

    private final String f44686a;

    private String f44687b;

    private final c f44688c;

    private Class f44689d;

    protected final Field f44690e;

    protected Method f44691f;

    protected Method f44692g;

    protected final Map f44693h = new HashMap();

    protected g f44694i = null;

    protected g f44695j = null;

    protected Boolean f44696k = null;

    public d(String str, c cVar) {
        this.f44687b = str;
        this.f44686a = str;
        this.f44688c = cVar;
        Field fieldB = cVar.b(str);
        this.f44690e = fieldB;
        if (fieldB == null || !fieldB.isAnnotationPresent(nl.a.class)) {
            return;
        }
        d((nl.a) fieldB.getAnnotation(nl.a.class));
    }

    private void d(nl.a aVar) {
        this.f44687b = aVar.name().length() > 0 ? aVar.name() : this.f44686a;
        this.f44694i = aVar.transformer() == com.transsion.json.b.n.class ? null : new g(aVar.transformer());
        this.f44695j = aVar.objectFactory() != o.class ? new g(aVar.objectFactory()) : null;
        this.f44696k = Boolean.valueOf(aVar.include());
    }

    public Object a(Object obj) {
        try {
            Method methodI = i();
            if (methodI != null) {
                return methodI.invoke(obj, null);
            }
            Field field = this.f44690e;
            if (field != null) {
                return field.get(obj);
            }
            return null;
        } catch (IllegalAccessException e10) {
            e = e10;
            throw new k("Error while reading property " + this.f44689d.getName() + "." + this.f44686a, e);
        } catch (InvocationTargetException e11) {
            e = e11;
            throw new k("Error while reading property " + this.f44689d.getName() + "." + this.f44686a, e);
        }
    }

    public String b() {
        return this.f44687b;
    }

    public void c(Method method) {
        Class<?> cls = method.getParameterTypes()[0];
        if (this.f44689d == null) {
            this.f44689d = cls;
        }
        this.f44693h.put(cls, method);
        method.setAccessible(true);
    }

    public String e() {
        return this.f44686a;
    }

    public void f(Method method) {
        if (this.f44689d == null) {
            this.f44689d = method.getReturnType();
            this.f44691f = method;
            method.setAccessible(true);
        } else if (method.getReturnType().isAssignableFrom(this.f44689d)) {
            this.f44691f = method;
            method.setAccessible(true);
        }
        Method method2 = this.f44691f;
        if (method2 == null || !method2.isAnnotationPresent(nl.a.class)) {
            return;
        }
        d((nl.a) this.f44691f.getAnnotation(nl.a.class));
    }

    public Field g() {
        return this.f44690e;
    }

    public Class h() {
        return this.f44689d;
    }

    public Method i() {
        return (this.f44691f == null && this.f44688c.e() != null && this.f44688c.e().h(this.f44686a)) ? this.f44688c.e().f(this.f44686a).i() : this.f44691f;
    }

    public com.transsion.json.b.n j() {
        g gVar = this.f44694i;
        if (gVar != null) {
            return (com.transsion.json.b.n) gVar.a();
        }
        return null;
    }

    public Method k() {
        if (this.f44692g == null) {
            Method method = (Method) this.f44693h.get(this.f44689d);
            this.f44692g = method;
            if (method == null && this.f44688c.e() != null && this.f44688c.e().h(this.f44686a)) {
                return this.f44688c.e().f(this.f44686a).k();
            }
        }
        return this.f44692g;
    }

    public Boolean l() {
        return this.f44696k;
    }

    protected boolean m() {
        return i() == null && k() == null && !Modifier.isPublic(this.f44690e.getModifiers());
    }

    public Boolean n() {
        Field field;
        Method methodI = i();
        return Boolean.valueOf(((methodI == null || Modifier.isStatic(methodI.getModifiers())) && ((field = this.f44690e) == null || Modifier.isStatic(field.getModifiers()) || Modifier.isTransient(this.f44690e.getModifiers()))) ? false : true);
    }

    public Boolean o() {
        Field field = this.f44690e;
        return Boolean.valueOf(field != null && Modifier.isTransient(field.getModifiers()));
    }

    public Boolean p() {
        Field field;
        return Boolean.valueOf((k() == null && ((field = this.f44690e) == null || !Modifier.isPublic(field.getModifiers()) || Modifier.isTransient(this.f44690e.getModifiers()))) ? false : true);
    }

    public d(Field field, c cVar) {
        String name = field.getName();
        this.f44687b = name;
        this.f44686a = name;
        this.f44688c = cVar;
        this.f44690e = field;
        this.f44689d = field.getType();
        if (field.isAnnotationPresent(nl.a.class)) {
            d((nl.a) field.getAnnotation(nl.a.class));
        }
    }
}

package com.transsion.json;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class m {

    private final Map f44732d;

    private final LinkedList f44729a = new LinkedList();

    private final LinkedList f44730b = new LinkedList();

    private final q f44731c = new q();

    private final Map f44733e = new HashMap();

    public m() {
        HashMap map = new HashMap();
        this.f44732d = map;
        map.put(Object.class, new ml.b());
        map.put(Collection.class, new ml.k());
        map.put(List.class, new ml.k());
        map.put(Set.class, new ml.n());
        map.put(Map.class, new ml.m());
        map.put(Integer.class, new ml.i());
        map.put(Integer.TYPE, new ml.i());
        map.put(Float.class, new ml.h());
        map.put(Float.TYPE, new ml.h());
        map.put(Double.class, new ml.f());
        map.put(Double.TYPE, new ml.f());
        map.put(Long.class, new ml.l());
        map.put(Long.TYPE, new ml.l());
        map.put(Byte.class, new ml.d());
        map.put(Byte.TYPE, new ml.d());
        map.put(Boolean.class, new ml.c());
        map.put(Boolean.TYPE, new ml.c());
        map.put(Character.class, new ml.e());
        map.put(Character.TYPE, new ml.e());
        map.put(Enum.class, new ml.g());
        map.put(String.class, new ml.o());
        map.put(Array.class, new ml.a());
        map.put(n.class, new ml.j());
    }

    private o c(Class cls) {
        o oVar = (o) this.f44732d.get(cls);
        if (oVar != null || cls == null) {
            return oVar;
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            o oVarC = c(cls2);
            if (oVarC != null) {
                return oVarC;
            }
        }
        if (cls.getSuperclass() != null) {
            return c(cls.getSuperclass());
        }
        return null;
    }

    private Class g(Type type) {
        if (type == null) {
            return null;
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.class;
        }
        if ((type instanceof WildcardType) || (type instanceof TypeVariable)) {
            return null;
        }
        throw new k(this.f44731c + ":  Unknown type " + type);
    }

    private String m(String str) {
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    private Type n(Type type, Type type2) {
        if ((type instanceof Class) || (type instanceof ParameterizedType)) {
            return type;
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return type2;
        }
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        throw new k(this.f44731c + ":  Unknown generic type " + type + ".");
    }

    private boolean p(Map map, d dVar) {
        return map.containsKey(dVar.b()) || map.containsKey(m(dVar.b()));
    }

    private o r(Class cls) {
        o oVar = (o) this.f44733e.get(this.f44731c);
        if (oVar == null) {
            return (cls == null || !cls.isArray()) ? c(cls) : (o) this.f44732d.get(Array.class);
        }
        return oVar;
    }

    private Object s(Map map, d dVar) {
        Object obj = map.get(dVar.b());
        return obj == null ? map.get(m(dVar.b())) : obj;
    }

    private Class t(Object obj, Class cls) {
        if (this.f44733e.containsKey(this.f44731c)) {
            return null;
        }
        Class clsF = f(obj instanceof Map ? h((Map) obj, null) : null, cls);
        return clsF == null ? obj.getClass() : clsF;
    }

    public m a(q qVar, o oVar) {
        this.f44733e.put(qVar, oVar);
        return this;
    }

    public m b(Class cls, o oVar) {
        this.f44732d.put(cls, oVar);
        return this;
    }

    public q d() {
        return this.f44731c;
    }

    public Class e(q qVar) {
        return null;
    }

    protected Class f(Class cls, Class cls2) {
        if (cls != null && cls2 != null) {
            return cls2.isAssignableFrom(cls) ? cls : cls2;
        }
        if (cls2 != null) {
            return cls2;
        }
        if (cls != null) {
            return cls;
        }
        return null;
    }

    protected Class h(Map map, Class cls) {
        if (cls != null) {
            return cls;
        }
        String str = (String) map.get("class");
        if (str == null) {
            return null;
        }
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            return contextClassLoader != null ? contextClassLoader.loadClass(str) : Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new k(String.format("%s:  Could not load %s", this.f44731c, str), e10);
        }
    }

    public Object i(Object obj) {
        return j(obj, null);
    }

    public Object j(Object obj, Type type) {
        this.f44730b.add(obj);
        if (obj == null) {
            this.f44730b.removeLast();
            return null;
        }
        try {
            Class clsT = t(obj, g(type));
            o oVarR = r(clsT);
            if (oVarR != null) {
                Object objA = oVarR.a(this, obj, type, clsT);
                this.f44730b.removeLast();
                return objA;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f44731c);
            sb2.append(": + Could not find a suitable ObjectFactory for ");
            sb2.append(clsT);
            throw new k(sb2.toString());
        } catch (Throwable th2) {
            this.f44730b.removeLast();
            throw th2;
        }
    }

    public Object k(Map map, Object obj, Type type) {
        try {
            this.f44729a.add(obj);
            c cVarA = c.a(obj.getClass());
            for (d dVar : cVarA != null ? cVarA.c() : null) {
                if (p(map, dVar)) {
                    Object objS = s(map, dVar);
                    if (dVar.p().booleanValue()) {
                        this.f44731c.a(dVar.e());
                        Method methodK = dVar.k();
                        if (methodK != null) {
                            Type[] genericParameterTypes = methodK.getGenericParameterTypes();
                            if (genericParameterTypes.length != 1) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(this.f44731c);
                                sb2.append(":  Expected a single parameter for method ");
                                sb2.append(obj.getClass().getName());
                                sb2.append(".");
                                sb2.append(methodK.getName());
                                sb2.append(" but got ");
                                sb2.append(genericParameterTypes.length);
                                throw new k(sb2.toString());
                            }
                            methodK.invoke(this.f44729a.getLast(), j(objS, n(genericParameterTypes[0], type)));
                        } else {
                            Field fieldG = dVar.g();
                            if (fieldG != null) {
                                fieldG.setAccessible(true);
                                fieldG.set(obj, j(objS, fieldG.getGenericType()));
                            }
                        }
                        this.f44731c.d();
                    } else {
                        continue;
                    }
                }
            }
            return this.f44729a.removeLast();
        } catch (IllegalAccessException e10) {
            throw new k(this.f44731c + ":  Could not access the no-arg constructor for " + obj.getClass().getName(), e10);
        } catch (InvocationTargetException e11) {
            throw new k(this.f44731c + ":  Exception while trying to invoke setter method.", e11);
        }
    }

    public Object l(Map map, Map map2, Type type, Type type2) {
        this.f44730b.add(map);
        this.f44729a.add(map2);
        for (Object obj : map.keySet()) {
            this.f44731c.a("keys");
            Object objJ = j(obj, type);
            this.f44731c.d();
            this.f44731c.a("values");
            Object objJ2 = j(map.get(obj), type2);
            this.f44731c.d();
            map2.put(objJ, objJ2);
        }
        this.f44729a.removeLast();
        this.f44730b.removeLast();
        return map2;
    }

    public Collection o(Collection collection, Collection collection2, Type type) {
        Type type2 = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        this.f44730b.add(collection);
        this.f44729a.add(collection2);
        d().a("values");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            collection2.add(j(it.next(), type2));
        }
        d().d();
        this.f44729a.removeLast();
        this.f44730b.removeLast();
        return collection2;
    }

    public k q(Object obj, Class cls) {
        return new k(String.format("%s:  Can not convert %s into %s", this.f44731c, obj.getClass().getName(), cls.getName()));
    }
}

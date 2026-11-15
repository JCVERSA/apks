package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import com.transsion.json.k;
import com.transsion.json.n;
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

public class yod {
    public final Map d;
    public final LinkedList a = new LinkedList();
    public final LinkedList b = new LinkedList();
    public final prd c = new prd();
    public final Map e = new HashMap();

    public yod() {
        HashMap map = new HashMap();
        this.d = map;
        map.put(Object.class, new n6d());
        map.put(Collection.class, new emd());
        map.put(List.class, new emd());
        map.put(Set.class, new apd());
        map.put(Map.class, new lod());
        map.put(Integer.class, new hkd());
        map.put(Integer.TYPE, new hkd());
        map.put(Float.class, new rid());
        map.put(Float.TYPE, new rid());
        map.put(Double.class, new qfd());
        map.put(Double.TYPE, new qfd());
        map.put(Long.class, new knd());
        map.put(Long.TYPE, new knd());
        map.put(Byte.class, new m9d());
        map.put(Byte.TYPE, new m9d());
        map.put(Boolean.class, new b8d());
        map.put(Boolean.TYPE, new b8d());
        map.put(Character.class, new cbd());
        map.put(Character.TYPE, new cbd());
        map.put(Enum.class, new ugd());
        map.put(String.class, new upd());
        map.put(Array.class, new v2d());
        map.put(n.class, new fld());
    }

    public Class a(Class cls, Class cls2) {
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

    public final Class b(Type type) {
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
        throw new k(this.c + ":  Unknown type " + type);
    }

    public Class c(Map map, Class cls) {
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
        } catch (ClassNotFoundException e) {
            throw new k(String.format("%s:  Could not load %s", this.c, str), e);
        }
    }

    public Class d(prd prdVar) {
        return null;
    }

    public Object e(Object obj) {
        return f(obj, null);
    }

    public Object f(Object obj, Type type) {
        this.b.add(obj);
        if (obj == null) {
            this.b.removeLast();
            return null;
        }
        try {
            Class clsT = t(obj, b(type));
            tpd tpdVarS = s(clsT);
            if (tpdVarS != null) {
                Object objA = tpdVarS.a(this, obj, type, clsT);
                this.b.removeLast();
                return objA;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.c);
            sb.append(": + Could not find a suitable ObjectFactory for ");
            sb.append(clsT);
            throw new k(sb.toString());
        } catch (Throwable th) {
            this.b.removeLast();
            throw th;
        }
    }

    public Object g(Map map, Object obj, Type type) {
        try {
            this.a.add(obj);
            l6d l6dVarA = l6d.a(obj.getClass());
            for (a8d a8dVar : l6dVarA != null ? l6dVarA.c() : null) {
                if (p(map, a8dVar)) {
                    Object objR = r(map, a8dVar);
                    if (a8dVar.p().booleanValue()) {
                        this.c.b(a8dVar.e());
                        Method methodK = a8dVar.k();
                        if (methodK != null) {
                            Type[] genericParameterTypes = methodK.getGenericParameterTypes();
                            if (genericParameterTypes.length != 1) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(this.c);
                                sb.append(":  Expected a single parameter for method ");
                                sb.append(obj.getClass().getName());
                                sb.append(Consts.DOT);
                                sb.append(methodK.getName());
                                sb.append(" but got ");
                                sb.append(genericParameterTypes.length);
                                throw new k(sb.toString());
                            }
                            methodK.invoke(this.a.getLast(), f(objR, j(genericParameterTypes[0], type)));
                        } else {
                            Field fieldG = a8dVar.g();
                            if (fieldG != null) {
                                fieldG.setAccessible(true);
                                fieldG.set(obj, f(objR, fieldG.getGenericType()));
                            }
                        }
                        this.c.d();
                    } else {
                        continue;
                    }
                }
            }
            return this.a.removeLast();
        } catch (IllegalAccessException e) {
            throw new k(this.c + ":  Could not access the no-arg constructor for " + obj.getClass().getName(), e);
        } catch (InvocationTargetException e2) {
            throw new k(this.c + ":  Exception while trying to invoke setter method.", e2);
        }
    }

    public Object h(Map map, Map map2, Type type, Type type2) {
        this.b.add(map);
        this.a.add(map2);
        for (Object obj : map.keySet()) {
            this.c.b("keys");
            Object objF = f(obj, type);
            this.c.d();
            this.c.b("values");
            Object objF2 = f(map.get(obj), type2);
            this.c.d();
            map2.put(objF, objF2);
        }
        this.a.removeLast();
        this.b.removeLast();
        return map2;
    }

    public final String i(String str) {
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    public final Type j(Type type, Type type2) {
        if ((type instanceof Class) || (type instanceof ParameterizedType)) {
            return type;
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return type2;
        }
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        throw new k(this.c + ":  Unknown generic type " + type + Consts.DOT);
    }

    public Collection k(Collection collection, Collection collection2, Type type) {
        Type type2 = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        this.b.add(collection);
        this.a.add(collection2);
        o().b("values");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            collection2.add(f(it.next(), type2));
        }
        o().d();
        this.a.removeLast();
        this.b.removeLast();
        return collection2;
    }

    public yod l(Class cls, tpd tpdVar) {
        this.d.put(cls, tpdVar);
        return this;
    }

    public yod m(prd prdVar, tpd tpdVar) {
        this.e.put(prdVar, tpdVar);
        return this;
    }

    public final tpd n(Class cls) {
        tpd tpdVar = (tpd) this.d.get(cls);
        if (tpdVar != null || cls == null) {
            return tpdVar;
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            tpd tpdVarN = n(cls2);
            if (tpdVarN != null) {
                return tpdVarN;
            }
        }
        if (cls.getSuperclass() != null) {
            return n(cls.getSuperclass());
        }
        return null;
    }

    public prd o() {
        return this.c;
    }

    public final boolean p(Map map, a8d a8dVar) {
        return map.containsKey(a8dVar.b()) || map.containsKey(i(a8dVar.b()));
    }

    public k q(Object obj, Class cls) {
        return new k(String.format("%s:  Can not convert %s into %s", this.c, obj.getClass().getName(), cls.getName()));
    }

    public final Object r(Map map, a8d a8dVar) {
        Object obj = map.get(a8dVar.b());
        return obj == null ? map.get(i(a8dVar.b())) : obj;
    }

    public final tpd s(Class cls) {
        tpd tpdVar = (tpd) this.e.get(this.c);
        if (tpdVar == null) {
            return (cls == null || !cls.isArray()) ? n(cls) : (tpd) this.d.get(Array.class);
        }
        return tpdVar;
    }

    public final Class t(Object obj, Class cls) {
        if (this.e.containsKey(this.c)) {
            return null;
        }
        Class clsA = a(obj instanceof Map ? c((Map) obj, null) : null, cls);
        return clsA == null ? obj.getClass() : clsA;
    }
}

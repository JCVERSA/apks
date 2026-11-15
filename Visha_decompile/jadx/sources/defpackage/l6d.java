package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class l6d {
    public static final ThreadLocal d = new ThreadLocal();
    public final Class a;
    public final l6d b;
    public Map c;

    public l6d(Class cls) {
        this.a = cls;
        this.b = a(cls.getSuperclass());
        g();
    }

    public static l6d a(Class cls) {
        ThreadLocal threadLocal = d;
        if (threadLocal.get() == null) {
            threadLocal.set(new HashMap());
        }
        if (cls == null) {
            return null;
        }
        if (!((Map) threadLocal.get()).containsKey(cls)) {
            ((Map) threadLocal.get()).put(cls, new l6d(cls));
        }
        return (l6d) ((Map) threadLocal.get()).get(cls);
    }

    public Field b(String str) {
        try {
            return this.a.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    public Collection c() {
        TreeMap treeMap = new TreeMap(this.c);
        for (l6d l6dVar = this.b; l6dVar != null; l6dVar = l6dVar.b) {
            d(treeMap, l6dVar.c);
        }
        return treeMap.values();
    }

    public final void d(Map map, Map map2) {
        for (String str : map2.keySet()) {
            if (!map.containsKey(str)) {
                map.put(str, map2.get(str));
            }
        }
    }

    public l6d e() {
        return this.b;
    }

    public a8d f(String str) {
        while (this != null) {
            a8d a8dVar = (a8d) this.c.get(str);
            if (a8dVar != null) {
                return a8dVar;
            }
            this = this.b;
        }
        return null;
    }

    public final void g() {
        this.c = new TreeMap();
        for (Field field : this.a.getDeclaredFields()) {
            if (!Modifier.isStatic(field.getModifiers()) && !this.c.containsKey(field.getName())) {
                this.c.put(field.getName(), new a8d(field, this));
            }
        }
        for (Method method : this.a.getDeclaredMethods()) {
            if (!Modifier.isStatic(method.getModifiers())) {
                int length = method.getParameterTypes().length;
                String name = method.getName();
                if (name.length() > 3 || name.startsWith("is")) {
                    if (length == 0) {
                        if (name.startsWith("get")) {
                            String strI = i(name.substring(3));
                            if (!this.c.containsKey(strI)) {
                                this.c.put(strI, new a8d(strI, this));
                            }
                            ((a8d) this.c.get(strI)).f(method);
                        } else if (name.startsWith("is")) {
                            String strI2 = i(name.substring(2));
                            if (!this.c.containsKey(strI2)) {
                                this.c.put(strI2, new a8d(strI2, this));
                            }
                            ((a8d) this.c.get(strI2)).f(method);
                        }
                    } else if (length == 1 && name.startsWith("set")) {
                        String strI3 = i(name.substring(3));
                        if (!this.c.containsKey(strI3)) {
                            this.c.put(strI3, new a8d(strI3, this));
                        }
                        ((a8d) this.c.get(strI3)).d(method);
                    }
                }
            }
        }
        Iterator it = this.c.values().iterator();
        while (it.hasNext()) {
            if (((a8d) it.next()).m()) {
                it.remove();
            }
        }
    }

    public boolean h(String str) {
        l6d l6dVar;
        return this.c.containsKey(str) || ((l6dVar = this.b) != null && l6dVar.h(str));
    }

    public final String i(String str) {
        if (str.length() < 2) {
            return str.toLowerCase();
        }
        if (Character.isUpperCase(str.charAt(0)) && Character.isUpperCase(str.charAt(1))) {
            return str;
        }
        return Character.toLowerCase(str.charAt(0)) + str.substring(1);
    }
}

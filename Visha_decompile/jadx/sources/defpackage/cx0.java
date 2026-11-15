package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class cx0 implements de5, kw0 {
    public static final a c = new a(null);
    public static final Map d;
    public static final HashMap e;
    public static final HashMap f;
    public static final HashMap g;
    public static final Map h;
    public final Class b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Class cls) {
            String str;
            y45.j(cls, "jClass");
            String str2 = null;
            if (cls.isAnonymousClass() || cls.isLocalClass()) {
                return null;
            }
            if (!cls.isArray()) {
                String str3 = (String) cx0.g.get(cls.getName());
                return str3 == null ? cls.getCanonicalName() : str3;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (str = (String) cx0.g.get(componentType.getName())) != null) {
                str2 = str + "Array";
            }
            return str2 == null ? "kotlin.Array" : str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        
            if (r1 == null) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final String b(Class cls) {
            String strX0;
            String str;
            y45.j(cls, "jClass");
            String str2 = null;
            if (cls.isAnonymousClass()) {
                return null;
            }
            if (cls.isLocalClass()) {
                String simpleName = cls.getSimpleName();
                Method enclosingMethod = cls.getEnclosingMethod();
                if (enclosingMethod != null) {
                    y45.g(simpleName);
                    strX0 = j1a.X0(simpleName, enclosingMethod.getName() + '$', null, 2, null);
                }
                Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                if (enclosingConstructor == null) {
                    y45.g(simpleName);
                    return j1a.W0(simpleName, '$', null, 2, null);
                }
                y45.g(simpleName);
                return j1a.X0(simpleName, enclosingConstructor.getName() + '$', null, 2, null);
            }
            if (!cls.isArray()) {
                String str3 = (String) cx0.h.get(cls.getName());
                return str3 == null ? cls.getSimpleName() : str3;
            }
            Class<?> componentType = cls.getComponentType();
            strX0 = "Array";
            if (componentType.isPrimitive() && (str = (String) cx0.h.get(componentType.getName())) != null) {
                str2 = str + "Array";
            }
            if (str2 != null) {
                return str2;
            }
            return strX0;
        }

        public final boolean c(Object obj, Class cls) {
            y45.j(cls, "jClass");
            Map map = cx0.d;
            y45.h(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
            Integer num = (Integer) map.get(cls);
            if (num != null) {
                return ccb.m(obj, num.intValue());
            }
            if (cls.isPrimitive()) {
                cls = ed5.c(ed5.e(cls));
            }
            return cls.isInstance(obj);
        }

        public a() {
        }
    }

    static {
        List listN = y71.n(c74.class, e74.class, s74.class, u74.class, w74.class, y74.class, z74.class, a84.class, b84.class, c84.class, d74.class, f74.class, g74.class, h74.class, i74.class, j74.class, k74.class, l74.class, m74.class, n74.class, p74.class, q74.class, r74.class);
        ArrayList arrayList = new ArrayList(z71.v(listN, 10));
        int i = 0;
        for (Object obj : listN) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            arrayList.add(abb.a((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        d = kotlin.collections.a.y(arrayList);
        HashMap map = new HashMap();
        map.put(TypedValues.Custom.S_BOOLEAN, "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put(TypedValues.Custom.S_FLOAT, "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        e = map;
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        f = map2;
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        y45.i(collectionValues, "<get-values>(...)");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            y45.g(str);
            sb.append(j1a.a1(str, '.', null, 2, null));
            sb.append("CompanionObject");
            Pair pairA = abb.a(sb.toString(), str + ".Companion");
            map3.put(pairA.getFirst(), pairA.getSecond());
        }
        for (Map.Entry entry : d.entrySet()) {
            map3.put(((Class) entry.getKey()).getName(), "kotlin.Function" + ((Number) entry.getValue()).intValue());
        }
        g = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            Object key = entry2.getKey();
            String str2 = (String) entry2.getValue();
            y45.g(str2);
            linkedHashMap.put(key, j1a.a1(str2, '.', null, 2, null));
        }
        h = linkedHashMap;
    }

    public cx0(Class cls) {
        y45.j(cls, "jClass");
        this.b = cls;
    }

    @Override
    public String c() {
        return c.a(d());
    }

    @Override
    public Class d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        return (obj instanceof cx0) && y45.e(ed5.c(this), ed5.c((de5) obj));
    }

    @Override
    public boolean g() {
        r();
        throw new KotlinNothingValueException();
    }

    @Override
    public List getAnnotations() {
        r();
        throw new KotlinNothingValueException();
    }

    public int hashCode() {
        return ed5.c(this).hashCode();
    }

    @Override
    public boolean i() {
        r();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean isAbstract() {
        r();
        throw new KotlinNothingValueException();
    }

    @Override
    public Object m() {
        r();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean n(Object obj) {
        return c.c(obj, d());
    }

    @Override
    public String o() {
        return c.b(d());
    }

    public final Void r() {
        throw new KotlinReflectionNotSupportedError();
    }

    @Override
    public boolean s() {
        r();
        throw new KotlinNothingValueException();
    }

    public String toString() {
        return d() + " (Kotlin reflection is not available)";
    }
}

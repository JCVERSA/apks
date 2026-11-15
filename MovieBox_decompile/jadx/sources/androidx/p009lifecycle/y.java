package androidx.p009lifecycle;

import android.support.v4.media.session.c;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class y {

    public static final y f9360a = new y();

    private static final Map f9361b = new HashMap();

    private static final Map f9362c = new HashMap();

    private y() {
    }

    private final k a(Constructor constructor, Object obj) {
        try {
            Object objNewInstance = constructor.newInstance(obj);
            Intrinsics.g(objNewInstance, "{\n            constructo…tance(`object`)\n        }");
            c.a(objNewInstance);
            return null;
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException(e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Constructor b(Class cls) {
        try {
            Package r10 = cls.getPackage();
            String name = cls.getCanonicalName();
            String fullPackage = r10 != null ? r10.getName() : "";
            Intrinsics.g(fullPackage, "fullPackage");
            if (fullPackage.length() != 0) {
                Intrinsics.g(name, "name");
                name = name.substring(fullPackage.length() + 1);
                Intrinsics.g(name, "this as java.lang.String).substring(startIndex)");
            }
            Intrinsics.g(name, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
            String strC = c(name);
            if (fullPackage.length() != 0) {
                strC = fullPackage + '.' + strC;
            }
            Class<?> cls2 = Class.forName(strC);
            Intrinsics.f(cls2, "null cannot be cast to non-null type java.lang.Class<out androidx.lifecycle.GeneratedAdapter>");
            Constructor declaredConstructor = cls2.getDeclaredConstructor(cls);
            if (declaredConstructor.isAccessible()) {
                return declaredConstructor;
            }
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static final String c(String className) {
        Intrinsics.h(className, "className");
        return StringsKt.Q(className, ".", "_", false, 4, null) + "_LifecycleAdapter";
    }

    private final int d(Class cls) {
        Map map = f9361b;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int iG = g(cls);
        map.put(cls, Integer.valueOf(iG));
        return iG;
    }

    private final boolean e(Class cls) {
        return cls != null && t.class.isAssignableFrom(cls);
    }

    public static final r f(Object object) {
        Intrinsics.h(object, "object");
        boolean z10 = object instanceof r;
        boolean z11 = object instanceof f;
        if (z10 && z11) {
            return new g((f) object, (r) object);
        }
        if (z11) {
            return new g((f) object, null);
        }
        if (z10) {
            return (r) object;
        }
        Class<?> cls = object.getClass();
        y yVar = f9360a;
        if (yVar.d(cls) != 2) {
            return new h0(object);
        }
        Object obj = f9362c.get(cls);
        Intrinsics.e(obj);
        List list = (List) obj;
        if (list.size() == 1) {
            yVar.a((Constructor) list.get(0), object);
            return new s0(null);
        }
        int size = list.size();
        k[] kVarArr = new k[size];
        for (int i10 = 0; i10 < size; i10++) {
            f9360a.a((Constructor) list.get(i10), object);
            kVarArr[i10] = null;
        }
        return new d(kVarArr);
    }

    private final int g(Class cls) {
        ArrayList arrayList;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor constructorB = b(cls);
        if (constructorB != null) {
            f9362c.put(cls, CollectionsKt.e(constructorB));
            return 2;
        }
        if (c.f9266c.d(cls)) {
            return 1;
        }
        Class superclass = cls.getSuperclass();
        if (e(superclass)) {
            Intrinsics.g(superclass, "superclass");
            if (d(superclass) == 1) {
                return 1;
            }
            Object obj = f9362c.get(superclass);
            Intrinsics.e(obj);
            arrayList = new ArrayList((Collection) obj);
        } else {
            arrayList = null;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        Intrinsics.g(interfaces, "klass.interfaces");
        for (Class<?> intrface : interfaces) {
            if (e(intrface)) {
                Intrinsics.g(intrface, "intrface");
                if (d(intrface) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                Object obj2 = f9362c.get(intrface);
                Intrinsics.e(obj2);
                arrayList.addAll((Collection) obj2);
            }
        }
        if (arrayList == null) {
            return 1;
        }
        f9362c.put(cls, arrayList);
        return 2;
    }
}

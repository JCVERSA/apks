package androidx.room.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class f {
    public static final Object a(Class klass, String suffix) {
        String name;
        String str;
        Intrinsics.h(klass, "klass");
        Intrinsics.h(suffix, "suffix");
        Package r10 = klass.getPackage();
        if (r10 == null || (name = r10.getName()) == null) {
            name = "";
        }
        String canonicalName = klass.getCanonicalName();
        Intrinsics.e(canonicalName);
        if (name.length() != 0) {
            canonicalName = canonicalName.substring(name.length() + 1);
            Intrinsics.g(canonicalName, "substring(...)");
        }
        String str2 = StringsKt.P(canonicalName, '.', '_', false, 4, null) + suffix;
        try {
            if (name.length() == 0) {
                str = str2;
            } else {
                str = name + '.' + str2;
            }
            Class<?> cls = Class.forName(str, true, klass.getClassLoader());
            Intrinsics.f(cls, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.util.KClassUtil.findAndInstantiateDatabaseImpl>");
            return cls.getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("Cannot find implementation for " + klass.getCanonicalName() + ". " + str2 + " does not exist. Is Room annotation processor correctly configured?", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("Cannot access the constructor " + klass.getCanonicalName(), e11);
        } catch (InstantiationException e12) {
            throw new RuntimeException("Failed to create an instance of " + klass.getCanonicalName(), e12);
        }
    }

    public static Object b(Class cls, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "_Impl";
        }
        return a(cls, str);
    }
}

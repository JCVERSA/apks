package com.yandex.mobile.ads.impl;

import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.y45;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

public final class jo1 {

    public static final class a {
        private a() {
        }

        public static final Class[] a(Object... objArr) {
            ArrayList arrayList = new ArrayList();
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                Class<?> cls = obj != null ? obj.getClass() : null;
                if (cls != null) {
                    arrayList.add(cls);
                }
            }
            return (Class[]) arrayList.toArray(new Class[0]);
        }

        public a(int i) {
            this();
        }

        public static Object a(Object obj, Class cls, String str, Class[] clsArr, Object... objArr) {
            y45.j(cls, "clazz");
            y45.j(str, "methodName");
            y45.j(clsArr, "argumentsTypes");
            y45.j(objArr, "arguments");
            Object objInvoke = null;
            try {
                Method methodA = a(cls, str, clsArr);
                if (methodA == null) {
                    return null;
                }
                methodA.setAccessible(true);
                objInvoke = methodA.invoke(obj, Arrays.copyOf(objArr, objArr.length));
                methodA.setAccessible(false);
                return objInvoke;
            } catch (Throwable unused) {
                int i = sp0.b;
                y45.j(new Object[]{str}, "args");
                return objInvoke;
            }
        }

        public static Object a(Object obj, String str, Object... objArr) {
            y45.j(obj, "obj");
            y45.j(str, "methodName");
            y45.j(objArr, "arguments");
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ArrayList arrayList = new ArrayList();
            int length = objArrCopyOf.length;
            for (int i = 0; i < length; i++) {
                Object obj2 = objArrCopyOf[i];
                Class<?> cls = obj2 != null ? obj2.getClass() : null;
                if (cls != null) {
                    arrayList.add(cls);
                }
            }
            return a(obj, obj.getClass(), str, (Class[]) arrayList.toArray(new Class[0]), Arrays.copyOf(objArr, objArr.length));
        }

        private static Method a(Class cls, String str, Class[] clsArr) {
            while (cls != null) {
                Method[] declaredMethods = cls.getDeclaredMethods();
                y45.g(declaredMethods);
                for (Method method : declaredMethods) {
                    y45.g(method);
                    Class<?>[] clsArr2 = (Class[]) Arrays.copyOf(clsArr, clsArr.length);
                    if (y45.e(str, method.getName())) {
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        if (parameterTypes.length == clsArr2.length) {
                            int length = parameterTypes.length;
                            for (int i = 0; i < length; i++) {
                                if (parameterTypes[i].isAssignableFrom(clsArr2[i])) {
                                }
                            }
                            return method;
                        }
                        continue;
                    }
                }
                cls = cls.getSuperclass();
            }
            return null;
        }

        public static Object a(String str, Object... objArr) throws Throwable {
            y45.j(str, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
            y45.j(objArr, "arguments");
            Class<?> cls = Class.forName(str);
            y45.g(cls);
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            ArrayList arrayList = new ArrayList(objArrCopyOf.length);
            for (Object obj : objArrCopyOf) {
                arrayList.add(obj.getClass());
            }
            Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
            try {
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
                boolean zIsAccessible = declaredConstructor.isAccessible();
                if (!zIsAccessible) {
                    declaredConstructor.setAccessible(true);
                }
                Object objNewInstance = declaredConstructor.newInstance(Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
                if (zIsAccessible) {
                    return objNewInstance;
                }
                declaredConstructor.setAccessible(false);
                return objNewInstance;
            } catch (Throwable unused) {
                Object[] objArr2 = {cls.getCanonicalName(), Arrays.toString(objArrCopyOf)};
                int i = sp0.b;
                y45.j(objArr2, "args");
                return null;
            }
        }
    }

    public static Object a(Class cls, String str, Object... objArr) {
        y45.j(cls, "clazz");
        y45.j(str, "methodName");
        y45.j(objArr, "arguments");
        return a.a(null, cls, str, a.a(Arrays.copyOf(objArr, objArr.length)), Arrays.copyOf(objArr, objArr.length));
    }
}

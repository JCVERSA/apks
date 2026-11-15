package org.lsposed.hiddenapibypass;

import android.util.Log;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import sun.misc.Unsafe;

public final class l {

    private static final Unsafe f68762a;

    private static final long f68763b;

    private static final long f68764c;

    private static final long f68765d;

    private static final long f68766e;

    private static final long f68767f;

    private static final long f68768g;

    private static final long f68769h;

    private static final long f68770i;

    private static final long f68771j;

    private static final long f68772k;

    private static final long f68773l;

    private static final long f68774m;

    private static final Set f68775n = new HashSet();

    static {
        try {
            Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", null).invoke(null, null);
            f68762a = unsafe;
            f68763b = unsafe.objectFieldOffset(c.class.getDeclaredField("artMethod"));
            f68764c = unsafe.objectFieldOffset(c.class.getDeclaredField("declaringClass"));
            long jObjectFieldOffset = unsafe.objectFieldOffset(f.class.getDeclaredField("artFieldOrMethod"));
            f68765d = jObjectFieldOffset;
            f68766e = unsafe.objectFieldOffset(g.class.getDeclaredField("info"));
            long jObjectFieldOffset2 = unsafe.objectFieldOffset(b.class.getDeclaredField("methods"));
            f68767f = jObjectFieldOffset2;
            long jObjectFieldOffset3 = unsafe.objectFieldOffset(b.class.getDeclaredField("iFields"));
            f68768g = jObjectFieldOffset3;
            f68769h = unsafe.objectFieldOffset(b.class.getDeclaredField("sFields"));
            f68770i = unsafe.objectFieldOffset(d.class.getDeclaredField("member"));
            Method declaredMethod = h.class.getDeclaredMethod("a", null);
            Method declaredMethod2 = h.class.getDeclaredMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, null);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle methodHandleUnreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle methodHandleUnreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j10 = unsafe.getLong(methodHandleUnreflect, jObjectFieldOffset);
            long j11 = unsafe.getLong(methodHandleUnreflect2, jObjectFieldOffset);
            long j12 = unsafe.getLong(h.class, jObjectFieldOffset2);
            long j13 = j11 - j10;
            f68771j = j13;
            f68772k = (j10 - j12) - j13;
            Field declaredField = h.class.getDeclaredField("i");
            Field declaredField2 = h.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle methodHandleUnreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            long j14 = unsafe.getLong(methodHandleUnreflectGetter, jObjectFieldOffset);
            long j15 = unsafe.getLong(methodHandleUnreflectGetter2, jObjectFieldOffset);
            long j16 = unsafe.getLong(h.class, jObjectFieldOffset3);
            f68773l = j15 - j14;
            f68774m = j14 - j16;
        } catch (ReflectiveOperationException e10) {
            Log.e("HiddenApiBypass", "Initialize error", e10);
            throw new ExceptionInInitializerError(e10);
        }
    }

    static boolean a(Class[] clsArr, Object[] objArr) {
        if (clsArr.length != objArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (clsArr[i10].isPrimitive()) {
                Class cls = clsArr[i10];
                if (cls == Integer.TYPE && !(objArr[i10] instanceof Integer)) {
                    return false;
                }
                if (cls == Byte.TYPE && !(objArr[i10] instanceof Byte)) {
                    return false;
                }
                if (cls == Character.TYPE && !(objArr[i10] instanceof Character)) {
                    return false;
                }
                if (cls == Boolean.TYPE && !(objArr[i10] instanceof Boolean)) {
                    return false;
                }
                if (cls == Double.TYPE && !(objArr[i10] instanceof Double)) {
                    return false;
                }
                if (cls == Float.TYPE && !(objArr[i10] instanceof Float)) {
                    return false;
                }
                if (cls == Long.TYPE && !(objArr[i10] instanceof Long)) {
                    return false;
                }
                if (cls == Short.TYPE && !(objArr[i10] instanceof Short)) {
                    return false;
                }
            } else {
                Object obj = objArr[i10];
                if (obj != null && !clsArr[i10].isInstance(obj)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean b(String... strArr) {
        Set set = f68775n;
        set.addAll(Arrays.asList(strArr));
        String[] strArr2 = new String[((HashSet) set).size()];
        set.toArray(strArr2);
        return d(strArr2);
    }

    public static Object c(Class cls, Object obj, String str, Object... objArr) throws NoSuchMethodException {
        if (obj != null && !cls.isInstance(obj)) {
            throw new IllegalArgumentException("this object is not an instance of the given class");
        }
        Method declaredMethod = e.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe = f68762a;
        long j10 = unsafe.getLong(cls, f68767f);
        if (j10 == 0) {
            throw new NoSuchMethodException("Cannot find matching method");
        }
        int i10 = unsafe.getInt(j10);
        for (int i11 = 0; i11 < i10; i11++) {
            f68762a.putLong(declaredMethod, f68763b, (((long) i11) * f68771j) + j10 + f68772k);
            if (str.equals(declaredMethod.getName()) && a(declaredMethod.getParameterTypes(), objArr)) {
                return declaredMethod.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static boolean d(String... strArr) {
        try {
            c(VMRuntime.class, c(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
            return true;
        } catch (Throwable th2) {
            Log.w("HiddenApiBypass", "setHiddenApiExemptions", th2);
            return false;
        }
    }
}

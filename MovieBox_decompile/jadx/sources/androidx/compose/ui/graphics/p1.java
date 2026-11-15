package androidx.compose.ui.graphics;

import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

public final class p1 {

    public static final p1 f4302a = new p1();

    private static Method f4303b;

    private static Method f4304c;

    private static boolean f4305d;

    private p1() {
    }

    public final void a(Canvas canvas, boolean z10) {
        Method method;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            s1.f4327a.a(canvas, z10);
            return;
        }
        if (!f4305d) {
            try {
                if (i10 == 28) {
                    Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, new Class[0].getClass());
                    f4303b = (Method) declaredMethod.invoke(Canvas.class, "insertReorderBarrier", new Class[0]);
                    f4304c = (Method) declaredMethod.invoke(Canvas.class, "insertInorderBarrier", new Class[0]);
                } else {
                    f4303b = Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                    f4304c = Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                }
                Method method2 = f4303b;
                if (method2 != null) {
                    method2.setAccessible(true);
                }
                Method method3 = f4304c;
                if (method3 != null) {
                    method3.setAccessible(true);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
            f4305d = true;
        }
        if (z10) {
            try {
                Method method4 = f4303b;
                if (method4 != null) {
                    Intrinsics.e(method4);
                    method4.invoke(canvas, null);
                }
            } catch (IllegalAccessException | InvocationTargetException unused2) {
                return;
            }
        }
        if (z10 || (method = f4304c) == null) {
            return;
        }
        Intrinsics.e(method);
        method.invoke(canvas, null);
    }
}

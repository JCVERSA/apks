package com.transsion.hubsdk.aosp.view;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranViewRootImplAdapter;
import java.lang.reflect.Method;

public class TranAospViewRootImpl implements ITranViewRootImplAdapter {
    private static final String TAG = "TranAospViewRootImpl";
    private static Class<?> sViewClass = TranDoorMan.getClass("android.view.View");
    private static Class<?> sViewRootClass = TranDoorMan.getClass("android.view.ViewRootImpl");

    @Override
    public Drawable createBackgroundBlurDrawable(View view, int i, int i2, float f) {
        try {
            Method method = TranDoorMan.getMethod(sViewClass, "getViewRootImpl", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(view, null);
            Class cls = TranDoorMan.getClass("com.android.internal.graphics.drawable.BackgroundBlurDrawable");
            Class cls2 = Integer.TYPE;
            Method method2 = TranDoorMan.getMethod(cls, "setBlurRadius", cls2);
            Method declaredMethod = cls.getDeclaredMethod("setColor", cls2);
            Method method3 = TranDoorMan.getMethod(cls, "setCornerRadius", Float.TYPE);
            Method method4 = TranDoorMan.getMethod(sViewRootClass, "createBackgroundBlurDrawable", new Class[0]);
            method4.setAccessible(true);
            if (view != null && objInvoke != null) {
                method2.setAccessible(true);
                declaredMethod.setAccessible(true);
                method3.setAccessible(true);
                Object objInvoke2 = method4.invoke(objInvoke, null);
                Drawable drawable = (objInvoke2 == null || !(objInvoke2 instanceof Drawable)) ? null : (Drawable) objInvoke2;
                if (objInvoke2 != null) {
                    method2.invoke(drawable, Integer.valueOf(i));
                    declaredMethod.invoke(drawable, Integer.valueOf(i2));
                    method3.invoke(drawable, Float.valueOf(f));
                }
                return drawable;
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "createBackgroundBlurDrawable fail " + th);
        }
        return null;
    }

    @Override
    public void notifyInsetsChanged(View view) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sViewRootClass, "notifyInsetsChanged", new Class[0]), view.getParent(), new Object[0]);
    }

    @Override
    public Drawable createBackgroundBlurDrawable(View view, int i) {
        try {
            Method method = TranDoorMan.getMethod(sViewClass, "getViewRootImpl", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(view, null);
            Method declaredMethod = TranDoorMan.getClass("com.android.internal.graphics.drawable.BackgroundBlurDrawable").getDeclaredMethod("setColor", Integer.TYPE);
            Method method2 = TranDoorMan.getMethod(sViewRootClass, "createBackgroundBlurDrawable", new Class[0]);
            method2.setAccessible(true);
            if (view != null && objInvoke != null) {
                declaredMethod.setAccessible(true);
                Object objInvoke2 = method2.invoke(objInvoke, null);
                Drawable drawable = (objInvoke2 == null || !(objInvoke2 instanceof Drawable)) ? null : (Drawable) objInvoke2;
                if (objInvoke2 != null) {
                    declaredMethod.invoke(drawable, Integer.valueOf(i));
                }
                return drawable;
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "createBackgroundBlurDrawable fail " + th);
        }
        return null;
    }
}

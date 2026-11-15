package com.transsion.hubsdk.aosp.view;

import android.os.Looper;
import android.view.View;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranAsyncThreadAnimImplAdapter;
import java.lang.reflect.Method;

public class TranAospAsyncThreadAnimImpl implements ITranAsyncThreadAnimImplAdapter {
    private static final String TAG = "TranAospAsyncThreadAnimImpl";
    private static Class<?> sClass = TranDoorMan.getClass("android.view.AsyncThreadAnimImpl");
    private Object mAsyncThreadAnimImplInstance = null;

    @Override
    public boolean asyncAnimScheduleTraversals(View view) {
        Object obj = this.mAsyncThreadAnimImplInstance;
        if (obj == null || view == null) {
            TranSdkLog.w(TAG, "mObject or target is null!");
            return false;
        }
        Method method = TranDoorMan.getMethod(obj.getClass(), "asyncAnimScheduleTraversals", View.class);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, this.mAsyncThreadAnimImplInstance, view));
        }
        TranSdkLog.i(TAG, "asyncAnimScheduleTraversals method is null!");
        return false;
    }

    @Override
    public void init(Looper looper) {
        Class<?> cls = sClass;
        if (cls == null || looper == null) {
            TranSdkLog.w(TAG, "AsyncThreadAnimImpl Class or looper is null, cannot initialize");
            return;
        }
        Method method = TranDoorMan.getMethod(cls, "getInstance", Looper.class);
        if (method != null) {
            this.mAsyncThreadAnimImplInstance = TranDoorMan.invokeMethod(method, null, looper);
        } else {
            TranSdkLog.w(TAG, "Method getInstance not found in sClass or mObject is null");
        }
    }

    @Override
    public void release() {
        this.mAsyncThreadAnimImplInstance = null;
    }

    @Override
    public boolean setViewAlpha(View view, float f) {
        Class<?> cls = sClass;
        if (cls == null || view == null) {
            TranSdkLog.w(TAG, "AsyncThreadAnimImpl Class or View target is null!");
            return false;
        }
        Method method = TranDoorMan.getMethod(cls, "setViewAlpha", View.class, Float.TYPE);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, null, view, Float.valueOf(f)));
        }
        TranSdkLog.i(TAG, "setViewAlpha method is null!");
        return false;
    }

    @Override
    public boolean setViewScaleX(View view, float f) {
        Class<?> cls = sClass;
        if (cls == null || view == null) {
            TranSdkLog.w(TAG, "AsyncThreadAnimImpl Class or View target is null!");
            return false;
        }
        Method method = TranDoorMan.getMethod(cls, "setViewScaleX", View.class, Float.TYPE);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, null, view, Float.valueOf(f)));
        }
        TranSdkLog.i(TAG, "setViewScaleX method is null!");
        return false;
    }

    @Override
    public boolean setViewScaleY(View view, float f) {
        Class<?> cls = sClass;
        if (cls == null || view == null) {
            TranSdkLog.w(TAG, "AsyncThreadAnimImpl Class or View target is null!");
            return false;
        }
        Method method = TranDoorMan.getMethod(cls, "setViewScaleY", View.class, Float.TYPE);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, null, view, Float.valueOf(f)));
        }
        TranSdkLog.i(TAG, "setViewScaleY method is null!");
        return false;
    }

    @Override
    public boolean setViewTranslationX(View view, float f) {
        Class<?> cls = sClass;
        if (cls == null || view == null) {
            TranSdkLog.w(TAG, "AsyncThreadAnimImpl Class or View target is null!");
            return false;
        }
        Method method = TranDoorMan.getMethod(cls, "setViewTranslationX", View.class, Float.TYPE);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, null, view, Float.valueOf(f)));
        }
        TranSdkLog.i(TAG, "setViewTranslationX method is null!");
        return false;
    }

    @Override
    public boolean setViewTranslationY(View view, float f) {
        Class<?> cls = sClass;
        if (cls == null || view == null) {
            TranSdkLog.w(TAG, "AsyncThreadAnimImpl Class or View target is null!");
            return false;
        }
        Method method = TranDoorMan.getMethod(cls, "setViewTranslationY", View.class, Float.TYPE);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, null, view, Float.valueOf(f)));
        }
        TranSdkLog.i(TAG, "setViewTranslationY method is null!");
        return false;
    }
}

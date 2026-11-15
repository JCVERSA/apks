package com.transsion.hubsdk.aosp.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;
import android.view.View;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.app.ITranAppRemoteImplAdapter;
import java.lang.reflect.Method;

public class TranAospAppRemoteImpl implements ITranAppRemoteImplAdapter {
    private static final String TAG = "TranAospAppRemoteImpl";
    private static Method sFinishCurrentAnimationMethod;
    private static Method sSetAppRemoteViewMethod;
    private static Method sSkipBackAnimMethod;
    private static Method sStartActivityAsUserExMethod;
    private static Method sStartActivityAsUserMethod;
    private static Method sStartActivityExMethod;
    private static Method sStartActivityForResultExMethod;
    private static Method sStartActivityForResultMethod;
    private static Method sStartActivityMethod;
    private static final String CLASS_APP_REMOTE = "android.app.appremote.AppRemote";
    private static Class<?> sAppRemoteClass = TranDoorMan.getClass(CLASS_APP_REMOTE);
    private static final String CLASS_ANIMATION_CALLBACK = "android.app.appremote.AppRemote$AnimationCallback";
    private static Class<?> sAnimationCallbackClass = TranDoorMan.getClass(CLASS_ANIMATION_CALLBACK);

    @Override
    public boolean finishCurrentAnimation() {
        Class<?> cls = sAppRemoteClass;
        if (cls == null) {
            return false;
        }
        if (sFinishCurrentAnimationMethod == null) {
            sFinishCurrentAnimationMethod = TranDoorMan.getMethod(cls, "finishCurrentAnimation", new Class[0]);
        }
        Method method = sFinishCurrentAnimationMethod;
        if (method == null) {
            return false;
        }
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, null, new Object[0]));
    }

    @Override
    public boolean isSupported() {
        return (sAppRemoteClass == null || sAnimationCallbackClass == null) ? false : true;
    }

    @Override
    public Object newAnimationCallback() {
        Class<?> cls = sAnimationCallbackClass;
        if (cls == null) {
            return null;
        }
        try {
            return cls.getDeclaredConstructor(null).newInstance(null);
        } catch (Throwable th) {
            TranSdkLog.w(TAG, "newAnimationCallback failed", th);
            return null;
        }
    }

    @Override
    public boolean setAppRemoteView(View view, Context context, Bundle bundle, Object obj) {
        Class<?> cls;
        Class<?> cls2 = sAppRemoteClass;
        if (cls2 == null || (cls = sAnimationCallbackClass) == null) {
            return false;
        }
        if (sSetAppRemoteViewMethod == null) {
            sSetAppRemoteViewMethod = TranDoorMan.getMethod(cls2, "setAppRemoteView", View.class, Context.class, Bundle.class, cls);
        }
        Method method = sSetAppRemoteViewMethod;
        if (method == null) {
            return false;
        }
        return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, null, view, context, bundle, obj));
    }

    @Override
    public void skipBackAnim(Activity activity) {
        Class<?> cls = sAppRemoteClass;
        if (cls == null) {
            return;
        }
        if (sSkipBackAnimMethod == null) {
            sSkipBackAnimMethod = TranDoorMan.getMethod(cls, "skipBackAnim", Activity.class);
        }
        Method method = sSkipBackAnimMethod;
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, activity);
        }
    }

    @Override
    public void startActivity(Activity activity, Intent intent, View view) {
        Class<?> cls = sAppRemoteClass;
        if (cls == null) {
            return;
        }
        if (sStartActivityMethod == null) {
            sStartActivityMethod = TranDoorMan.getMethod(cls, "startActivity", Activity.class, Intent.class, View.class);
        }
        Method method = sStartActivityMethod;
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, activity, intent, view);
        }
    }

    @Override
    public void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, View view) {
        Class<?> cls = sAppRemoteClass;
        if (cls == null) {
            return;
        }
        if (sStartActivityAsUserMethod == null) {
            sStartActivityAsUserMethod = TranDoorMan.getMethod(cls, "startActivityAsUser", Activity.class, Intent.class, UserHandle.class, View.class);
        }
        Method method = sStartActivityAsUserMethod;
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, activity, intent, userHandle, view);
        }
    }

    @Override
    public void startActivityForResult(Activity activity, Intent intent, int i, View view) {
        Class<?> cls = sAppRemoteClass;
        if (cls == null) {
            return;
        }
        if (sStartActivityForResultMethod == null) {
            sStartActivityForResultMethod = TranDoorMan.getMethod(cls, "startActivityForResult", Activity.class, Intent.class, Integer.TYPE, View.class);
        }
        Method method = sStartActivityForResultMethod;
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, activity, intent, Integer.valueOf(i), view);
        }
    }

    @Override
    public void startActivity(Activity activity, Intent intent, Bundle bundle, View view, Bundle bundle2, Object obj) {
        Class<?> cls;
        Class<?> cls2 = sAppRemoteClass;
        if (cls2 == null || (cls = sAnimationCallbackClass) == null) {
            return;
        }
        if (sStartActivityExMethod == null) {
            sStartActivityExMethod = TranDoorMan.getMethod(cls2, "startActivity", Activity.class, Intent.class, Bundle.class, View.class, Bundle.class, cls);
        }
        Method method = sStartActivityExMethod;
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, activity, intent, bundle, view, bundle2, obj);
        }
    }

    @Override
    public void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, Bundle bundle, View view, Bundle bundle2, Object obj) {
        Class<?> cls;
        Class<?> cls2 = sAppRemoteClass;
        if (cls2 == null || (cls = sAnimationCallbackClass) == null) {
            return;
        }
        if (sStartActivityAsUserExMethod == null) {
            sStartActivityAsUserExMethod = TranDoorMan.getMethod(cls2, "startActivityAsUser", Activity.class, Intent.class, UserHandle.class, Bundle.class, View.class, Bundle.class, cls);
        }
        Method method = sStartActivityAsUserExMethod;
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, activity, intent, userHandle, bundle, view, bundle2, obj);
        }
    }

    @Override
    public void startActivityForResult(Activity activity, Intent intent, int i, Bundle bundle, View view, Bundle bundle2, Object obj) {
        Class<?> cls;
        Class<?> cls2 = sAppRemoteClass;
        if (cls2 == null || (cls = sAnimationCallbackClass) == null) {
            return;
        }
        if (sStartActivityForResultExMethod == null) {
            sStartActivityForResultExMethod = TranDoorMan.getMethod(cls2, "startActivityForResult", Activity.class, Intent.class, Integer.TYPE, Bundle.class, View.class, Bundle.class, cls);
        }
        Method method = sStartActivityForResultExMethod;
        if (method != null) {
            TranDoorMan.invokeMethod(method, null, activity, intent, Integer.valueOf(i), bundle, view, bundle2, obj);
        }
    }
}

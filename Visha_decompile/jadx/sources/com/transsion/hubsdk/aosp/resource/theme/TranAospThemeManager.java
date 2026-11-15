package com.transsion.hubsdk.aosp.resource.theme;

import android.annotation.NonNull;
import android.app.ActivityThread;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.hubsdk.api.resource.theme.TranThemeManager;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.resource.theme.ITranThemeManagerAdapter;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TranAospThemeManager implements ITranThemeManagerAdapter {
    private static final String TAG = "TranAospThemeManager";
    private static final String TARGET_CALLBACK_CLASS = "com.transsion.resource.theme.TranThemeManager$ResultCallback";
    private static final String TARGET_CLASS = "com.transsion.resource.theme.TranThemeManager";
    private Object mTarget;
    private final Class<?> mTargetClass = TranDoorMan.getClass(TARGET_CLASS);
    private final Class<?> mTargetCallbackClass = TranDoorMan.getClass(TARGET_CALLBACK_CLASS);

    public static class CallbackHandler implements InvocationHandler {
        private final TranThemeManager.ResultCallback mCallback;

        public CallbackHandler(TranThemeManager.ResultCallback resultCallback) {
            this.mCallback = resultCallback;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr == null) {
                objArr = new Object[0];
            }
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this.mCallback, objArr);
            }
            Method method2 = TranDoorMan.getMethod(this.mCallback.getClass(), method.getName(), method.getParameterTypes());
            if (method2 == null) {
                return null;
            }
            return TranDoorMan.invokeMethod(method2, this.mCallback, objArr);
        }
    }

    private boolean containsNull(Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (cls == null) {
                return true;
            }
        }
        return false;
    }

    private TranThemePackageInfo convertPackageInfo(Object obj) {
        if (obj == null) {
            return null;
        }
        TranSdkLog.d(TAG, "convertPackageInfo");
        return new TranThemePackageInfo((String) getFieldValue(obj, TtmlNode.ATTR_ID), (String) getFieldValue(obj, "author"), getIntFieldValue(obj, "version"), getIntFieldValue(obj, "type"), (String) getFieldValue(obj, "appDir"), (String) getFieldValue(obj, "description"), getBooleanFieldValue(obj, "running"), getIntFieldValue(obj, "targetUserId"));
    }

    private List<TranThemePackageInfo> convertPackageInfoList(List<?> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(convertPackageInfo(it.next()));
        }
        return arrayList;
    }

    private Context getApplicationContext() {
        Application applicationCurrentApplication = ActivityThread.currentApplication();
        if (applicationCurrentApplication == null) {
            return null;
        }
        return applicationCurrentApplication.getApplicationContext();
    }

    private boolean getBooleanFieldValue(Object obj, String str) {
        Boolean bool = (Boolean) getFieldValue(obj, str);
        return bool != null && bool.booleanValue();
    }

    private <T> T getFieldValue(Object obj, String str) {
        Field field;
        if (obj == null || (field = TranDoorMan.getField(obj.getClass(), str)) == null) {
            return null;
        }
        return (T) TranDoorMan.getFieldValue(field, obj);
    }

    private int getIntFieldValue(Object obj, String str) {
        Integer num = (Integer) getFieldValue(obj, str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private Object getTarget() {
        Constructor constructor;
        Object obj = this.mTarget;
        if (obj != null || this.mTargetClass == null) {
            return obj;
        }
        Context applicationContext = getApplicationContext();
        if (applicationContext == null || (constructor = TranDoorMan.getConstructor(this.mTargetClass, new Class[]{Context.class})) == null) {
            return null;
        }
        try {
            Object objNewInstance = constructor.newInstance(applicationContext);
            this.mTarget = objNewInstance;
            return objNewInstance;
        } catch (Exception unused) {
            return null;
        }
    }

    private <T> T invoke(String str, Class<?>[] clsArr, Object... objArr) {
        Method method;
        if (this.mTargetClass == null || containsNull(clsArr) || (method = TranDoorMan.getMethod(this.mTargetClass, str, clsArr)) == null) {
            return null;
        }
        Object target = Modifier.isStatic(method.getModifiers()) ? null : getTarget();
        if (Modifier.isStatic(method.getModifiers()) || target != null) {
            return (T) TranDoorMan.invokeMethod(method, target, objArr);
        }
        return null;
    }

    private void invokeVoid(String str, Class<?>[] clsArr, Object... objArr) {
        invoke(str, clsArr, objArr);
    }

    private Object wrapCallback(TranThemeManager.ResultCallback resultCallback) {
        Class<?> cls;
        if (resultCallback == null || (cls = this.mTargetCallbackClass) == null) {
            return null;
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{this.mTargetCallbackClass}, new CallbackHandler(resultCallback));
    }

    @Override
    public void disable(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("disable", new Class[]{String.class, this.mTargetCallbackClass, Handler.class}, str, wrapCallback(resultCallback), handler);
    }

    @Override
    public void disableAll(@NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("disableAll", new Class[]{this.mTargetCallbackClass, Handler.class}, wrapCallback(resultCallback), handler);
    }

    @Override
    public void disableOne(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("disableOne", new Class[]{String.class, this.mTargetCallbackClass, Handler.class}, str, wrapCallback(resultCallback), handler);
    }

    @Override
    public void enable(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("enable", new Class[]{String.class, this.mTargetCallbackClass, Handler.class}, str, wrapCallback(resultCallback), handler);
    }

    @Override
    public Object getAospPackageInfo(@NonNull String str) {
        return invoke("getPackageInfo", new Class[]{String.class}, str);
    }

    @Override
    public List<TranThemePackageInfo> getCurrentRunningPackageInfoList() {
        return convertPackageInfoList((List) invoke("getCurrentRunningPackageInfoList", new Class[0], new Object[0]));
    }

    @Override
    public TranThemePackageInfo getCurrentRunningTheme(int i) {
        return convertPackageInfo(invoke("getCurrentRunningTheme", new Class[]{Integer.TYPE}, Integer.valueOf(i)));
    }

    @Override
    public List<TranThemePackageInfo> getInstalledPackageInfoList(int i) {
        return convertPackageInfoList((List) invoke("getInstalledPackageInfoList", new Class[]{Integer.TYPE}, Integer.valueOf(i)));
    }

    @Override
    public TranThemePackageInfo getPackageInfo(@NonNull String str) {
        return convertPackageInfo(invoke("getPackageInfo", new Class[]{String.class}, str));
    }

    @Override
    public File getThemeFile(String str, String str2, int i) {
        return (File) invoke("getThemeFile", new Class[]{String.class, String.class, Integer.TYPE}, str, str2, Integer.valueOf(i));
    }

    @Override
    public void install(@NonNull File file, boolean z, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("install", new Class[]{File.class, Boolean.TYPE, this.mTargetCallbackClass, Handler.class}, file, Boolean.valueOf(z), wrapCallback(resultCallback), handler);
    }

    @Override
    public boolean isIconThemeRunning() {
        Boolean bool = (Boolean) invoke("isIconThemeRunning", new Class[0], new Object[0]);
        return bool != null && bool.booleanValue();
    }

    @Override
    public boolean isThemeRunning(int i, int i2) {
        Class cls = Integer.TYPE;
        Boolean bool = (Boolean) invoke("isThemeRunning", new Class[]{cls, cls}, Integer.valueOf(i), Integer.valueOf(i2));
        return bool != null && bool.booleanValue();
    }

    @Override
    public void operate(@NonNull String str, int i, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("operate", new Class[]{String.class, Integer.TYPE, this.mTargetCallbackClass, Handler.class}, str, Integer.valueOf(i), wrapCallback(resultCallback), handler);
    }

    @Override
    public void toggle(@NonNull String str, int i, String str2, boolean z, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("toggle", new Class[]{String.class, Integer.TYPE, String.class, Boolean.TYPE, this.mTargetCallbackClass, Handler.class}, str, Integer.valueOf(i), str2, Boolean.valueOf(z), wrapCallback(resultCallback), handler);
    }

    @Override
    public void uninstall(@NonNull String str, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("uninstall", new Class[]{String.class, this.mTargetCallbackClass, Handler.class}, str, wrapCallback(resultCallback), handler);
    }

    @Override
    public List<TranThemePackageInfo> getInstalledPackageInfoList() {
        return convertPackageInfoList((List) invoke("getInstalledPackageInfoList", new Class[0], new Object[0]));
    }

    @Override
    public TranThemePackageInfo getPackageInfo(@NonNull String str, int i) {
        return convertPackageInfo(invoke("getPackageInfo", new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i)));
    }

    @Override
    public File getThemeFile(String str, String str2) {
        return (File) invoke("getThemeFile", new Class[]{String.class, String.class}, str, str2);
    }

    @Override
    public File getThemeFile(@NonNull TranThemePackageInfo tranThemePackageInfo, String str) {
        return (File) invoke("getThemeFile", new Class[]{TranThemePackageInfo.class, String.class}, tranThemePackageInfo, str);
    }

    @Override
    public boolean isIconThemeRunning(int i) {
        Boolean bool = (Boolean) invoke("isIconThemeRunning", new Class[]{Integer.TYPE}, Integer.valueOf(i));
        return bool != null && bool.booleanValue();
    }

    @Override
    public boolean isThemeRunning(int i) {
        Boolean bool = (Boolean) invoke("isThemeRunning", new Class[]{Integer.TYPE}, Integer.valueOf(i));
        return bool != null && bool.booleanValue();
    }

    @Override
    public void disable(@NonNull String str, int i, String str2, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("disable", new Class[]{String.class, Integer.TYPE, String.class, this.mTargetCallbackClass, Handler.class}, str, Integer.valueOf(i), str2, wrapCallback(resultCallback), handler);
    }

    @Override
    public void enable(@NonNull String str, int i, String str2, @NonNull TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        invokeVoid("enable", new Class[]{String.class, Integer.TYPE, String.class, this.mTargetCallbackClass, Handler.class}, str, Integer.valueOf(i), str2, wrapCallback(resultCallback), handler);
    }
}

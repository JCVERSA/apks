package com.transsion.hubsdk.aosp.view;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.view.WindowManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranWindowManagerAdapter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TranAospWindowManager implements ITranWindowManagerAdapter {
    private static final String TAG = "TranAospWindowManager";
    private static Class<?> sClassIWindowManager = TranDoorMan.getClass("android.view.IWindowManager$Stub");
    private static Class<?> sClassServiceManager = TranDoorMan.getClass("android.os.ServiceManager");
    private Object mWindowManager;

    private Object getWindowManager() {
        if (this.mWindowManager == null) {
            this.mWindowManager = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassIWindowManager, "asInterface", IBinder.class), sClassIWindowManager, TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassServiceManager, "getService", String.class), sClassServiceManager, "window"));
        }
        return this.mWindowManager;
    }

    @Override
    public int getAppRefreshRate(String str) {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return 0;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "window");
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.view.ITranWindowManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return 0;
        }
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getAppRefreshRate", String.class), objInvokeMethod, str)).intValue();
    }

    @Override
    public String getDefaultRefreshRateConfigList() {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls != null && (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) != null) {
            IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "window");
            Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.view.ITranWindowManager$Stub");
            if (iBinder != null && cls2 != null && (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) != null) {
                return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getDefaultRefreshRateConfigList", new Class[0]), objInvokeMethod, new Object[0]);
            }
        }
        return null;
    }

    @Override
    public String getFocusedWindowTitle() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getFocusedWindowTitle", new Class[0])) == null) {
            return null;
        }
        return (String) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
    }

    @Override
    public List<String> getNoSupportApplicationInfo() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getNoSupportApplicationInfo", new Class[0])) == null) {
            return null;
        }
        return (List) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
    }

    @Override
    public Map<String, Integer> getNonUltraSmallApps() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getNonUltraSmallApps", new Class[0])) == null) {
            return null;
        }
        return (Map) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
    }

    @Override
    public int getPrivateFlags(WindowManager.LayoutParams layoutParams) {
        Field field = TranDoorMan.getField(layoutParams.getClass(), "privateFlags");
        if (field != null) {
            return ((Integer) TranDoorMan.getFieldValue(field, layoutParams)).intValue();
        }
        return 0;
    }

    @Override
    public String getRefreshRateConfigList() {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls != null && (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) != null) {
            IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "window");
            Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.view.ITranWindowManager$Stub");
            if (iBinder != null && cls2 != null && (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) != null) {
                return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getRefreshRateConfigList", new Class[0]), objInvokeMethod, new Object[0]);
            }
        }
        return null;
    }

    @Override
    public String getRootPinnedTaskPkgName() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getRootPinnedTaskPkgName", new Class[0])) == null) {
            return null;
        }
        return (String) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
    }

    @Override
    public List<String> getSharedScreenPkgName() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getSharedScreenPkgName", new Class[0])) == null) {
            return null;
        }
        return (List) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
    }

    @Override
    public int getSwitchMode() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getSwitchMode", new Class[0])) == null) {
            return 0;
        }
        return ((Integer) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).intValue();
    }

    @Override
    public String getTopResumedActivityPkgName() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getTopResumedActivityPkgName", new Class[0])) == null) {
            return null;
        }
        return (String) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0]);
    }

    @Override
    public List<String> getTranPictureList(int i) {
        ArrayList arrayList = new ArrayList();
        if (getWindowManager() != null) {
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mWindowManager.getClass(), "getTranPictureList", Integer.TYPE), this.mWindowManager, Integer.valueOf(i));
            if (objInvokeMethod instanceof List) {
                Iterator it = ((List) objInvokeMethod).iterator();
                while (it.hasNext()) {
                    arrayList.add((String) String.class.cast(it.next()));
                }
            }
        }
        return arrayList;
    }

    @Override
    public int[] getTranPictureSupportMode() {
        int[] iArr = new int[0];
        if (getWindowManager() == null) {
            return iArr;
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mWindowManager.getClass(), "getTranPictureSupportMode", new Class[0]), this.mWindowManager, new Object[0]);
        return objInvokeMethod instanceof int[] ? (int[]) objInvokeMethod : iArr;
    }

    @Override
    public int getUltraSmallAppMode(String str) {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "getUltraSmallAppMode", String.class)) == null) {
            return 0;
        }
        return ((Integer) TranDoorMan.invokeMethod(method, objInvokeMethod, str)).intValue();
    }

    @Override
    public boolean hasMultiWindowForXDR() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "hasMultiWindowForXDR", new Class[0])) == null) {
            return false;
        }
        return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).booleanValue();
    }

    @Override
    public void hookWindowScene(int i, int i2, int i3) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null) {
            TranSdkLog.e(TAG, "hookWindowScene fail: iWindowManager is null");
            return;
        }
        Class<?> cls = objInvokeMethod.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "hookWindowScene", cls2, cls2, cls2);
        if (method != null) {
            TranDoorMan.invokeMethod(method, objInvokeMethod, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
        }
    }

    @Override
    public boolean isKeyguardShowing() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "isKeyguardShowing", new Class[0])) == null) {
            return false;
        }
        return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).booleanValue();
    }

    @Override
    public boolean isKeyguardShowingAndNotOccluded() {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "isKeyguardShowingAndNotOccluded", new Class[0])) == null) {
            return false;
        }
        return ((Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])).booleanValue();
    }

    @Override
    public boolean isOccluded() {
        Method method;
        Boolean bool;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        return (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "isOccluded", new Class[0])) == null || (bool = (Boolean) TranDoorMan.invokeMethod(method, objInvokeMethod, new Object[0])) == null || !bool.booleanValue()) ? false : true;
    }

    @Override
    public void setCutoutMode(WindowManager.LayoutParams layoutParams, int i) {
        Field field = TranDoorMan.getField(layoutParams.getClass(), "tranLayoutInDisplayCutoutMode");
        if (field == null) {
            TranSdkLog.d(TAG, "setCutoutMode fail: cannot find tranLayoutInDisplayCutoutMode");
            return;
        }
        try {
            field.set(layoutParams, Integer.valueOf(i));
        } catch (Exception e) {
            TranSdkLog.e(TAG, "setCutoutMode fail: " + e);
        }
    }

    @Override
    public void setInputFeatures(WindowManager.LayoutParams layoutParams, int i) {
        try {
            Field field = TranDoorMan.getField(layoutParams.getClass(), "inputFeatures");
            if (field != null) {
                field.set(layoutParams, Integer.valueOf(i));
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "setInputFeatures error: " + e);
        }
    }

    @Override
    public void setOSFullDialog(WindowManager.LayoutParams layoutParams, boolean z) {
        try {
            Method method = TranDoorMan.getMethod(layoutParams.getClass(), "setOSFullDialog", Boolean.TYPE);
            if (method == null) {
                TranSdkLog.d(TAG, "setOSFullDialog fail: cannot find API");
            } else {
                method.invoke(layoutParams, Boolean.valueOf(z));
            }
        } catch (Exception e) {
            TranSdkLog.e(TAG, "setOSFullDialog fail: " + e);
        }
    }

    @Override
    public void setPrivateFlags(WindowManager.LayoutParams layoutParams, int i) {
        Field field = TranDoorMan.getField(layoutParams.getClass(), "privateFlags");
        try {
            field.set(layoutParams, Integer.valueOf(i | field.getInt(layoutParams)));
        } catch (Exception e) {
            TranSdkLog.e(TAG, "setPrivateFlags fail: " + e);
        }
    }

    @Override
    public void setRefreshRateConfigList(String str) {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, "window");
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.view.ITranWindowManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "setRefreshRateConfigList", String.class), objInvokeMethod, str);
    }

    @Override
    public void setTranPictureMode(int i, String str) {
        if (getWindowManager() != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mWindowManager.getClass(), "setTranPictureMode", Integer.TYPE, String.class), this.mWindowManager, Integer.valueOf(i), str);
        }
    }

    @Override
    public void setTrustedOverlay(WindowManager.LayoutParams layoutParams) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(layoutParams.getClass(), "setTrustedOverlay", new Class[0]), layoutParams, new Object[0]);
    }

    @Override
    public void switchMode(int i) {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "switchMode", Integer.TYPE)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, objInvokeMethod, Integer.valueOf(i));
    }

    @Override
    public Bitmap tranScreenshotWallpaperLocked() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.IWindowManager"), "tranScreenshotWallpaperLocked", new Class[0]), TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]), new Object[0]);
        if (objInvokeMethod instanceof Bitmap) {
            return (Bitmap) objInvokeMethod;
        }
        return null;
    }

    @Override
    public void updateNoSupportApplicationInfo(List<String> list) {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "updateNoSupportApplicationInfo", List.class)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, objInvokeMethod, list);
    }

    @Override
    public void updateNonUltraSmallApps(Map<String, Integer> map) {
        Method method;
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.view.WindowManagerGlobal"), "getWindowManagerService", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(objInvokeMethod.getClass(), "updateNonUltraSmallApps", Map.class)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, objInvokeMethod, map);
    }
}

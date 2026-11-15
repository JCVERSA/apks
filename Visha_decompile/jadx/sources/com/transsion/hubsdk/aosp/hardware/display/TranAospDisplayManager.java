package com.transsion.hubsdk.aosp.hardware.display;

import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import com.transsion.hubsdk.api.hardware.display.TranDisplayManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.display.BuildConfig;
import com.transsion.hubsdk.interfaces.hardware.display.ITranDisplayManagerAdapter;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class TranAospDisplayManager implements ITranDisplayManagerAdapter {
    private static final String TAG = "TranAospDisplayManager";
    private Class<?> mDisplayClass;
    private Class<?> mDisplayLister;
    private Object mDisplayListerObj = null;
    private DisplayManager mDisplayManager;

    public static class TranListenerWrapper implements InvocationHandler {
        private final TranDisplayManager.DualDisplayListener mListener;

        public TranListenerWrapper(TranDisplayManager.DualDisplayListener dualDisplayListener) {
            this.mListener = dualDisplayListener;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            TranSdkLog.e(TranAospDisplayManager.TAG, "invoke, methodName:" + name + ", args:" + objArr);
            if ("onDisplayAdded".equals(name)) {
                this.mListener.onDisplayAdded(((Integer) objArr[0]).intValue());
                return null;
            }
            if (!"onDisplayRemoved".equals(name)) {
                return null;
            }
            this.mListener.onDisplayRemoved(((Integer) objArr[0]).intValue());
            return null;
        }
    }

    public TranAospDisplayManager() {
        this.mDisplayClass = null;
        this.mDisplayLister = null;
        if (this.mDisplayManager == null) {
            DisplayManager displayManager = (DisplayManager) TranHubSdkManager.getContext().getSystemService(BuildConfig.FLAVOR);
            this.mDisplayManager = displayManager;
            Class<?> cls = displayManager.getClass();
            this.mDisplayClass = cls;
            for (Class<?> cls2 : cls.getClasses()) {
                if (cls2.getName().contains("DualDisplayListener")) {
                    this.mDisplayLister = cls2;
                    TranSdkLog.d(TAG, "mDisplayLister:" + cls2);
                    return;
                }
            }
        }
    }

    @Override
    public void addShowInDualDisplay(String str, String str2) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method addShowInDualDisplay");
    }

    @Override
    public void closeDualDisplay() {
        if (TranThubVersionUtil.isAndroidT()) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mDisplayManager.getClass(), "closeDualDisplay", new Class[0]), this.mDisplayManager, new Object[0]);
        } else {
            TranSdkLog.d(TAG, "can not find method closeDualDisplay.");
        }
    }

    @Override
    public void closeDualDisplayForSelfie() {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, BuildConfig.FLAVOR);
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.hardware.display.ITranDisplayManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "closeDualDisplayForSelfie", new Class[0]), objInvokeMethod, new Object[0]);
    }

    @Override
    public void executeSmartbuttonFunction(int i, String str, String str2, boolean z) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method executeSmartbuttonFunction");
    }

    @Override
    public int getCurSelfieDisplayId() {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return -1;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, BuildConfig.FLAVOR);
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.hardware.display.ITranDisplayManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return -1;
        }
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "getCurSelfieDisplayId", new Class[0]), objInvokeMethod, new Object[0])).intValue();
    }

    @Override
    public int getForcedUsingDisplayMode() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mDisplayManager.getClass(), "getForcedUsingDisplayMode", new Class[0]), this.mDisplayManager, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public int getSecondaryDisplayId() {
        return -1;
    }

    @Override
    public int getSourceConnectFlag() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mDisplayManager.getClass(), "getSourceConnectFlag", new Class[0]), this.mDisplayManager, new Object[0]);
        if (objInvokeMethod instanceof Integer) {
            return ((Integer) objInvokeMethod).intValue();
        }
        return 0;
    }

    @Override
    public boolean isDualDisplayForSelfie() {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls != null && (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) != null) {
            IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, BuildConfig.FLAVOR);
            Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.hardware.display.ITranDisplayManager$Stub");
            if (iBinder != null && cls2 != null && (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) != null) {
                return ((Boolean) TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "isDualDisplayForSelfie", new Class[0]), objInvokeMethod, new Object[0])).booleanValue();
            }
        }
        return false;
    }

    @Override
    public boolean isTentMode() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method isTentMode");
    }

    @Override
    public void openDualDisplay() {
        if (TranThubVersionUtil.isAndroidT()) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mDisplayManager.getClass(), "openDualDisplay", new Class[0]), this.mDisplayManager, new Object[0]);
        } else {
            TranSdkLog.d(TAG, "can not find method openDualDisplay.");
        }
    }

    @Override
    public void openDualDisplayForSelfie(Bundle bundle) {
        Method method;
        Object objInvokeMethod;
        Class cls = TranDoorMan.getClass("com.transsion.hubsdk.TranServiceManager");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getServiceIBinder", String.class)) == null) {
            return;
        }
        IBinder iBinder = (IBinder) TranDoorMan.invokeMethod(method, null, BuildConfig.FLAVOR);
        Class cls2 = TranDoorMan.getClass("com.transsion.hubsdk.hardware.display.ITranDisplayManager$Stub");
        if (iBinder == null || cls2 == null || (objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "asInterface", IBinder.class), cls2, iBinder)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(objInvokeMethod.getClass(), "openDualDisplayForSelfie", Bundle.class), objInvokeMethod, bundle);
    }

    @Override
    public void registerDualDisplayListener(TranDisplayManager.DualDisplayListener dualDisplayListener, Handler handler) {
        if (!TranThubVersionUtil.isAndroidT()) {
            TranSdkLog.d(TAG, "can not find method registerDualDisplayListener.");
            return;
        }
        Method method = TranDoorMan.getMethod(this.mDisplayManager.getClass(), "registerDualDisplayListener", this.mDisplayLister, Handler.class);
        Object objNewProxyInstance = Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{this.mDisplayLister}, new TranListenerWrapper(dualDisplayListener));
        this.mDisplayListerObj = objNewProxyInstance;
        TranDoorMan.invokeMethod(method, this.mDisplayManager, objNewProxyInstance, handler);
    }

    @Override
    public void registerFlexButtonCallback(int i, TranDisplayManager.ITranFlexButtonCallback iTranFlexButtonCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerFlexButtonCallback");
    }

    @Override
    public boolean registerPowerStateChangedCallback(TranDisplayManager.TranPowerStateChangedCallback tranPowerStateChangedCallback, String str) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerPowerStateChangedCallback");
    }

    @Override
    public void registerShoulderButtonCallback(int i, TranDisplayManager.ITranShoulderButtonCallback iTranShoulderButtonCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerShoulderButtonCallback");
    }

    @Override
    public void registerSmartButtonCallback(int i, TranDisplayManager.ITranSmartButtonCallback iTranSmartButtonCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerSmartButtonCallback");
    }

    @Override
    public void registerTentModeCallback(int i, TranDisplayManager.ITranTentModeCallback iTranTentModeCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerTentModeCallback");
    }

    @Override
    public void setBrightness(int i, float f) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mDisplayManager.getClass(), "setBrightness", Integer.TYPE, Float.TYPE), this.mDisplayManager, Integer.valueOf(i), Float.valueOf(f));
    }

    @Override
    public void setTemporaryBrightness(int i, float f) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mDisplayManager.getClass(), "setTemporaryBrightness", Integer.TYPE, Float.TYPE), this.mDisplayManager, Integer.valueOf(i), Float.valueOf(f));
    }

    @Override
    public void setTranAutoBrightnessTemporarily(int i, boolean z, String str) {
        Method method;
        Object objInvokeMethod;
        Method method2;
        Class cls = TranDoorMan.getClass("android.hardware.display.DisplayManagerGlobal");
        if (cls == null || (method = TranDoorMan.getMethod(cls, "getInstance", new Class[0])) == null || (objInvokeMethod = TranDoorMan.invokeMethod(method, null, new Object[0])) == null || (method2 = TranDoorMan.getMethod(objInvokeMethod.getClass(), "setTranAutoBrightnessTemporarily", Integer.TYPE, Boolean.TYPE, String.class)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method2, objInvokeMethod, Integer.valueOf(i), Boolean.valueOf(z), str);
    }

    @Override
    public boolean unRegisterPowerStateChangedListener(String str) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unRegisterPowerStateChangedListener");
    }

    @Override
    public void unregisterDualDisplayListener(TranDisplayManager.DualDisplayListener dualDisplayListener) {
        if (TranThubVersionUtil.isAndroidT()) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mDisplayManager.getClass(), "unregisterDualDisplayListener", this.mDisplayLister), this.mDisplayManager, this.mDisplayListerObj);
        } else {
            TranSdkLog.d(TAG, "can not find method unregisterDualDisplayListener.");
        }
    }

    @Override
    public void unregisterFlexButtonCallback(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unregisterFlexButtonCallback");
    }

    @Override
    public void unregisterShoulderButtonCallback(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unregisterShoulderButtonCallback");
    }

    @Override
    public void unregisterSmartButtonCallback(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unregisterSmartButtonCallback");
    }

    @Override
    public void unregisterTentModeCallback(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method unregisterTentModeCallback");
    }
}

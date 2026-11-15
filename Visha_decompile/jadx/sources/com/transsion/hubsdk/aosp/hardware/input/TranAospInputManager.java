package com.transsion.hubsdk.aosp.hardware.input;

import android.graphics.Region;
import android.hardware.input.InputManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.InputEvent;
import android.view.KeyEvent;
import com.transsion.hubsdk.aosp.hardware.input.TranAospInputManager;
import com.transsion.hubsdk.api.view.ITranGestureCallback;
import com.transsion.hubsdk.api.view.ITranInputEventCallback;
import com.transsion.hubsdk.api.view.ITranInputMonitor;
import com.transsion.hubsdk.api.view.ITranTouchEventHandler;
import com.transsion.hubsdk.api.view.inputmethod.ITranStylusKeyListener;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.hardware.input.ITranInputManagerAdapter;
import java.lang.reflect.Method;

public class TranAospInputManager implements ITranInputManagerAdapter {
    private static final String TAG = "TranAospInputManager";
    private InputManager mInputManager;
    private TranInputMonitorImplExt mInputMonitor;

    public class TranInputMonitor extends ITranInputMonitor.Stub {
        public TranInputMonitor() {
        }

        @Override
        public void dispose() {
            if (TranAospInputManager.this.mInputMonitor != null) {
                TranAospInputManager.this.mInputMonitor.dispose();
            }
        }

        @Override
        public void pilferPointers() {
            if (TranAospInputManager.this.mInputMonitor != null) {
                TranAospInputManager.this.mInputMonitor.pilferPointers();
            }
        }
    }

    public TranAospInputManager() {
        if (this.mInputManager == null) {
            this.mInputManager = (InputManager) TranHubSdkManager.getContext().getSystemService(InputManager.class);
        }
    }

    public static void lambda$monitorGestureInput$0(ITranTouchEventHandler iTranTouchEventHandler, InputEvent inputEvent) {
        try {
            iTranTouchEventHandler.handleInputEvent(inputEvent);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "handleInputEvent fail:" + e);
        }
    }

    @Override
    public boolean ignoreMultiWindowGesture() {
        Method method;
        try {
            InputManager inputManager = this.mInputManager;
            if (inputManager != null && (method = TranDoorMan.getMethod(inputManager.getClass(), "ignoreMultiWindowGesture", new Class[0])) != null) {
                return ((Boolean) TranDoorMan.invokeMethod(method, this.mInputManager, new Object[0])).booleanValue();
            }
        } catch (Exception unused) {
            TranSdkLog.d(TAG, "ignoreMultiWindowGesture not exist.");
        }
        return false;
    }

    @Override
    public boolean injectInputEvent(InputEvent inputEvent, int i) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mInputManager.getClass(), "injectInputEvent", InputEvent.class, Integer.TYPE), this.mInputManager, inputEvent, Integer.valueOf(i));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }

    @Override
    public ITranInputMonitor monitorGestureInput(String str, int i, final ITranTouchEventHandler iTranTouchEventHandler) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mInputManager.getClass(), "monitorGestureInput", String.class, Integer.TYPE), this.mInputManager, str, Integer.valueOf(i));
        if (objInvokeMethod == null) {
            return null;
        }
        this.mInputMonitor = new TranInputMonitorImplExt(objInvokeMethod, new TranInputMonitorImplExt.ITranTouchEventHandler() {
            @Override
            public final void handleInputEvent(InputEvent inputEvent) {
                TranAospInputManager.lambda$monitorGestureInput$0(iTranTouchEventHandler, inputEvent);
            }
        });
        return new TranInputMonitor();
    }

    @Override
    public void registerInputEventListener(ITranInputEventCallback iTranInputEventCallback, int i) {
        TranSdkLog.w(TAG, "can not find method registerInputEventListener");
    }

    @Override
    public void registerStylusKeyListener(ITranStylusKeyListener iTranStylusKeyListener) {
    }

    @Override
    public void registerTranGestureMonitor(ITranGestureCallback iTranGestureCallback, Bundle bundle) {
        TranSdkLog.w(TAG, "can not find method registerTranGestureMonitor");
    }

    @Override
    public void setBackGestureMode(boolean z) {
        Method method;
        InputManager inputManager = this.mInputManager;
        if (inputManager == null || (method = TranDoorMan.getMethod(inputManager.getClass(), "setBackGestureMode", Boolean.TYPE)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, this.mInputManager, Boolean.valueOf(z));
    }

    @Override
    public void setBackGestureResult(IBinder iBinder, boolean z) {
        Method method;
        InputManager inputManager = this.mInputManager;
        if (inputManager == null || (method = TranDoorMan.getMethod(inputManager.getClass(), "setBackGestureResult", IBinder.class, Boolean.TYPE)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, this.mInputManager, iBinder, Boolean.valueOf(z));
    }

    @Override
    public void setTouchRegion(ITranGestureCallback iTranGestureCallback, Region region) {
        TranSdkLog.w(TAG, "can not find method setTouchRegion");
    }

    @Override
    public void singleKeyPanicBehaviorCheck(KeyEvent keyEvent) {
        Method method;
        try {
            InputManager inputManager = this.mInputManager;
            if (inputManager == null || (method = TranDoorMan.getMethod(inputManager.getClass(), "singleKeyPanicBehaviorCheck", KeyEvent.class)) == null) {
                return;
            }
            TranDoorMan.invokeMethod(method, this.mInputManager, keyEvent);
        } catch (Exception unused) {
            TranSdkLog.d(TAG, "singleKeyPanicBehaviorCheck not exist.");
        }
    }

    @Override
    public void tranPilferPointers(ITranGestureCallback iTranGestureCallback) {
        TranSdkLog.w(TAG, "can not find method tranPilferPointers");
    }

    @Override
    public void tranPilferPointersAwhile(ITranGestureCallback iTranGestureCallback, boolean z) {
        TranSdkLog.w(TAG, "can not find method tranPilferPointersAwhile");
    }

    @Override
    public void unregisterInputEventListener(ITranInputEventCallback iTranInputEventCallback, int i) {
        TranSdkLog.w(TAG, "can not find method unregisterInputEventListener");
    }

    @Override
    public void unregisterStylusKeyListener(ITranStylusKeyListener iTranStylusKeyListener) {
    }

    @Override
    public void unregisterTranGestureMonitor(ITranGestureCallback iTranGestureCallback) {
        TranSdkLog.w(TAG, "can not find method unregisterTranGestureMonitor");
    }

    @Override
    public void updateBackGestureRegion(IBinder iBinder, Region region) {
        Method method;
        InputManager inputManager = this.mInputManager;
        if (inputManager == null || (method = TranDoorMan.getMethod(inputManager.getClass(), "updateBackGestureRegion", IBinder.class, Region.class)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, this.mInputManager, iBinder, region);
    }
}

package com.transsion.hubsdk.core.hardware.smartbutton;

import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.hardware.smartbutton.TranSmartButtonManagerExt;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.hardware.display.ITranFlexButtonCallback;
import com.transsion.hubsdk.hardware.display.ITranShoulderButtonCallback;
import com.transsion.hubsdk.hardware.display.ITranSmartButtonCallback;
import com.transsion.hubsdk.hardware.smartbutton.ITranSmartButtonManagerExt;
import com.transsion.hubsdk.interfaces.hardware.smartbutton.ITranSmartButtonManagerExtAdapter;

public class TranThubSmartButtonManagerExt implements ITranSmartButtonManagerExtAdapter {
    private static final String SERVICE_NAME = "tran_smart_button_ext";
    private static final String TAG = "TranThubSmartButtonManagerExt";
    private static TranThubSmartButtonManagerExt sInstance;
    private ITranSmartButtonManagerExt mService = ITranSmartButtonManagerExt.Stub.asInterface(TranServiceManager.getServiceIBinder(SERVICE_NAME));

    public class TranFlexButtonCallback extends ITranFlexButtonCallback.Stub {
        private TranSmartButtonManagerExt.ITranFlexButtonCallback mTranFlexButtonCallback;

        public TranFlexButtonCallback(TranSmartButtonManagerExt.ITranFlexButtonCallback iTranFlexButtonCallback) {
            this.mTranFlexButtonCallback = iTranFlexButtonCallback;
        }

        public void onKeyDown() {
            TranSmartButtonManagerExt.ITranFlexButtonCallback iTranFlexButtonCallback = this.mTranFlexButtonCallback;
            if (iTranFlexButtonCallback != null) {
                iTranFlexButtonCallback.onKeyDown();
            }
        }

        public void onKeyUp() {
            TranSmartButtonManagerExt.ITranFlexButtonCallback iTranFlexButtonCallback = this.mTranFlexButtonCallback;
            if (iTranFlexButtonCallback != null) {
                iTranFlexButtonCallback.onKeyUp();
            }
        }
    }

    public class TranShoulderButtonCallback extends ITranShoulderButtonCallback.Stub {
        private TranSmartButtonManagerExt.ITranShoulderButtonCallback mTranShoulderButtonCallback;

        public TranShoulderButtonCallback(TranSmartButtonManagerExt.ITranShoulderButtonCallback iTranShoulderButtonCallback) {
            this.mTranShoulderButtonCallback = iTranShoulderButtonCallback;
        }

        public void onKeyEvent(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            TranSmartButtonManagerExt.ITranShoulderButtonCallback iTranShoulderButtonCallback = this.mTranShoulderButtonCallback;
            if (iTranShoulderButtonCallback != null) {
                iTranShoulderButtonCallback.onKeyEvent(i, i2, i3, i4, i5);
            }
        }
    }

    public class TranSmartButtonCallback extends ITranSmartButtonCallback.Stub {
        private TranSmartButtonManagerExt.ITranSmartButtonCallback mTranSmartButtonCallback;

        public TranSmartButtonCallback(TranSmartButtonManagerExt.ITranSmartButtonCallback iTranSmartButtonCallback) {
            this.mTranSmartButtonCallback = iTranSmartButtonCallback;
        }

        public void onPress() {
            TranSmartButtonManagerExt.ITranSmartButtonCallback iTranSmartButtonCallback = this.mTranSmartButtonCallback;
            if (iTranSmartButtonCallback != null) {
                iTranSmartButtonCallback.onPress();
            }
        }
    }

    private TranThubSmartButtonManagerExt() {
    }

    public static synchronized TranThubSmartButtonManagerExt getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new TranThubSmartButtonManagerExt();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    @Override
    public boolean isFlexButtonHasListener() {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (!TranThubVersionUtil.isRecentAndroidX() || (iTranSmartButtonManagerExt = this.mService) == null) {
            return false;
        }
        try {
            return iTranSmartButtonManagerExt.isFlexButtonHasListener();
        } catch (RemoteException unused) {
            TranSdkLog.d(TAG, "isFlexButtonHasListener fail");
            return false;
        }
    }

    @Override
    public void notifyAllToFlexButton(int i) {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (TranThubVersionUtil.isRecentAndroidX() && (iTranSmartButtonManagerExt = this.mService) != null) {
            try {
                iTranSmartButtonManagerExt.notifyAllToFlexButton(i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "notifyAllToFlexButton fail");
            }
        }
    }

    @Override
    public void notifyAllToShoulderButton(int i, int i2, int i3, int i4, int i5) {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (TranThubVersionUtil.isRecentAndroidX() && (iTranSmartButtonManagerExt = this.mService) != null) {
            try {
                iTranSmartButtonManagerExt.notifyAllToShoulderButton(i, i2, i3, i4, i5);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "notifyAllToShoulderButton fail");
            }
        }
    }

    @Override
    public void notifyAllToSmartButton() {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (TranThubVersionUtil.isRecentAndroidX() && (iTranSmartButtonManagerExt = this.mService) != null) {
            try {
                iTranSmartButtonManagerExt.notifyAllToSmartButton();
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "notifyAllToSmartButton fail");
            }
        }
    }

    @Override
    public void notifyFlexButtonBKey(int i, int i2) {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (TranThubVersionUtil.isRecentAndroidX() && (iTranSmartButtonManagerExt = this.mService) != null) {
            try {
                iTranSmartButtonManagerExt.notifyFlexButtonBKey(i, i2);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "notifyFlexButtonBKey fail");
            }
        }
    }

    @Override
    public void registerFlexButtonCallback(int i, TranSmartButtonManagerExt.ITranFlexButtonCallback iTranFlexButtonCallback) {
        if (TranThubVersionUtil.isRecentAndroidX() && this.mService != null) {
            try {
                this.mService.registerFlexButtonCallback(new TranFlexButtonCallback(iTranFlexButtonCallback), i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "registerFlexButtonCallback fail");
            }
        }
    }

    @Override
    public void registerShoulderButtonCallback(int i, TranSmartButtonManagerExt.ITranShoulderButtonCallback iTranShoulderButtonCallback) {
        if (TranThubVersionUtil.isRecentAndroidX() && this.mService != null) {
            try {
                this.mService.registerShoulderButtonCallback(new TranShoulderButtonCallback(iTranShoulderButtonCallback), i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "registerShoulderButtonCallback fail");
            }
        }
    }

    @Override
    public void registerSmartButtonCallback(int i, TranSmartButtonManagerExt.ITranSmartButtonCallback iTranSmartButtonCallback) {
        if (TranThubVersionUtil.isRecentAndroidX() && this.mService != null) {
            try {
                this.mService.registerSmartButtonCallback(new TranSmartButtonCallback(iTranSmartButtonCallback), i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "registerSmartButtonCallback fail");
            }
        }
    }

    @Override
    public void unregisterFlexButtonCallback(int i) {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (TranThubVersionUtil.isRecentAndroidX() && (iTranSmartButtonManagerExt = this.mService) != null) {
            try {
                iTranSmartButtonManagerExt.unregisterFlexButtonCallback(i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "unregisterFlexButtonCallback fail");
            }
        }
    }

    @Override
    public void unregisterShoulderButtonCallback(int i) {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (TranThubVersionUtil.isRecentAndroidX() && (iTranSmartButtonManagerExt = this.mService) != null) {
            try {
                iTranSmartButtonManagerExt.unregisterShoulderButtonCallback(i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "unregisterShoulderButtonCallback fail");
            }
        }
    }

    @Override
    public void unregisterSmartButtonCallback(int i) {
        ITranSmartButtonManagerExt iTranSmartButtonManagerExt;
        if (TranThubVersionUtil.isRecentAndroidX() && (iTranSmartButtonManagerExt = this.mService) != null) {
            try {
                iTranSmartButtonManagerExt.unregisterSmartButtonCallback(i);
            } catch (RemoteException unused) {
                TranSdkLog.d(TAG, "unregisterSmartButtonCallback fail");
            }
        }
    }
}

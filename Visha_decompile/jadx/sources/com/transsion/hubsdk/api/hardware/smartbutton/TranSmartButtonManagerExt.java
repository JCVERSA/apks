package com.transsion.hubsdk.api.hardware.smartbutton;

import com.transsion.hubsdk.aosp.hardware.smartbutton.TranAospSmartButtonManagerExt;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.hardware.smartbutton.TranThubSmartButtonManagerExt;
import com.transsion.hubsdk.interfaces.hardware.smartbutton.ITranSmartButtonManagerExtAdapter;

public class TranSmartButtonManagerExt {
    private static final String TAG = "TranSmartButtonManagerExt";
    private TranAospSmartButtonManagerExt mAospService;

    public interface ITranFlexButtonCallback {
        void onKeyDown();

        void onKeyUp();
    }

    public interface ITranShoulderButtonCallback {
        void onKeyEvent(int i, int i2, int i3, int i4, int i5);
    }

    public interface ITranSmartButtonCallback {
        void onPress();
    }

    public ITranSmartButtonManagerExtAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            return TranThubSmartButtonManagerExt.getInstance();
        }
        TranSdkLog.i(TAG, "TranAospSmartButtonManagerExt");
        TranAospSmartButtonManagerExt tranAospSmartButtonManagerExt = this.mAospService;
        if (tranAospSmartButtonManagerExt != null) {
            return tranAospSmartButtonManagerExt;
        }
        TranAospSmartButtonManagerExt tranAospSmartButtonManagerExt2 = new TranAospSmartButtonManagerExt();
        this.mAospService = tranAospSmartButtonManagerExt2;
        return tranAospSmartButtonManagerExt2;
    }

    public boolean isFlexButtonHasListener() throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33511).isFlexButtonHasListener();
    }

    public void notifyAllToFlexButton(int i) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33511).notifyAllToFlexButton(i);
    }

    public void notifyAllToShoulderButton(int i, int i2, int i3, int i4, int i5) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33511).notifyAllToShoulderButton(i, i2, i3, i4, i5);
    }

    public void notifyAllToSmartButton() throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33511).notifyAllToSmartButton();
    }

    public void notifyFlexButtonBKey(int i, int i2) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33511).notifyFlexButtonBKey(i, i2);
    }

    public void registerFlexButtonCallback(int i, ITranFlexButtonCallback iTranFlexButtonCallback) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        if (iTranFlexButtonCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        getService(TranVersion.Core.VERSION_33511).registerFlexButtonCallback(i, iTranFlexButtonCallback);
    }

    public void registerShoulderButtonCallback(int i, ITranShoulderButtonCallback iTranShoulderButtonCallback) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        if (iTranShoulderButtonCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        getService(TranVersion.Core.VERSION_33511).registerShoulderButtonCallback(i, iTranShoulderButtonCallback);
    }

    public void registerSmartButtonCallback(int i, ITranSmartButtonCallback iTranSmartButtonCallback) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        if (iTranSmartButtonCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        getService(TranVersion.Core.VERSION_33511).registerSmartButtonCallback(i, iTranSmartButtonCallback);
    }

    public void unregisterFlexButtonCallback(int i) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        getService(TranVersion.Core.VERSION_33511).unregisterFlexButtonCallback(i);
    }

    public void unregisterShoulderButtonCallback(int i) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        getService(TranVersion.Core.VERSION_33511).unregisterShoulderButtonCallback(i);
    }

    public void unregisterSmartButtonCallback(int i) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        getService(TranVersion.Core.VERSION_33511).unregisterSmartButtonCallback(i);
    }
}

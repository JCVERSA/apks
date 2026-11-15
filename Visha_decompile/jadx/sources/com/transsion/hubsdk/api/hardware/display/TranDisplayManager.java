package com.transsion.hubsdk.api.hardware.display;

import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.transsion.hubsdk.aosp.hardware.display.TranAospDisplayManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.hardware.display.TranThubDisplayManager;
import com.transsion.hubsdk.interfaces.hardware.display.ITranDisplayManagerAdapter;

public class TranDisplayManager {
    private static final String TAG = "TranDisplayManager";
    private TranAospDisplayManager mAospService;
    private TranThubDisplayManager mThubService;

    public interface DualDisplayListener {
        void onDisplayAdded(int i);

        void onDisplayRemoved(int i);
    }

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

    public interface ITranTentModeCallback {
        void onTentStateChanged(int i);
    }

    public interface TranPowerStateChangedCallback {
        void onColorFadeSateChanged(int i);

        void onPowerModeAndBrightnessChanged(int i, float f);
    }

    public void addShowInDualDisplay(String str, String str2) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33161).addShowInDualDisplay(str, str2);
    }

    public void closeDualDisplay() {
        getService(TranVersion.Core.VERSION_33161).closeDualDisplay();
    }

    public void closeDualDisplayForSelfie() {
        getService(TranVersion.Core.VERSION_33261).closeDualDisplayForSelfie();
    }

    public void executeSmartbuttonFunction(int i, String str, String str2, boolean z) throws TranThubIncompatibleException {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("pkg or shortcut must not be null!");
        }
        getService(TranVersion.Core.VERSION_33441).executeSmartbuttonFunction(i, str, str2, z);
    }

    public int getCurSelfieDisplayId() {
        return getService(TranVersion.Core.VERSION_33261).getCurSelfieDisplayId();
    }

    public int getForcedUsingDisplayMode() {
        return getService(TranVersion.Core.VERSION_33171).getForcedUsingDisplayMode();
    }

    public int getSecondaryDisplayId() {
        return getService(TranVersion.Core.VERSION_33151).getSecondaryDisplayId();
    }

    public ITranDisplayManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubDisplayManager tranThubDisplayManager = this.mThubService;
            if (tranThubDisplayManager != null) {
                return tranThubDisplayManager;
            }
            TranThubDisplayManager tranThubDisplayManager2 = TranThubDisplayManager.getInstance();
            this.mThubService = tranThubDisplayManager2;
            return tranThubDisplayManager2;
        }
        TranSdkLog.i(TAG, "TranAospDisplayManager");
        TranAospDisplayManager tranAospDisplayManager = this.mAospService;
        if (tranAospDisplayManager != null) {
            return tranAospDisplayManager;
        }
        TranAospDisplayManager tranAospDisplayManager2 = new TranAospDisplayManager();
        this.mAospService = tranAospDisplayManager2;
        return tranAospDisplayManager2;
    }

    public int getSourceConnectFlag() {
        return getService(TranVersion.Core.VERSION_33181).getSourceConnectFlag();
    }

    public boolean isDualDisplayForSelfie() {
        return getService(TranVersion.Core.VERSION_33261).isDualDisplayForSelfie();
    }

    public boolean isTentMode() throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33241).isTentMode();
    }

    public void openDualDisplay() {
        getService(TranVersion.Core.VERSION_33161).openDualDisplay();
    }

    public void openDualDisplayForSelfie(Bundle bundle) {
        if (bundle == null) {
            throw new IllegalArgumentException("Bundle state cannot be null");
        }
        getService(TranVersion.Core.VERSION_33261).openDualDisplayForSelfie(bundle);
    }

    public void registerDualDisplayListener(DualDisplayListener dualDisplayListener, Handler handler) {
        getService(TranVersion.Core.VERSION_33161).registerDualDisplayListener(dualDisplayListener, handler);
    }

    public void registerFlexButtonCallback(int i, ITranFlexButtonCallback iTranFlexButtonCallback) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        if (iTranFlexButtonCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        getService(TranVersion.Core.VERSION_33271).registerFlexButtonCallback(i, iTranFlexButtonCallback);
    }

    public boolean registerPowerStateChangedCallback(TranPowerStateChangedCallback tranPowerStateChangedCallback, String str) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (tranPowerStateChangedCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Tag must not be null");
        }
        try {
            Class.forName("com.transsion.hubsdk.hardware.display.ITranPowerStateChangedCallback");
            return getService(TranVersion.Core.VERSION_33351).registerPowerStateChangedCallback(tranPowerStateChangedCallback, str);
        } catch (ClassNotFoundException e) {
            throw new TranThubIncompatibleException("No interface,please implement yourself: " + e.getMessage());
        }
    }

    public void registerShoulderButtonCallback(int i, ITranShoulderButtonCallback iTranShoulderButtonCallback) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        if (iTranShoulderButtonCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        getService(TranVersion.Core.VERSION_33441).registerShoulderButtonCallback(i, iTranShoulderButtonCallback);
    }

    public void registerSmartButtonCallback(int i, ITranSmartButtonCallback iTranSmartButtonCallback) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        if (iTranSmartButtonCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        getService(TranVersion.Core.VERSION_33321).registerSmartButtonCallback(i, iTranSmartButtonCallback);
    }

    public void registerTentModeCallback(int i, ITranTentModeCallback iTranTentModeCallback) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        if (iTranTentModeCallback == null) {
            throw new IllegalArgumentException("Callback must not be null");
        }
        getService(TranVersion.Core.VERSION_33241).registerTentModeCallback(i, iTranTentModeCallback);
    }

    public void setBrightness(int i, float f) {
        getService(TranVersion.Core.VERSION_33151).setBrightness(i, f);
    }

    public void setTemporaryBrightness(int i, float f) {
        getService(TranVersion.Core.VERSION_33131).setTemporaryBrightness(i, f);
    }

    public void setTranAutoBrightnessTemporarily(int i, boolean z, String str) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            if (str == null) {
                throw new IllegalArgumentException("Reason must not be null");
            }
            getService(TranVersion.Core.VERSION_33311).setTranAutoBrightnessTemporarily(i, z, str);
        }
    }

    public boolean unRegisterPowerStateChangedListener(String str) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Tag must not be null");
        }
        try {
            Class.forName("com.transsion.hubsdk.hardware.display.ITranPowerStateChangedCallback");
            return getService(TranVersion.Core.VERSION_33351).unRegisterPowerStateChangedListener(str);
        } catch (ClassNotFoundException e) {
            throw new TranThubIncompatibleException("No interface,please implement yourself: " + e.getMessage());
        }
    }

    public void unregisterDualDisplayListener(DualDisplayListener dualDisplayListener) {
        getService(TranVersion.Core.VERSION_33161).unregisterDualDisplayListener(dualDisplayListener);
    }

    public void unregisterFlexButtonCallback(int i) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        getService(TranVersion.Core.VERSION_33271).unregisterFlexButtonCallback(i);
    }

    public void unregisterShoulderButtonCallback(int i) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        getService(TranVersion.Core.VERSION_33441).unregisterShoulderButtonCallback(i);
    }

    public void unregisterSmartButtonCallback(int i) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        getService(TranVersion.Core.VERSION_33321).unregisterSmartButtonCallback(i);
    }

    public void unregisterTentModeCallback(int i) throws TranThubIncompatibleException {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Pid must out of range!");
        }
        getService(TranVersion.Core.VERSION_33241).unregisterTentModeCallback(i);
    }
}

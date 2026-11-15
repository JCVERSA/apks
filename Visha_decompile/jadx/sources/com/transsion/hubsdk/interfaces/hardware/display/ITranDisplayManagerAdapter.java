package com.transsion.hubsdk.interfaces.hardware.display;

import android.os.Bundle;
import android.os.Handler;
import com.transsion.hubsdk.api.hardware.display.TranDisplayManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranDisplayManagerAdapter {
    void addShowInDualDisplay(String str, String str2) throws TranThubIncompatibleException;

    void closeDualDisplay();

    void closeDualDisplayForSelfie();

    void executeSmartbuttonFunction(int i, String str, String str2, boolean z) throws TranThubIncompatibleException;

    int getCurSelfieDisplayId();

    int getForcedUsingDisplayMode();

    int getSecondaryDisplayId();

    int getSourceConnectFlag();

    boolean isDualDisplayForSelfie();

    boolean isTentMode() throws TranThubIncompatibleException;

    void openDualDisplay();

    void openDualDisplayForSelfie(Bundle bundle);

    void registerDualDisplayListener(TranDisplayManager.DualDisplayListener dualDisplayListener, Handler handler);

    void registerFlexButtonCallback(int i, TranDisplayManager.ITranFlexButtonCallback iTranFlexButtonCallback) throws TranThubIncompatibleException;

    boolean registerPowerStateChangedCallback(TranDisplayManager.TranPowerStateChangedCallback tranPowerStateChangedCallback, String str) throws TranThubIncompatibleException;

    void registerShoulderButtonCallback(int i, TranDisplayManager.ITranShoulderButtonCallback iTranShoulderButtonCallback) throws TranThubIncompatibleException;

    void registerSmartButtonCallback(int i, TranDisplayManager.ITranSmartButtonCallback iTranSmartButtonCallback) throws TranThubIncompatibleException;

    void registerTentModeCallback(int i, TranDisplayManager.ITranTentModeCallback iTranTentModeCallback) throws TranThubIncompatibleException;

    void setBrightness(int i, float f);

    void setTemporaryBrightness(int i, float f);

    void setTranAutoBrightnessTemporarily(int i, boolean z, String str);

    boolean unRegisterPowerStateChangedListener(String str) throws TranThubIncompatibleException;

    void unregisterDualDisplayListener(TranDisplayManager.DualDisplayListener dualDisplayListener);

    void unregisterFlexButtonCallback(int i) throws TranThubIncompatibleException;

    void unregisterShoulderButtonCallback(int i) throws TranThubIncompatibleException;

    void unregisterSmartButtonCallback(int i) throws TranThubIncompatibleException;

    void unregisterTentModeCallback(int i) throws TranThubIncompatibleException;
}

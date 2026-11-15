package com.transsion.hubsdk.interfaces.hardware.smartbutton;

import com.transsion.hubsdk.api.hardware.smartbutton.TranSmartButtonManagerExt;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranSmartButtonManagerExtAdapter {
    boolean isFlexButtonHasListener() throws TranThubIncompatibleException;

    void notifyAllToFlexButton(int i) throws TranThubIncompatibleException;

    void notifyAllToShoulderButton(int i, int i2, int i3, int i4, int i5) throws TranThubIncompatibleException;

    void notifyAllToSmartButton() throws TranThubIncompatibleException;

    void notifyFlexButtonBKey(int i, int i2) throws TranThubIncompatibleException;

    void registerFlexButtonCallback(int i, TranSmartButtonManagerExt.ITranFlexButtonCallback iTranFlexButtonCallback) throws TranThubIncompatibleException;

    void registerShoulderButtonCallback(int i, TranSmartButtonManagerExt.ITranShoulderButtonCallback iTranShoulderButtonCallback) throws TranThubIncompatibleException;

    void registerSmartButtonCallback(int i, TranSmartButtonManagerExt.ITranSmartButtonCallback iTranSmartButtonCallback) throws TranThubIncompatibleException;

    void unregisterFlexButtonCallback(int i) throws TranThubIncompatibleException;

    void unregisterShoulderButtonCallback(int i) throws TranThubIncompatibleException;

    void unregisterSmartButtonCallback(int i) throws TranThubIncompatibleException;
}

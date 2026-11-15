package com.transsion.hubsdk.aosp.hardware.smartbutton;

import com.transsion.hubsdk.api.hardware.smartbutton.TranSmartButtonManagerExt;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.interfaces.hardware.smartbutton.ITranSmartButtonManagerExtAdapter;

public class TranAospSmartButtonManagerExt implements ITranSmartButtonManagerExtAdapter {
    @Override
    public boolean isFlexButtonHasListener() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method isFlexButtonHasListener");
    }

    @Override
    public void notifyAllToFlexButton(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method notifyAllToFlexButton");
    }

    @Override
    public void notifyAllToShoulderButton(int i, int i2, int i3, int i4, int i5) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method notifyAllToShoulderButton");
    }

    @Override
    public void notifyAllToSmartButton() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method notifyAllToSmartButton");
    }

    @Override
    public void notifyFlexButtonBKey(int i, int i2) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method notifyFlexButtonBKey");
    }

    @Override
    public void registerFlexButtonCallback(int i, TranSmartButtonManagerExt.ITranFlexButtonCallback iTranFlexButtonCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerFlexButtonCallback");
    }

    @Override
    public void registerShoulderButtonCallback(int i, TranSmartButtonManagerExt.ITranShoulderButtonCallback iTranShoulderButtonCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerShoulderButtonCallback");
    }

    @Override
    public void registerSmartButtonCallback(int i, TranSmartButtonManagerExt.ITranSmartButtonCallback iTranSmartButtonCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method registerSmartButtonCallback");
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
}

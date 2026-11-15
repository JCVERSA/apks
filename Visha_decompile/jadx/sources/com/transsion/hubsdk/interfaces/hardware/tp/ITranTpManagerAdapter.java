package com.transsion.hubsdk.interfaces.hardware.tp;

import com.transsion.hubsdk.api.hardware.tp.TranTpManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranTpManagerAdapter {
    String getValue(int i) throws TranThubIncompatibleException;

    void registerCallback(int i, TranTpManager.TranTpCallback tranTpCallback) throws TranThubIncompatibleException;

    boolean setValue(int i, String str) throws TranThubIncompatibleException;

    void unregisterCallback(TranTpManager.TranTpCallback tranTpCallback) throws TranThubIncompatibleException;
}

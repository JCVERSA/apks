package com.transsion.hubsdk.aosp.os;

import android.os.Bundle;
import com.transsion.hubsdk.api.os.TranVibratorManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.interfaces.os.ITranVibratorManagerAdapter;

public class TranAospVibratorManager implements ITranVibratorManagerAdapter {
    @Override
    public void stop() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method stop");
    }

    @Override
    public void vibrate(String str, TranVibratorManager.IMediaCallback iMediaCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method vibrate");
    }

    @Override
    public void vibrate(String str) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method vibrate");
    }

    @Override
    public void vibrate(String str, TranVibratorManager.IMediaCallback iMediaCallback, Bundle bundle) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method vibrate");
    }

    @Override
    public void vibrate(String str, Bundle bundle) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method vibrate");
    }

    @Override
    public void vibrate(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method vibrate");
    }
}

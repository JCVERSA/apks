package com.transsion.hubsdk.interfaces.os;

import android.os.Bundle;
import com.transsion.hubsdk.api.os.TranVibratorManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranVibratorManagerAdapter {
    void stop() throws TranThubIncompatibleException;

    void vibrate(int i) throws TranThubIncompatibleException;

    void vibrate(String str) throws TranThubIncompatibleException;

    void vibrate(String str, Bundle bundle) throws TranThubIncompatibleException;

    void vibrate(String str, TranVibratorManager.IMediaCallback iMediaCallback) throws TranThubIncompatibleException;

    void vibrate(String str, TranVibratorManager.IMediaCallback iMediaCallback, Bundle bundle) throws TranThubIncompatibleException;
}

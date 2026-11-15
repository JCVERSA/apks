package com.transsion.hubsdk.interfaces.gamemode;

import android.os.Binder;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranGameModeManagerAdapter {
    Binder acquireGestureBlocker(int i) throws TranThubIncompatibleException;

    boolean isGameModeEnable() throws TranThubIncompatibleException;

    boolean isOperationRejected(int i) throws TranThubIncompatibleException;

    void releaseGestureBlocker(Binder binder) throws TranThubIncompatibleException;
}

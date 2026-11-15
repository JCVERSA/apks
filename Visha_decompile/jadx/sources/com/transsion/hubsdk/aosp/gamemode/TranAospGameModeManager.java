package com.transsion.hubsdk.aosp.gamemode;

import android.content.Context;
import android.os.Binder;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.interfaces.gamemode.ITranGameModeManagerAdapter;

public class TranAospGameModeManager implements ITranGameModeManagerAdapter {
    public TranAospGameModeManager(Context context) {
    }

    @Override
    public Binder acquireGestureBlocker(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method acquireGestureBlocker");
    }

    @Override
    public boolean isGameModeEnable() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method isGameModeEnable");
    }

    @Override
    public boolean isOperationRejected(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method isOperationRejected");
    }

    @Override
    public void releaseGestureBlocker(Binder binder) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method releaseGestureBlocker");
    }
}

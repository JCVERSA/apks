package com.transsion.hubsdk.core.gamemode;

import android.content.Context;
import android.os.Binder;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.gamemode.TranGameModeManager;
import com.transsion.hubsdk.interfaces.gamemode.ITranGameModeManagerAdapter;

public class TranThubGameModeManager implements ITranGameModeManagerAdapter {
    private static final String TAG = "TranThubGameModeManager";
    private final TranGameModeManager mGameModeManager;

    public TranThubGameModeManager(Context context) {
        this.mGameModeManager = new TranGameModeManager(context);
    }

    @Override
    public Binder acquireGestureBlocker(int i) {
        TranSdkLog.d(TAG, "acquireGestureBlocker type=" + i);
        TranGameModeManager tranGameModeManager = this.mGameModeManager;
        if (tranGameModeManager != null) {
            return tranGameModeManager.acquireGestureBlocker(i);
        }
        return null;
    }

    @Override
    public boolean isGameModeEnable() {
        TranSdkLog.d(TAG, "isGameModeEnable");
        TranGameModeManager tranGameModeManager = this.mGameModeManager;
        return tranGameModeManager != null && tranGameModeManager.isGameModeEnable();
    }

    @Override
    public boolean isOperationRejected(int i) {
        TranSdkLog.d(TAG, "isOperationRejected op=" + i);
        TranGameModeManager tranGameModeManager = this.mGameModeManager;
        return tranGameModeManager != null && tranGameModeManager.isOperationRejected(i);
    }

    @Override
    public void releaseGestureBlocker(Binder binder) {
        TranSdkLog.d(TAG, "releaseGestureBlocker");
        TranGameModeManager tranGameModeManager = this.mGameModeManager;
        if (tranGameModeManager != null) {
            tranGameModeManager.releaseGestureBlocker(binder);
        }
    }
}

package com.transsion.hubsdk.core.content.pm;

import android.content.IntentSender;
import android.content.pm.ShortcutInfo;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.content.pm.ITranShortcutManager;
import com.transsion.hubsdk.interfaces.content.pm.ITranShortcutManagerAdapter;

public class TranThubShortcutManager implements ITranShortcutManagerAdapter {
    private static final String TAG = "TranThubShortcutManager";
    private ITranShortcutManager mService = ITranShortcutManager.Stub.asInterface(TranServiceManager.getServiceIBinder("shortcut"));

    public Object lambda$requestPinShortcut$0(String str, ShortcutInfo shortcutInfo, IntentSender intentSender, int i) throws RemoteException {
        ITranShortcutManager iTranShortcutManager = this.mService;
        return iTranShortcutManager != null ? Boolean.valueOf(iTranShortcutManager.requestPinShortcut(str, shortcutInfo, intentSender, i)) : Boolean.FALSE;
    }

    @Override
    public boolean requestPinShortcut(final String str, final ShortcutInfo shortcutInfo, final IntentSender intentSender, final int i) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$requestPinShortcut$0(str, shortcutInfo, intentSender, i);
            }
        }, "shortcut")).booleanValue();
        TranSdkLog.d(TAG, "requestPinShortcut result:" + zBooleanValue);
        return zBooleanValue;
    }

    @VisibleForTesting
    public void setService(ITranShortcutManager iTranShortcutManager) {
        this.mService = iTranShortcutManager;
    }
}

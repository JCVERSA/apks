package com.transsion.hubsdk.aosp.pm;

import android.content.IntentSender;
import android.content.pm.IShortcutService;
import android.content.pm.ShortcutInfo;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.internal.infra.AndroidFuture;
import com.transsion.hubsdk.common.util.TranSdkLog;
import java.util.concurrent.ExecutionException;

public class TranAospShortcutManagerExt {
    private static final String TAG = "TranAospShortcutManagerExt";
    private IShortcutService mService;

    public TranAospShortcutManagerExt() {
        if (this.mService == null) {
            this.mService = IShortcutService.Stub.asInterface(ServiceManager.getService("shortcut"));
        }
    }

    private <T> T getFutureOrThrow(AndroidFuture<T> androidFuture) {
        try {
            return (T) androidFuture.get();
        } catch (Throwable th) {
            th = th;
            if (th instanceof ExecutionException) {
                th = th.getCause();
                TranSdkLog.d(TAG, "ExecutionException fail " + th);
            }
            if (th instanceof RuntimeException) {
                TranSdkLog.d(TAG, "RuntimeException fail " + th);
            }
            if (th instanceof Error) {
                TranSdkLog.d(TAG, "Error fail " + th);
            }
            TranSdkLog.d(TAG, "getFutureOrThrow fail " + th);
            return null;
        }
    }

    public boolean requestPinShortcut(String str, ShortcutInfo shortcutInfo, IntentSender intentSender, int i) {
        AndroidFuture androidFuture = new AndroidFuture();
        try {
            this.mService.requestPinShortcut(str, shortcutInfo, intentSender, i, androidFuture);
            return Boolean.parseBoolean((String) getFutureOrThrow(androidFuture));
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "requestPinShortcut fail " + e);
            return false;
        }
    }
}

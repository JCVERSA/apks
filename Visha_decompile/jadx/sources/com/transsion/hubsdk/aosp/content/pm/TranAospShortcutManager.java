package com.transsion.hubsdk.aosp.content.pm;

import android.content.Context;
import android.content.IntentSender;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.os.Build;
import com.transsion.hubsdk.aosp.pm.TranAospShortcutManagerExt;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.content.pm.ITranShortcutManagerAdapter;

public class TranAospShortcutManager implements ITranShortcutManagerAdapter {
    private static final String TAG = "TranAospShortcutManager";
    private Context mContext;
    private ShortcutManager mShortcutManager;
    private TranAospShortcutManagerExt mTranAospShortcutManagerExt;
    private static Class<?> sServiceManagerClass = TranDoorMan.getClass("android.os.ServiceManager");
    private static Class<?> sIShortcutServiceClass = TranDoorMan.getClass("android.content.pm.IShortcutService$Stub");

    public TranAospShortcutManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mShortcutManager = (ShortcutManager) context.getSystemService("shortcut");
    }

    private TranAospShortcutManagerExt getTranAospShortcutManagerExt() {
        if (this.mTranAospShortcutManagerExt == null) {
            this.mTranAospShortcutManagerExt = new TranAospShortcutManagerExt();
        }
        return this.mTranAospShortcutManagerExt;
    }

    @Override
    public boolean requestPinShortcut(String str, ShortcutInfo shortcutInfo, IntentSender intentSender, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 32) {
            if (i2 == 33) {
                return getTranAospShortcutManagerExt().requestPinShortcut(str, shortcutInfo, intentSender, i);
            }
            return false;
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mShortcutManager.getClass(), "requestPinShortcut", ShortcutInfo.class, IntentSender.class), this.mShortcutManager, shortcutInfo, intentSender);
        boolean zBooleanValue = objInvokeMethod instanceof Boolean ? ((Boolean) objInvokeMethod).booleanValue() : false;
        TranSdkLog.d(TAG, "requestPinShortcut result:" + zBooleanValue);
        return zBooleanValue;
    }
}

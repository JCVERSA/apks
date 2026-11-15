package com.transsion.hubsdk.api.content.pm;

import android.content.IntentSender;
import android.content.pm.ShortcutInfo;
import com.transsion.hubsdk.aosp.content.pm.TranAospShortcutManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.pm.TranThubShortcutManager;
import com.transsion.hubsdk.interfaces.content.pm.ITranShortcutManagerAdapter;

public class TranShortcutManager {
    private static final String TAG = "TranShortcutManager";
    private TranAospShortcutManager mAospService;
    private TranThubShortcutManager mThubService;

    public ITranShortcutManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubShortcutManager");
            TranThubShortcutManager tranThubShortcutManager = this.mThubService;
            if (tranThubShortcutManager != null) {
                return tranThubShortcutManager;
            }
            TranThubShortcutManager tranThubShortcutManager2 = new TranThubShortcutManager();
            this.mThubService = tranThubShortcutManager2;
            return tranThubShortcutManager2;
        }
        TranSdkLog.i(TAG, "TranAospShortcutManager");
        TranAospShortcutManager tranAospShortcutManager = this.mAospService;
        if (tranAospShortcutManager != null) {
            return tranAospShortcutManager;
        }
        TranAospShortcutManager tranAospShortcutManager2 = new TranAospShortcutManager();
        this.mAospService = tranAospShortcutManager2;
        return tranAospShortcutManager2;
    }

    @TranLevel(level = 1)
    public boolean requestPinShortcut(String str, ShortcutInfo shortcutInfo, IntentSender intentSender, int i) {
        return getService(TranVersion.Core.VERSION_33171).requestPinShortcut(str, shortcutInfo, intentSender, i);
    }
}

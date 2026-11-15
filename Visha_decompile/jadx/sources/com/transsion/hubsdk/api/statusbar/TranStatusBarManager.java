package com.transsion.hubsdk.api.statusbar;

import com.transsion.hubsdk.aosp.statusbar.TranAospStatusBarManager;
import com.transsion.hubsdk.api.app.ITranStatusBar;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.statusbar.TranThubStatusBarManager;
import com.transsion.hubsdk.interfaces.statusbar.ITranStatusBarManagerAdapter;

public class TranStatusBarManager {
    public static final String FINGERPRINTSTARTAPPENABLE = "fingerprintStartAppEnable";
    public static final String GESTURESPENABLE = "gestureSpEnable";
    public static final String HIDENOTIFICATIONINMODE = "hideNotificationInMode";
    public static final String MAGAZINEENABLE = "magazineEnable";
    public static final String MULTIUSERENABLE = "multiUserEnable";
    public static final String NOTIFICATIONEVENTENABLE = "notificationEventEnable";
    public static final String NOTIFICATIONSUMMARYENABLE = "notificationSummaryEnable";
    public static final String SHOWULTRAPOWER = "showUltraPower";
    private static final String TAG = "TranStatusBarManager";
    private TranAospStatusBarManager mAospService;
    private TranThubStatusBarManager mThubService;

    public void autoStartFullIntent(String str, boolean z, String str2) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).autoStartFullIntent(str, z, str2);
        }
    }

    public void collapsePanels() {
        getService(TranVersion.Core.VERSION_33151).collapsePanels();
    }

    public void customGesturesEnable(String str, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).customGesturesEnable(str, z);
        }
    }

    public void customHeadsUp(String str, boolean z, String str2) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).customHeadsUp(str, z, str2);
        }
    }

    public void customNotificationStyle(String str, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).customNotificationStyle(str, z);
        }
    }

    public void customPanelEnable(String str, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).customPanelEnable(str, z);
        }
    }

    public void disable(int i) {
        getService(TranVersion.Core.VERSION_33111).disable(i);
    }

    public void disable2(int i) {
        getService(TranVersion.Core.VERSION_33461).disable2(i);
    }

    public void enableAction(String str, String str2, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33391).enableAction(str, str2, z);
        }
    }

    public void enableActionWithUrl(String str, String str2, boolean z, String str3) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33391).enableActionWithUrl(str, str2, z, str3);
        }
    }

    public void expandNotificationsPanel() {
        getService(TranVersion.Core.VERSION_33221).expandNotificationsPanel();
    }

    public void expandSettingsPanel() {
        getService(TranVersion.Core.VERSION_33221).expandSettingsPanel();
    }

    public ITranStatusBarManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubStatusBarManager tranThubStatusBarManager = this.mThubService;
            if (tranThubStatusBarManager != null) {
                return tranThubStatusBarManager;
            }
            TranThubStatusBarManager tranThubStatusBarManager2 = new TranThubStatusBarManager();
            this.mThubService = tranThubStatusBarManager2;
            return tranThubStatusBarManager2;
        }
        TranSdkLog.i(TAG, "TranAospStatusBarManager");
        TranAospStatusBarManager tranAospStatusBarManager = this.mAospService;
        if (tranAospStatusBarManager != null) {
            return tranAospStatusBarManager;
        }
        TranAospStatusBarManager tranAospStatusBarManager2 = new TranAospStatusBarManager();
        this.mAospService = tranAospStatusBarManager2;
        return tranAospStatusBarManager2;
    }

    public void onDestoryCallback(String str) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).onDestoryCallback(str);
        }
    }

    public void registerTranStatusBar(ITranStatusBar iTranStatusBar) {
        if (TranThubVersionUtil.isRecentAndroidW()) {
            getService(TranVersion.Core.VERSION_33421).registerTranStatusBar(iTranStatusBar);
        }
    }

    public void setIcon(String str, int i, int i2, String str2) {
        getService(TranVersion.Core.VERSION_33161).setIcon(str, i, i2, str2);
    }

    public void setIconVisibility(String str, boolean z) {
        getService(TranVersion.Core.VERSION_33161).setIconVisibility(str, z);
    }

    public void showPinningEscapeToast() {
        getService(TranVersion.Core.VERSION_33171).showPinningEscapeToast();
    }

    public void updateCloseHeadsUp(String str, boolean z, String str2) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33341).updateCloseHeadsUp(str, z, str2);
        }
    }
}

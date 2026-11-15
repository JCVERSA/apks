package com.transsion.hubsdk.api.view;

import android.graphics.Bitmap;
import android.view.WindowManager;
import com.transsion.hubsdk.aosp.view.TranAospWindowManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubWindowManager;
import com.transsion.hubsdk.interfaces.view.ITranWindowManagerAdapter;
import java.util.List;
import java.util.Map;

public class TranWindowManager {
    public static final int FIRST_SYSTEM_WINDOW = 2000;
    public static final int NORMAL_DISPLAY_MODE = 1;
    private static final String TAG = "TranWindowManager";
    public static final int TRANSIT_FIRST_CUSTOM = 12;
    public static final int TRANSIT_THUNDER_BACK_CLOSE = 33;
    public static final int TYPE_APPLICATION_OVERLAY = 2038;
    public static final int TYPE_KEYGUARD_DIALOG = 2009;
    public static final int TYPE_SYSTEM_DIALOG = 2008;
    public static final int ULTRA_SMALL_DISPLAY_MODE = 2;
    private TranAospWindowManager mAospService;
    private TranThubWindowManager mThubService;

    public static class TranLayoutParams {
        public static final int FIRST_SYSTEM_WINDOW = 2000;
        public static final int PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY = 1048576;
        public static final int PRIVATE_FLAG_SHOW_FOR_ALL_USERS = 16;
        public static final int PRIVATE_FLAG_TRUSTED_OVERLAY = 536870912;
        public static final int TYPE_BOOT_PROGRESS = 2021;
        public static final int TYPE_SCREENSHOT = 2036;
        public static final int TYPE_STATUS_BAR_PANEL = 2014;
    }

    public int getAppRefreshRate(String str) {
        if (!TranThubVersionUtil.isRecentAndroidU()) {
            return 0;
        }
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33361).getAppRefreshRate(str);
        }
        throw new IllegalArgumentException("pkgName is null");
    }

    public String getDefaultRefreshRateConfigList() {
        return !TranThubVersionUtil.isRecentAndroidU() ? "" : getService(TranVersion.Core.VERSION_33361).getDefaultRefreshRateConfigList();
    }

    public String getFocusedWindowTitle() {
        return getService(TranVersion.Core.VERSION_33461).getFocusedWindowTitle();
    }

    public List<String> getNoSupportApplicationInfo() {
        return getService(TranVersion.Core.VERSION_33451).getNoSupportApplicationInfo();
    }

    public Map<String, Integer> getNonUltraSmallApps() {
        return getService(TranVersion.Core.VERSION_33451).getNonUltraSmallApps();
    }

    public int getPrivateFlags(WindowManager.LayoutParams layoutParams) {
        if (layoutParams != null) {
            return getService(TranVersion.Core.VERSION_33311).getPrivateFlags(layoutParams);
        }
        throw new IllegalArgumentException("layoutParams is null");
    }

    public String getRefreshRateConfigList() {
        return !TranThubVersionUtil.isRecentAndroidU() ? "" : getService(TranVersion.Core.VERSION_33361).getRefreshRateConfigList();
    }

    public String getRootPinnedTaskPkgName() {
        return getService(TranVersion.Core.VERSION_33461).getRootPinnedTaskPkgName();
    }

    public ITranWindowManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubWindowManager");
            TranThubWindowManager tranThubWindowManager = this.mThubService;
            if (tranThubWindowManager != null) {
                return tranThubWindowManager;
            }
            TranThubWindowManager tranThubWindowManager2 = new TranThubWindowManager();
            this.mThubService = tranThubWindowManager2;
            return tranThubWindowManager2;
        }
        TranSdkLog.i(TAG, "TranAospWindowManager");
        TranAospWindowManager tranAospWindowManager = this.mAospService;
        if (tranAospWindowManager != null) {
            return tranAospWindowManager;
        }
        TranAospWindowManager tranAospWindowManager2 = new TranAospWindowManager();
        this.mAospService = tranAospWindowManager2;
        return tranAospWindowManager2;
    }

    public List<String> getSharedScreenPkgName() {
        return getService(TranVersion.Core.VERSION_33471).getSharedScreenPkgName();
    }

    public int getSwitchMode() {
        return getService(TranVersion.Core.VERSION_33451).getSwitchMode();
    }

    public String getTopResumedActivityPkgName() {
        return getService(TranVersion.Core.VERSION_33461).getTopResumedActivityPkgName();
    }

    public List<String> getTranPictureList(int i) {
        return getService(TranVersion.Core.VERSION_33141).getTranPictureList(i);
    }

    public int[] getTranPictureSupportMode() {
        return getService(TranVersion.Core.VERSION_33141).getTranPictureSupportMode();
    }

    public int getUltraSmallAppMode(String str) {
        return getService(TranVersion.Core.VERSION_33461).getUltraSmallAppMode(str);
    }

    public boolean hasMultiWindowForXDR() {
        return getService(TranVersion.Core.VERSION_33441).hasMultiWindowForXDR();
    }

    public void hookWindowScene(int i, int i2, int i3) {
        getService(TranVersion.Core.VERSION_33461).hookWindowScene(i, i2, i3);
    }

    public boolean isKeyguardShowing() {
        return getService(TranVersion.Core.VERSION_33461).isKeyguardShowing();
    }

    public boolean isKeyguardShowingAndNotOccluded() {
        return getService(TranVersion.Core.VERSION_33461).isKeyguardShowingAndNotOccluded();
    }

    public boolean isOccluded() {
        return getService(TranVersion.Core.VERSION_33371).isOccluded();
    }

    public void setCutoutMode(WindowManager.LayoutParams layoutParams, int i) {
        getService(TranVersion.Core.VERSION_33231).setCutoutMode(layoutParams, i);
    }

    public void setInputFeatures(WindowManager.LayoutParams layoutParams, int i) {
        if (layoutParams == null) {
            throw new IllegalArgumentException("layoutParams is null");
        }
        getService(TranVersion.Core.VERSION_33311).setInputFeatures(layoutParams, i);
    }

    public void setOSFullDialog(WindowManager.LayoutParams layoutParams, boolean z) {
        getService(TranVersion.Core.VERSION_33461).setOSFullDialog(layoutParams, z);
    }

    public void setPrivateFlags(WindowManager.LayoutParams layoutParams, int i) {
        if (layoutParams == null) {
            throw new IllegalArgumentException("LayoutParams is null.");
        }
        getService(TranVersion.Core.VERSION_33211).setPrivateFlags(layoutParams, i);
    }

    public void setRefreshRateConfigList(String str) {
        if (TranThubVersionUtil.isRecentAndroidU()) {
            getService(TranVersion.Core.VERSION_33361).setRefreshRateConfigList(str);
        }
    }

    public void setTranPictureMode(int i, String str) {
        getService(TranVersion.Core.VERSION_33141).setTranPictureMode(i, str);
    }

    public void setTrustedOverlay(WindowManager.LayoutParams layoutParams) {
        if (layoutParams == null) {
            throw new IllegalArgumentException("WindowManager.LayoutParams is null.");
        }
        getService(TranVersion.Core.VERSION_33211).setTrustedOverlay(layoutParams);
    }

    public void switchMode(int i) {
        getService(TranVersion.Core.VERSION_33451).switchMode(i);
    }

    @TranLevel(level = 1)
    public Bitmap tranScreenshotWallpaperLocked() {
        return getService(TranVersion.Core.VERSION_33181).tranScreenshotWallpaperLocked();
    }

    public void updateNoSupportApplicationInfo(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("appList is null");
        }
        getService(TranVersion.Core.VERSION_33451).updateNoSupportApplicationInfo(list);
    }

    public void updateNonUltraSmallApps(Map<String, Integer> map) {
        if (map == null) {
            throw new IllegalArgumentException("appList is null");
        }
        getService(TranVersion.Core.VERSION_33451).updateNonUltraSmallApps(map);
    }
}

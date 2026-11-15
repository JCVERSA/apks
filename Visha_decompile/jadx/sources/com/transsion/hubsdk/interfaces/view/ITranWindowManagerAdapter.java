package com.transsion.hubsdk.interfaces.view;

import android.graphics.Bitmap;
import android.view.WindowManager;
import java.util.List;
import java.util.Map;

public interface ITranWindowManagerAdapter {
    int getAppRefreshRate(String str);

    String getDefaultRefreshRateConfigList();

    String getFocusedWindowTitle();

    List<String> getNoSupportApplicationInfo();

    Map<String, Integer> getNonUltraSmallApps();

    int getPrivateFlags(WindowManager.LayoutParams layoutParams);

    String getRefreshRateConfigList();

    String getRootPinnedTaskPkgName();

    List<String> getSharedScreenPkgName();

    int getSwitchMode();

    String getTopResumedActivityPkgName();

    List<String> getTranPictureList(int i);

    int[] getTranPictureSupportMode();

    int getUltraSmallAppMode(String str);

    boolean hasMultiWindowForXDR();

    void hookWindowScene(int i, int i2, int i3);

    boolean isKeyguardShowing();

    boolean isKeyguardShowingAndNotOccluded();

    boolean isOccluded();

    void setCutoutMode(WindowManager.LayoutParams layoutParams, int i);

    void setInputFeatures(WindowManager.LayoutParams layoutParams, int i);

    void setOSFullDialog(WindowManager.LayoutParams layoutParams, boolean z);

    void setPrivateFlags(WindowManager.LayoutParams layoutParams, int i);

    void setRefreshRateConfigList(String str);

    void setTranPictureMode(int i, String str);

    void setTrustedOverlay(WindowManager.LayoutParams layoutParams);

    void switchMode(int i);

    Bitmap tranScreenshotWallpaperLocked();

    void updateNoSupportApplicationInfo(List<String> list);

    void updateNonUltraSmallApps(Map<String, Integer> map);
}

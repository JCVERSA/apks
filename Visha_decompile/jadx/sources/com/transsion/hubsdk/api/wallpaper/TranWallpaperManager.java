package com.transsion.hubsdk.api.wallpaper;

import android.app.WallpaperInfo;
import android.content.ComponentName;
import android.graphics.Bitmap;
import com.transsion.hubsdk.aosp.wallpaper.TranAospWallpaperManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.wallpaper.TranThubWallpaperManager;
import com.transsion.hubsdk.interfaces.wallpaper.ITranWallpaperManagerAdapter;

public class TranWallpaperManager {
    public static final String PACKAGE_NAME_ARGUMENT_EXCEPTION = "package name should not be null";
    private static final String TAG = "TranWallpaperManager";
    private TranAospWallpaperManager mAospService;
    private TranThubWallpaperManager mThubService;

    public void animateWallpaperToDim(float f) {
        getService(TranVersion.Core.VERSION_33451).animateWallpaperToDim(f);
    }

    public Bitmap getBitmapAsUser(int i, boolean z, int i2) {
        return getService(TranVersion.Core.VERSION_33311).getBitmapAsUser(i, z, i2);
    }

    public ITranWallpaperManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubWallpaperManager");
            TranThubWallpaperManager tranThubWallpaperManager = this.mThubService;
            if (tranThubWallpaperManager != null) {
                return tranThubWallpaperManager;
            }
            TranThubWallpaperManager tranThubWallpaperManager2 = new TranThubWallpaperManager();
            this.mThubService = tranThubWallpaperManager2;
            return tranThubWallpaperManager2;
        }
        TranSdkLog.i(TAG, "TranAospWallpaperManager");
        TranAospWallpaperManager tranAospWallpaperManager = this.mAospService;
        if (tranAospWallpaperManager != null) {
            return tranAospWallpaperManager;
        }
        TranAospWallpaperManager tranAospWallpaperManager2 = new TranAospWallpaperManager();
        this.mAospService = tranAospWallpaperManager2;
        return tranAospWallpaperManager2;
    }

    public WallpaperInfo getWallpaperInfo(int i) {
        return getService(TranVersion.Core.VERSION_33181).getWallpaperInfo(i);
    }

    @TranLevel(level = 1)
    public void setWallpaperComponent(ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        getService(TranVersion.Core.VERSION_33181).setWallpaperComponent(componentName);
    }

    public void setWallpaperComponentWithFlags(ComponentName componentName, int i) {
        if (componentName == null) {
            throw new IllegalArgumentException("package name should not be null");
        }
        getService(TranVersion.Core.VERSION_33511).setWallpaperComponentWithFlags(componentName, i);
    }
}

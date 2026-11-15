package com.transsion.hubsdk.api.app;

import android.app.WallpaperColors;
import com.transsion.hubsdk.aosp.app.TranAospWallpaperColors;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.app.TranThubWallpaperColors;
import com.transsion.hubsdk.interfaces.app.ITranWallpaperColorsAdapter;
import java.util.Map;

public class TranWallpaperColorsController {
    private static final String TAG = "TranWallpaperColorsController";
    private TranAospWallpaperColors mAospService;
    private TranThubWallpaperColors mThubService;

    public Map<Integer, Integer> getAllColors(WallpaperColors wallpaperColors) {
        if (wallpaperColors != null) {
            return getService(TranVersion.Core.VERSION_33311).getAllColors(wallpaperColors);
        }
        throw new IllegalArgumentException("wallpaperColors is null");
    }

    public ITranWallpaperColorsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubWallpaperColors");
            TranThubWallpaperColors tranThubWallpaperColors = this.mThubService;
            if (tranThubWallpaperColors != null) {
                return tranThubWallpaperColors;
            }
            TranThubWallpaperColors tranThubWallpaperColors2 = new TranThubWallpaperColors();
            this.mThubService = tranThubWallpaperColors2;
            return tranThubWallpaperColors2;
        }
        TranSdkLog.i(TAG, "TranAospWallpaperColors");
        TranAospWallpaperColors tranAospWallpaperColors = this.mAospService;
        if (tranAospWallpaperColors != null) {
            return tranAospWallpaperColors;
        }
        TranAospWallpaperColors tranAospWallpaperColors2 = new TranAospWallpaperColors();
        this.mAospService = tranAospWallpaperColors2;
        return tranAospWallpaperColors2;
    }
}

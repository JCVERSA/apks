package com.transsion.hubsdk.core.app;

import android.app.WallpaperColors;
import com.transsion.hubsdk.app.TranWallpaperColors;
import com.transsion.hubsdk.interfaces.app.ITranWallpaperColorsAdapter;
import java.util.Map;

public class TranThubWallpaperColors implements ITranWallpaperColorsAdapter {
    private TranWallpaperColors mTranWallpaperColors = new TranWallpaperColors();

    @Override
    public Map<Integer, Integer> getAllColors(WallpaperColors wallpaperColors) {
        TranWallpaperColors tranWallpaperColors = this.mTranWallpaperColors;
        if (tranWallpaperColors != null) {
            return tranWallpaperColors.getAllColors(wallpaperColors);
        }
        return null;
    }
}

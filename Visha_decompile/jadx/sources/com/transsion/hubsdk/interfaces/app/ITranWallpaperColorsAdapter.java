package com.transsion.hubsdk.interfaces.app;

import android.app.WallpaperColors;
import java.util.Map;

public interface ITranWallpaperColorsAdapter {
    Map<Integer, Integer> getAllColors(WallpaperColors wallpaperColors);
}

package com.transsion.hubsdk.aosp.app;

import android.app.WallpaperColors;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranWallpaperColorsAdapter;
import java.lang.reflect.Method;
import java.util.Map;

public class TranAospWallpaperColors implements ITranWallpaperColorsAdapter {
    @Override
    public Map<Integer, Integer> getAllColors(WallpaperColors wallpaperColors) {
        Method method = TranDoorMan.getMethod(WallpaperColors.class, "getAllColors", new Class[0]);
        if (method != null) {
            return (Map) TranDoorMan.invokeMethod(method, wallpaperColors, new Object[0]);
        }
        return null;
    }
}

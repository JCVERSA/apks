package com.transsion.hubsdk.interfaces.wallpaper;

import android.app.WallpaperInfo;
import android.content.ComponentName;
import android.graphics.Bitmap;

public interface ITranWallpaperManagerAdapter {
    void animateWallpaperToDim(float f);

    Bitmap getBitmapAsUser(int i, boolean z, int i2);

    WallpaperInfo getWallpaperInfo(int i);

    void setWallpaperComponent(ComponentName componentName);

    void setWallpaperComponentWithFlags(ComponentName componentName, int i);
}

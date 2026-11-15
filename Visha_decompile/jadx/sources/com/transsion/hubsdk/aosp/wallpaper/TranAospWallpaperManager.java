package com.transsion.hubsdk.aosp.wallpaper;

import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.wallpaper.ITranWallpaperManagerAdapter;
import java.lang.reflect.Method;

public class TranAospWallpaperManager implements ITranWallpaperManagerAdapter {
    private static final String TAG = "TranAospWallpaperManager";
    private Context mContext;
    private WallpaperManager mWallpaperManager;

    public TranAospWallpaperManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mWallpaperManager = (WallpaperManager) context.getSystemService("wallpaper");
    }

    @Override
    public void animateWallpaperToDim(float f) {
        Method method = TranDoorMan.getMethod(this.mWallpaperManager.getClass(), "animateWallpaperToDim", Float.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mWallpaperManager, Float.valueOf(f));
        }
    }

    @Override
    public Bitmap getBitmapAsUser(int i, boolean z, int i2) {
        Class<?> cls = this.mWallpaperManager.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "getBitmapAsUser", cls2, Boolean.TYPE, cls2);
        if (method != null) {
            return (Bitmap) TranDoorMan.invokeMethod(method, this.mWallpaperManager, Integer.valueOf(i), Boolean.valueOf(z), Integer.valueOf(i2));
        }
        return null;
    }

    @Override
    public WallpaperInfo getWallpaperInfo(int i) {
        try {
            return (WallpaperInfo) TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mWallpaperManager.getClass(), "getWallpaperInfo", Integer.TYPE), this.mWallpaperManager, Integer.valueOf(i));
        } catch (Exception e) {
            TranSdkLog.w(TAG, "getWallpaperInfo: e = " + e);
            return null;
        }
    }

    @Override
    public void setWallpaperComponent(ComponentName componentName) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mWallpaperManager.getClass(), "setWallpaperComponent", ComponentName.class), this.mWallpaperManager, componentName);
    }

    @Override
    public void setWallpaperComponentWithFlags(ComponentName componentName, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mWallpaperManager.getClass(), "setWallpaperComponentWithFlags", ComponentName.class, Integer.TYPE), this.mWallpaperManager, componentName, Integer.valueOf(i));
    }
}

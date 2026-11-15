package com.transsion.hubsdk.core.wallpaper;

import android.app.WallpaperInfo;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.app.ITranWallpaperManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.wallpaper.ITranWallpaperManagerAdapter;

public class TranThubWallpaperManager implements ITranWallpaperManagerAdapter {
    private static final String TAG = "TranThubWallpaperManager";
    private ITranWallpaperManager mService = ITranWallpaperManager.Stub.asInterface(TranServiceManager.getServiceIBinder("wallpaper"));

    public Object lambda$setWallpaperComponent$0(ComponentName componentName) throws RemoteException {
        ITranWallpaperManager iTranWallpaperManager = this.mService;
        if (iTranWallpaperManager == null) {
            return null;
        }
        iTranWallpaperManager.setWallpaperComponent(componentName);
        return null;
    }

    public Object lambda$setWallpaperComponentWithFlags$1(ComponentName componentName, int i) throws RemoteException {
        ITranWallpaperManager iTranWallpaperManager = this.mService;
        if (iTranWallpaperManager == null) {
            return null;
        }
        iTranWallpaperManager.setWallpaperComponentWithFlags(componentName, i);
        return null;
    }

    @Override
    public void animateWallpaperToDim(float f) {
        try {
            ITranWallpaperManager iTranWallpaperManager = this.mService;
            if (iTranWallpaperManager != null) {
                iTranWallpaperManager.animateWallpaperToDim(f);
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "animateWallpaperToDim: ", e);
        }
    }

    @Override
    public Bitmap getBitmapAsUser(int i, boolean z, int i2) {
        try {
            ITranWallpaperManager iTranWallpaperManager = this.mService;
            if (iTranWallpaperManager != null) {
                return iTranWallpaperManager.getBitmapAsUser(i, z, i2);
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getBitmapAsUser: ", e);
            return null;
        }
    }

    @Override
    public WallpaperInfo getWallpaperInfo(int i) {
        try {
            return this.mService.getWallpaperInfo(i);
        } catch (RemoteException e) {
            TranSdkLog.w(TAG, "getWallpaperInfo: ", e);
            return null;
        }
    }

    @VisibleForTesting
    public void setService(ITranWallpaperManager iTranWallpaperManager) {
        this.mService = iTranWallpaperManager;
    }

    @Override
    public void setWallpaperComponent(final ComponentName componentName) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setWallpaperComponent$0(componentName);
            }
        }, "wallpaper");
        TranSdkLog.d(TAG, "setWallpaperComponent name:" + componentName);
    }

    @Override
    public void setWallpaperComponentWithFlags(final ComponentName componentName, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setWallpaperComponentWithFlags$1(componentName, i);
            }
        }, "wallpaper");
        TranSdkLog.d(TAG, "setWallpaperComponentWithFlags name:" + componentName);
    }
}

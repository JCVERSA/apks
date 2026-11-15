package com.transsion.hubsdk.core.view;

import android.graphics.Bitmap;
import android.os.RemoteException;
import android.view.WindowManager;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranWindowManagerAdapter;
import com.transsion.hubsdk.view.ITranWindowManager;
import com.transsion.hubsdk.view.TranWindowManager;
import java.util.List;
import java.util.Map;

public class TranThubWindowManager implements ITranWindowManagerAdapter {
    private static final String TAG = "TranThubWindowManager";
    private TranWindowManager.TranLayoutParams mLayoutParams;
    private ITranWindowManager mService = ITranWindowManager.Stub.asInterface(TranServiceManager.getServiceIBinder("window"));

    private TranWindowManager.TranLayoutParams getLayoutParams() {
        if (this.mLayoutParams == null) {
            this.mLayoutParams = new TranWindowManager.TranLayoutParams();
        }
        return this.mLayoutParams;
    }

    public Object lambda$setCutoutMode$2(WindowManager.LayoutParams layoutParams, int i) throws RemoteException {
        getLayoutParams().setCutoutMode(layoutParams, i);
        return null;
    }

    public Object lambda$setPrivateFlags$0(WindowManager.LayoutParams layoutParams, int i) throws RemoteException {
        getLayoutParams().setPrivateFlags(layoutParams, i);
        return null;
    }

    public Object lambda$setTrustedOverlay$1(WindowManager.LayoutParams layoutParams) throws RemoteException {
        getLayoutParams().setTrustedOverlay(layoutParams);
        return null;
    }

    @Override
    public int getAppRefreshRate(String str) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return 0;
        }
        try {
            return iTranWindowManager.getAppRefreshRate(str);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getAppRefreshRate RemoteException: ", e);
            return 0;
        }
    }

    @Override
    public String getDefaultRefreshRateConfigList() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return "";
        }
        try {
            return iTranWindowManager.getDefaultRefreshRateConfigList();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getDefaultRefreshRateConfigList RemoteException: ", e);
            return "";
        }
    }

    @Override
    public String getFocusedWindowTitle() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getFocusedWindowTitle();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getFocusedWindowTitle fail: " + e);
            return null;
        }
    }

    @Override
    public List<String> getNoSupportApplicationInfo() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getNoSupportApplicationInfo();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNoSupportApplicationInfo fail: " + e);
            return null;
        }
    }

    @Override
    public Map<String, Integer> getNonUltraSmallApps() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getNonUltraSmallApps();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNonUltraSmallApps fail: " + e);
            return null;
        }
    }

    @Override
    public int getPrivateFlags(WindowManager.LayoutParams layoutParams) {
        return getLayoutParams().getPrivateFlags(layoutParams);
    }

    @Override
    public String getRefreshRateConfigList() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return "";
        }
        try {
            return iTranWindowManager.getRefreshRateConfigList();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getRefreshRateConfigList RemoteException: ", e);
            return "";
        }
    }

    @Override
    public String getRootPinnedTaskPkgName() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getRootPinnedTaskPkgName();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getRootPinnedTaskPkgName fail: " + e);
            return null;
        }
    }

    @Override
    public List<String> getSharedScreenPkgName() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getSharedScreenPkgName();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getSharedScreenPkgName fail: " + e);
            return null;
        }
    }

    @Override
    public int getSwitchMode() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return 0;
        }
        try {
            return iTranWindowManager.getSwitchMode();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getSwitchMode fail: " + e);
            return 0;
        }
    }

    @Override
    public String getTopResumedActivityPkgName() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getTopResumedActivityPkgName();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTopResumedActivityPkgName fail: " + e);
            return null;
        }
    }

    @Override
    public List<String> getTranPictureList(int i) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getTranPictureList(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTranPictureList fail:" + e);
            return null;
        }
    }

    @Override
    public int[] getTranPictureSupportMode() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.getTranPictureSupportMode();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getTranPictureSupportMode fail:" + e);
            return null;
        }
    }

    @Override
    public int getUltraSmallAppMode(String str) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return 0;
        }
        try {
            return iTranWindowManager.getUltraSmallAppMode(str);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getUltraSmallAppMode fail: " + e);
            return 0;
        }
    }

    @Override
    public boolean hasMultiWindowForXDR() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return false;
        }
        try {
            return iTranWindowManager.hasMultiWindowForXDR();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "hasMultiWindowForXDR RemoteException:" + e);
            return false;
        }
    }

    @Override
    public void hookWindowScene(int i, int i2, int i3) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            try {
                iTranWindowManager.hookWindowScene(i, i2, i3);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "hookWindowScene fail: " + e);
            }
        }
    }

    @Override
    public boolean isKeyguardShowing() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return false;
        }
        try {
            return iTranWindowManager.isKeyguardShowing();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isKeyguardShowing fail: " + e);
            return false;
        }
    }

    @Override
    public boolean isKeyguardShowingAndNotOccluded() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return false;
        }
        try {
            return iTranWindowManager.isKeyguardShowingAndNotOccluded();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isKeyguardShowingAndNotOccluded fail: " + e);
            return false;
        }
    }

    @Override
    public boolean isOccluded() {
        try {
            ITranWindowManager iTranWindowManager = this.mService;
            if (iTranWindowManager != null) {
                return iTranWindowManager.isOccluded();
            }
            return false;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "isOccluded error: " + e.getMessage());
            return false;
        }
    }

    @Override
    public void setCutoutMode(final WindowManager.LayoutParams layoutParams, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setCutoutMode$2(layoutParams, i);
            }
        }, "window");
    }

    @Override
    public void setInputFeatures(WindowManager.LayoutParams layoutParams, int i) {
        getLayoutParams().setInputFeatures(layoutParams, i);
    }

    @Override
    public void setOSFullDialog(WindowManager.LayoutParams layoutParams, boolean z) {
        getLayoutParams().setOSFullDialog(layoutParams, z);
    }

    @Override
    public void setPrivateFlags(final WindowManager.LayoutParams layoutParams, final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setPrivateFlags$0(layoutParams, i);
            }
        }, "window");
    }

    @Override
    public void setRefreshRateConfigList(String str) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            try {
                iTranWindowManager.setRefreshRateConfigList(str);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "getRefreshRateConfigList RemoteException: ", e);
            }
        }
    }

    @VisibleForTesting
    public void setService(ITranWindowManager iTranWindowManager) {
        this.mService = iTranWindowManager;
    }

    @Override
    public void setTranPictureMode(int i, String str) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            try {
                iTranWindowManager.setTranPictureMode(i, str);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "setTranPictureMode fail:" + e);
            }
        }
    }

    @Override
    public void setTrustedOverlay(final WindowManager.LayoutParams layoutParams) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setTrustedOverlay$1(layoutParams);
            }
        }, "window");
    }

    @Override
    public void switchMode(int i) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            try {
                iTranWindowManager.switchMode(i);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "switchMode fail: " + e);
            }
        }
    }

    @Override
    public Bitmap tranScreenshotWallpaperLocked() {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager == null) {
            return null;
        }
        try {
            return iTranWindowManager.tranScreenshotWallpaperLocked();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "tranScreenshotWallpaperLocked fail" + e);
            return null;
        }
    }

    @Override
    public void updateNoSupportApplicationInfo(List<String> list) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            try {
                iTranWindowManager.updateNoSupportApplicationInfo(list);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "updateNoSupportApplicationInfo fail: " + e);
            }
        }
    }

    @Override
    public void updateNonUltraSmallApps(Map<String, Integer> map) {
        ITranWindowManager iTranWindowManager = this.mService;
        if (iTranWindowManager != null) {
            try {
                iTranWindowManager.updateNonUltraSmallApps(map);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "updateNonUltraSmallApps fail: " + e);
            }
        }
    }
}

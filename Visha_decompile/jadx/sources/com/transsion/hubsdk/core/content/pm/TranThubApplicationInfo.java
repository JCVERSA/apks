package com.transsion.hubsdk.core.content.pm;

import android.content.pm.ApplicationInfo;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.content.pm.ITranApplicationInfoManager;
import com.transsion.hubsdk.content.pm.TranApplicationInfo;
import com.transsion.hubsdk.interfaces.content.pm.ITranApplicationInfoManagerAdapter;

public class TranThubApplicationInfo implements ITranApplicationInfoManagerAdapter {
    private static final String TAG = "TranThubApplicationInfo";
    private ITranApplicationInfoManager mService;
    private TranApplicationInfo mTranApplicationInfo;

    public TranThubApplicationInfo() {
        this.mService = null;
        this.mService = ITranApplicationInfoManager.Stub.asInterface(TranServiceManager.getServiceIBinder("application_info"));
    }

    private TranApplicationInfo getTranApplicationInfo() {
        if (this.mTranApplicationInfo == null) {
            this.mTranApplicationInfo = new TranApplicationInfo(TranHubSdkManager.getContext());
        }
        return this.mTranApplicationInfo;
    }

    @Override
    public int getIconRes(ApplicationInfo applicationInfo) {
        return getTranApplicationInfo().getIconRes(applicationInfo);
    }

    @Override
    public boolean isDirectBootAware(ApplicationInfo applicationInfo) {
        return getTranApplicationInfo().isDirectBootAware(applicationInfo);
    }

    @Override
    public boolean isInstantApp(ApplicationInfo applicationInfo) {
        return getTranApplicationInfo().isInstantApp(applicationInfo);
    }

    @Override
    public boolean isPartiallyDirectBootAware(ApplicationInfo applicationInfo) {
        return getTranApplicationInfo().isPartiallyDirectBootAware(applicationInfo);
    }

    @Override
    public boolean isPrivilegedApp(ApplicationInfo applicationInfo) {
        return getTranApplicationInfo().isPrivilegedApp(applicationInfo);
    }

    @Override
    public boolean isProduct(ApplicationInfo applicationInfo) {
        boolean zIsProduct = false;
        try {
            ITranApplicationInfoManager iTranApplicationInfoManager = this.mService;
            if (iTranApplicationInfoManager != null) {
                zIsProduct = iTranApplicationInfoManager.isProduct(applicationInfo);
            }
        } catch (RemoteException e) {
            TranSdkLog.i(TAG, "isProduct exception:" + e);
        }
        TranSdkLog.i(TAG, "isProduct res:" + zIsProduct);
        return zIsProduct;
    }

    @Override
    public boolean isSignedWithPlatformKey(ApplicationInfo applicationInfo) {
        boolean zIsSignedWithPlatformKey = false;
        try {
            ITranApplicationInfoManager iTranApplicationInfoManager = this.mService;
            if (iTranApplicationInfoManager != null) {
                zIsSignedWithPlatformKey = iTranApplicationInfoManager.isSignedWithPlatformKey(applicationInfo);
            }
        } catch (RemoteException e) {
            TranSdkLog.i(TAG, "isSignedWithPlatformKey exception:" + e);
        }
        TranSdkLog.i(TAG, "isSignedWithPlatformKey res:" + zIsSignedWithPlatformKey);
        return zIsSignedWithPlatformKey;
    }

    @Override
    public boolean isSystemApp(ApplicationInfo applicationInfo) {
        boolean zIsSystemApp = false;
        try {
            ITranApplicationInfoManager iTranApplicationInfoManager = this.mService;
            if (iTranApplicationInfoManager != null) {
                zIsSystemApp = iTranApplicationInfoManager.isSystemApp(applicationInfo);
            }
        } catch (RemoteException e) {
            TranSdkLog.i(TAG, "isSystemApp exception:" + e);
        }
        TranSdkLog.i(TAG, "isSystemApp res:" + zIsSystemApp);
        return zIsSystemApp;
    }

    @Override
    public boolean isSystemExt(ApplicationInfo applicationInfo) {
        boolean zIsSystemExt = false;
        try {
            ITranApplicationInfoManager iTranApplicationInfoManager = this.mService;
            if (iTranApplicationInfoManager != null) {
                zIsSystemExt = iTranApplicationInfoManager.isSystemExt(applicationInfo);
            }
        } catch (RemoteException e) {
            TranSdkLog.i(TAG, "isSystemExt exception:" + e);
        }
        TranSdkLog.i(TAG, "isSystemExt res:" + zIsSystemExt);
        return zIsSystemExt;
    }

    @VisibleForTesting
    public void setService(ITranApplicationInfoManager iTranApplicationInfoManager) {
        this.mService = iTranApplicationInfoManager;
    }
}

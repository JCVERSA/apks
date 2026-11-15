package com.transsion.hubsdk.api.content.pm;

import android.content.pm.ApplicationInfo;
import com.transsion.hubsdk.aosp.content.pm.TranAospApplicationInfo;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.pm.TranThubApplicationInfo;
import com.transsion.hubsdk.interfaces.content.pm.ITranApplicationInfoManagerAdapter;

public class TranApplicationInfo {
    public static final String APPLICATION_ARGUMENT_EXCEPTION = "application info should not be null";
    private static final String TAG = "TranApplicationInfo";
    private TranAospApplicationInfo mAospService;
    private TranThubApplicationInfo mThubService;

    public int getIconRes(ApplicationInfo applicationInfo) {
        return getService(TranVersion.Core.VERSION_33271).getIconRes(applicationInfo);
    }

    public ITranApplicationInfoManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubApplicationInfo");
            TranThubApplicationInfo tranThubApplicationInfo = this.mThubService;
            if (tranThubApplicationInfo != null) {
                return tranThubApplicationInfo;
            }
            TranThubApplicationInfo tranThubApplicationInfo2 = new TranThubApplicationInfo();
            this.mThubService = tranThubApplicationInfo2;
            return tranThubApplicationInfo2;
        }
        TranSdkLog.i(TAG, "TranAospApplicationInfo");
        TranAospApplicationInfo tranAospApplicationInfo = this.mAospService;
        if (tranAospApplicationInfo != null) {
            return tranAospApplicationInfo;
        }
        TranAospApplicationInfo tranAospApplicationInfo2 = new TranAospApplicationInfo();
        this.mAospService = tranAospApplicationInfo2;
        return tranAospApplicationInfo2;
    }

    public boolean isDirectBootAware(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33421).isDirectBootAware(applicationInfo);
        }
        throw new IllegalArgumentException("param cannot be null");
    }

    public boolean isInstantApp(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33181).isInstantApp(applicationInfo);
        }
        throw new IllegalArgumentException(APPLICATION_ARGUMENT_EXCEPTION);
    }

    public boolean isPartiallyDirectBootAware(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33421).isPartiallyDirectBootAware(applicationInfo);
        }
        throw new IllegalArgumentException("param cannot be null");
    }

    public boolean isPrivilegedApp(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33391).isPrivilegedApp(applicationInfo);
        }
        throw new IllegalArgumentException("param cannot be null");
    }

    public boolean isProduct(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33161).isProduct(applicationInfo);
        }
        throw new IllegalArgumentException(APPLICATION_ARGUMENT_EXCEPTION);
    }

    public boolean isSignedWithPlatformKey(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33161).isSignedWithPlatformKey(applicationInfo);
        }
        throw new IllegalArgumentException(APPLICATION_ARGUMENT_EXCEPTION);
    }

    public boolean isSystemApp(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33161).isSystemApp(applicationInfo);
        }
        throw new IllegalArgumentException(APPLICATION_ARGUMENT_EXCEPTION);
    }

    public boolean isSystemExt(ApplicationInfo applicationInfo) {
        if (applicationInfo != null) {
            return getService(TranVersion.Core.VERSION_33161).isSystemExt(applicationInfo);
        }
        throw new IllegalArgumentException(APPLICATION_ARGUMENT_EXCEPTION);
    }
}

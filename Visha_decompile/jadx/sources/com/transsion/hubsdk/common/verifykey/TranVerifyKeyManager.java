package com.transsion.hubsdk.common.verifykey;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.util.TranSignUtils;
import com.transsion.hubsdk.verifykey.ITranVerifyKeyManager;

public class TranVerifyKeyManager {
    public static final int RESULT_ERROR_APP_NOT_VERIFY = -8;
    private static final String TAG = "TranVerifyKeyManager";
    private static Binder mBinder = new Binder();
    private static ITranVerifyKeyManager mService;

    public static ITranVerifyKeyManager getService(String str) {
        if (TranVersion.isIntegratedThubCore(str) && mService == null) {
            mService = ITranVerifyKeyManager.Stub.asInterface(TranServiceManager.getServiceIBinder("verify_key"));
        }
        return mService;
    }

    public static void setService(ITranVerifyKeyManager iTranVerifyKeyManager) {
        mService = iTranVerifyKeyManager;
    }

    public static int verify(Context context) {
        if (getService(TranVersion.Core.VERSION_33101) == null || context == null) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("service or context is null ");
            sb.append(mService == null);
            TranSdkLog.w(str, sb.toString());
            return -8;
        }
        String packageName = context.getPackageName();
        String certSHA1 = TranSignUtils.getCertSHA1(context);
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(packageName, 128).metaData;
            if (bundle != null) {
                return mService.verify(mBinder, bundle.getString("com.transsion.appkey"), packageName, certSHA1);
            }
            TranSdkLog.w(TAG, "AppKey is null");
            return mService.verify(mBinder, (String) null, packageName, certSHA1);
        } catch (PackageManager.NameNotFoundException | RemoteException e) {
            TranSdkLog.e(TAG, "TranVerifyKeyManager verify Exception:" + e);
            return -8;
        }
    }
}

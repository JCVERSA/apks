package com.transsion.hubsdk.core.resource.theme;

import android.annotation.NonNull;
import android.app.ActivityThread;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemProperties;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.resource.theme.ITranThemeManagerAdapter;
import com.transsion.hubsdk.resource.theme.TranThemeFilesProvider;
import com.transsion.hubsdk.resource.theme.TranThemeManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TranThubThemeManager implements ITranThemeManagerAdapter {
    private static final String ALL_PACKAGE = "all";
    public static final boolean ENABLED;
    public static final String FEATURE_NAME = "tran_theme";
    public static final boolean IS_FEATURE_ENABLED;
    private static final boolean IS_FORCE_DISABLE;
    public static final boolean IS_MP_RELEASE = false;
    public static final int OP_DISABLE = 1;
    public static final int OP_DISABLE_ALL = 3;
    public static final int OP_DISABLE_ONE = 4;
    public static final int OP_ENABLE = 0;
    public static final int OP_UNINSTALL = 2;
    public static final int STATUS_DUP_DISABLE = 10;
    public static final int STATUS_DUP_ENABLE = 9;
    public static final int STATUS_FAIL = 1;
    public static final int STATUS_FAIL_TRANSFER_FILE = 256;
    public static final int STATUS_FAIL_TRANSFER_FILE_NOT_FOUND = 258;
    public static final int STATUS_FAIL_TRANSFER_FILE_PERMISSION_DENIED = 257;
    public static final int STATUS_FEATURE_NOT_SUPPORTED = 11;
    public static final int STATUS_FORBID_UNCHANGED = 12;
    public static final int STATUS_ILLEGAL_ARGUMENT = 4;
    public static final int STATUS_ILLEGAL_STATE = 3;
    public static final int STATUS_MAGICFONT_DISABLED = 14;
    public static final int STATUS_MAGICFONT_NOT_INSTALLED = 13;
    public static final int STATUS_PACKAGE_FILE_NOT_FOUND = 6;
    public static final int STATUS_PACKAGE_FORMAT_ERROR = 8;
    public static final int STATUS_PACKAGE_NOT_FOUND = 7;
    public static final int STATUS_PERMISSION_DENIED = 2;
    public static final int STATUS_SUCCESS = 0;
    public static final int STATUS_TIMEOUT = 5;
    private static final String TAG = "TranThubThemeManager";
    public static final String VERSION_CODE = TranThemeManager.VERSION_CODE;
    public static final String VERSION_NAME = TranThemeManager.VERSION_CODE;
    private TranThemeManager mThemeManager;
    private final TranThemeFilesProvider mTranThemeFilesProvider = TranThemeFilesProvider.getInstance();

    static {
        boolean z = false;
        boolean z2 = SystemProperties.getBoolean("persist.sys.override_resource.force_disable", false);
        IS_FORCE_DISABLE = z2;
        boolean z3 = SystemProperties.getBoolean("ro.system_theme_241204_sr_sa_0006_0001_support", false);
        IS_FEATURE_ENABLED = z3;
        if (!z2 && z3) {
            z = true;
        }
        ENABLED = z;
    }

    public TranThubThemeManager(@NonNull Context context) {
        if ((context == null ? null : context.getApplicationContext()) == null) {
            ActivityThread.currentApplication().getApplicationContext();
        }
        this.mThemeManager = new TranThemeManager(context);
    }

    private TranThemePackageInfo convertPackageInfo(com.transsion.hubsdk.resource.theme.TranThemePackageInfo tranThemePackageInfo) {
        if (tranThemePackageInfo == null) {
            return null;
        }
        TranSdkLog.d(TAG, "convertPackageInfo");
        return new TranThemePackageInfo(tranThemePackageInfo.mId, tranThemePackageInfo.mAuthor, tranThemePackageInfo.mVersion, tranThemePackageInfo.mType, tranThemePackageInfo.mAppDir, tranThemePackageInfo.mDescription, tranThemePackageInfo.getRootDir().getPath(), tranThemePackageInfo.getBundle() != null ? new Bundle(tranThemePackageInfo.getBundle()) : null, tranThemePackageInfo.mRunning, tranThemePackageInfo.mTargetUserId, tranThemePackageInfo.mTypeFlags, tranThemePackageInfo.mEnabledOrder);
    }

    public static boolean isSupported() {
        return ENABLED;
    }

    private TranThemeManager.ResultCallback wrapCallback(final com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback) {
        if (resultCallback == null) {
            return null;
        }
        return new TranThemeManager.ResultCallback() {
            public void onResult(int i) {
                resultCallback.onResult(i);
            }
        };
    }

    @Override
    public void disable(@NonNull String str, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        disableAll(resultCallback, handler);
    }

    @Override
    public void disableAll(@NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        operate("all", 3, resultCallback, handler);
    }

    @Override
    public void disableOne(@NonNull String str, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        operate(str, 4, resultCallback, handler);
    }

    @Override
    public void enable(@NonNull String str, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        operate(str, 0, resultCallback, handler);
    }

    @Override
    public Object getAospPackageInfo(String str) {
        return null;
    }

    @Override
    public List<TranThemePackageInfo> getCurrentRunningPackageInfoList() {
        List currentRunningPackageInfoList = this.mTranThemeFilesProvider.getCurrentRunningPackageInfoList(-2);
        ArrayList arrayList = new ArrayList();
        if (currentRunningPackageInfoList != null) {
            Iterator it = currentRunningPackageInfoList.iterator();
            while (it.hasNext()) {
                arrayList.add(convertPackageInfo((com.transsion.hubsdk.resource.theme.TranThemePackageInfo) it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public TranThemePackageInfo getCurrentRunningTheme(int i) {
        return convertPackageInfo(this.mTranThemeFilesProvider.getCurrentRunningTheme(i));
    }

    @Override
    public List<TranThemePackageInfo> getInstalledPackageInfoList(int i) {
        List installedPackageInfoList = this.mTranThemeFilesProvider.getInstalledPackageInfoList(i);
        ArrayList arrayList = new ArrayList();
        if (installedPackageInfoList != null) {
            Iterator it = installedPackageInfoList.iterator();
            while (it.hasNext()) {
                arrayList.add(convertPackageInfo((com.transsion.hubsdk.resource.theme.TranThemePackageInfo) it.next()));
            }
        }
        return arrayList;
    }

    @Override
    public TranThemePackageInfo getPackageInfo(@NonNull String str) {
        return getPackageInfo(str, -2);
    }

    @Override
    public File getThemeFile(String str, String str2, int i) {
        TranThemePackageInfo packageInfo = getPackageInfo(str, i);
        if (packageInfo != null) {
            return getThemeFile(packageInfo, str2);
        }
        return null;
    }

    @Override
    public void install(@NonNull File file, boolean z, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        this.mThemeManager.install(file, z, wrapCallback(resultCallback), handler);
    }

    @Override
    public boolean isIconThemeRunning() {
        return isThemeRunning(1, -2);
    }

    @Override
    public boolean isThemeRunning(int i, int i2) {
        return this.mTranThemeFilesProvider.isThemeRunning(i, i2);
    }

    @Override
    public void operate(@NonNull String str, int i, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        this.mThemeManager.operate(str, i, wrapCallback(resultCallback), handler);
    }

    @Override
    public void toggle(@NonNull String str, int i, String str2, boolean z, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        this.mThemeManager.toggle(str, i, str2, z, wrapCallback(resultCallback), handler);
    }

    @Override
    public void uninstall(@NonNull String str, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        operate(str, 2, resultCallback, handler);
    }

    @Override
    public void disable(@NonNull String str, int i, String str2, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        toggle(str, i, str2, false, resultCallback, handler);
    }

    @Override
    public void enable(@NonNull String str, int i, String str2, @NonNull com.transsion.hubsdk.api.resource.theme.TranThemeManager.ResultCallback resultCallback, @NonNull Handler handler) {
        toggle(str, i, str2, true, resultCallback, handler);
    }

    @Override
    public TranThemePackageInfo getPackageInfo(@NonNull String str, int i) {
        return convertPackageInfo(this.mTranThemeFilesProvider.getPackageInfo(str, i));
    }

    @Override
    public boolean isIconThemeRunning(int i) {
        return isThemeRunning(1, i);
    }

    @Override
    public boolean isThemeRunning(int i) {
        return isThemeRunning(i, -2);
    }

    @Override
    public File getThemeFile(String str, String str2) {
        TranThemePackageInfo packageInfo = getPackageInfo(str, -2);
        if (packageInfo != null) {
            return getThemeFile(packageInfo, str2);
        }
        return null;
    }

    @Override
    public List<TranThemePackageInfo> getInstalledPackageInfoList() {
        return getInstalledPackageInfoList(-2);
    }

    @Override
    public File getThemeFile(TranThemePackageInfo tranThemePackageInfo, String str) {
        return new File(tranThemePackageInfo.getRootDir(), str);
    }
}

package com.transsion.hubsdk.api.resource.theme;

import android.content.Context;
import android.os.Handler;
import com.transsion.hubsdk.aosp.resource.theme.TranAospThemeManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.resource.theme.TranThubThemeManager;
import com.transsion.hubsdk.interfaces.resource.theme.ITranThemeManagerAdapter;
import java.io.File;
import java.util.List;

public class TranThemeManager {
    private static final ITranThemeManagerAdapter NO_OP_SERVICE = new NoOpThemeManagerAdapter();
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
    private static final String TAG = "TranThemeManager";
    private TranAospThemeManager mAospService;
    private Context mContext;
    private TranThubThemeManager mThubService;

    public static final class NoOpThemeManagerAdapter implements ITranThemeManagerAdapter {
        private NoOpThemeManagerAdapter() {
        }

        @Override
        public void disable(String str, int i, String str2, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public void disableAll(ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public void disableOne(String str, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public void enable(String str, int i, String str2, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public Object getAospPackageInfo(String str) {
            return null;
        }

        @Override
        public List<TranThemePackageInfo> getCurrentRunningPackageInfoList() {
            return null;
        }

        @Override
        public TranThemePackageInfo getCurrentRunningTheme(int i) {
            return null;
        }

        @Override
        public List<TranThemePackageInfo> getInstalledPackageInfoList() {
            return null;
        }

        @Override
        public TranThemePackageInfo getPackageInfo(String str) {
            return null;
        }

        @Override
        public File getThemeFile(TranThemePackageInfo tranThemePackageInfo, String str) {
            return null;
        }

        @Override
        public void install(File file, boolean z, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public boolean isIconThemeRunning() {
            return false;
        }

        @Override
        public boolean isThemeRunning(int i) {
            return false;
        }

        @Override
        public void operate(String str, int i, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public void toggle(String str, int i, String str2, boolean z, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public void uninstall(String str, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public void disable(String str, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public void enable(String str, ResultCallback resultCallback, Handler handler) {
        }

        @Override
        public List<TranThemePackageInfo> getInstalledPackageInfoList(int i) {
            return null;
        }

        @Override
        public TranThemePackageInfo getPackageInfo(String str, int i) {
            return null;
        }

        @Override
        public File getThemeFile(String str, String str2) {
            return null;
        }

        @Override
        public boolean isIconThemeRunning(int i) {
            return false;
        }

        @Override
        public boolean isThemeRunning(int i, int i2) {
            return false;
        }

        @Override
        public File getThemeFile(String str, String str2, int i) {
            return null;
        }
    }

    public interface ResultCallback {
        void onResult(int i);
    }

    public TranThemeManager(Context context) {
        this.mContext = context;
    }

    private boolean hasAospThemeManager() {
        try {
            Class.forName("com.transsion.resource.theme.TranThemeManager", false, TranThemeManager.class.getClassLoader());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public void disable(String str, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).disable(str, resultCallback, handler);
    }

    public void disableAll(ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).disableAll(resultCallback, handler);
    }

    public void disableOne(String str, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).disableOne(str, resultCallback, handler);
    }

    public void enable(String str, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).enable(str, resultCallback, handler);
    }

    public List<TranThemePackageInfo> getCurrentRunningPackageInfoList() {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getCurrentRunningPackageInfoList();
    }

    public TranThemePackageInfo getCurrentRunningTheme(int i) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getCurrentRunningTheme(i);
    }

    public List<TranThemePackageInfo> getInstalledPackageInfoList(int i) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getInstalledPackageInfoList(i);
    }

    public TranThemePackageInfo getPackageInfo(String str) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getPackageInfo(str);
    }

    public ITranThemeManagerAdapter getService(String str, Context context) {
        if (TranVersion.isIntegratedThubCore(str) && TranThubVersionUtil.isRecentAndroidC()) {
            TranThubThemeManager tranThubThemeManager = this.mThubService;
            if (tranThubThemeManager != null) {
                return tranThubThemeManager;
            }
            TranThubThemeManager tranThubThemeManager2 = new TranThubThemeManager(context);
            this.mThubService = tranThubThemeManager2;
            return tranThubThemeManager2;
        }
        if (!hasAospThemeManager()) {
            TranSdkLog.i(TAG, "No TranAospThemeManager");
            return NO_OP_SERVICE;
        }
        TranSdkLog.i(TAG, "TranAospThemeManager");
        TranAospThemeManager tranAospThemeManager = this.mAospService;
        if (tranAospThemeManager != null) {
            return tranAospThemeManager;
        }
        TranAospThemeManager tranAospThemeManager2 = new TranAospThemeManager();
        this.mAospService = tranAospThemeManager2;
        return tranAospThemeManager2;
    }

    public File getThemeFile(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getThemeFile(str, str2, i);
    }

    public void install(File file, boolean z, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).install(file, z, resultCallback, handler);
    }

    public boolean isIconThemeRunning() {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).isIconThemeRunning();
    }

    public boolean isThemeRunning(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).isThemeRunning(i, i2);
    }

    public void operate(String str, int i, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).operate(str, i, resultCallback, handler);
    }

    public void toggle(String str, int i, String str2, boolean z, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).toggle(str, i, str2, z, resultCallback, handler);
    }

    public void uninstall(String str, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).uninstall(str, resultCallback, handler);
    }

    public void disable(String str, int i, String str2, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).disable(str, i, str2, resultCallback, handler);
    }

    public void enable(String str, int i, String str2, ResultCallback resultCallback, Handler handler) {
        getService(TranVersion.Core.VERSION_33501, this.mContext).enable(str, i, str2, resultCallback, handler);
    }

    public List<TranThemePackageInfo> getInstalledPackageInfoList() {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getInstalledPackageInfoList();
    }

    public TranThemePackageInfo getPackageInfo(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getPackageInfo(str, i);
    }

    public File getThemeFile(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getThemeFile(str, str2);
    }

    public boolean isIconThemeRunning(int i) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).isIconThemeRunning(i);
    }

    public boolean isThemeRunning(int i) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).isThemeRunning(i);
    }

    public File getThemeFile(TranThemePackageInfo tranThemePackageInfo, String str) {
        return getService(TranVersion.Core.VERSION_33501, this.mContext).getThemeFile(tranThemePackageInfo, str);
    }
}

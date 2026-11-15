package com.transsion.hubsdk.api.tranthubutils;

import com.transsion.hubsdk.aosp.tranthubutils.TranAospConfigs;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.tranthubutils.TranThubConfigs;
import com.transsion.hubsdk.interfaces.tranthubutils.ITranConfigsAdapter;
import java.io.File;
import java.util.List;

public class TranConfigsManager {
    private static final String TAG = "TranConfigsManager";
    private TranAospConfigs mAospService;
    private TranThubConfigs mThubService;

    public File getAsset(String str) {
        return getService(TranVersion.Core.VERSION_33391).getAsset(str);
    }

    public File getConfigs(String str) {
        return getService(TranVersion.Core.VERSION_33391).getConfigs(str);
    }

    public List<File> getConfigsList(String str) {
        return getService(TranVersion.Core.VERSION_33391).getConfigsList(str);
    }

    public File getLibrary(String str) {
        return getService(TranVersion.Core.VERSION_33391).getLibrary(str);
    }

    public File getMedia(String str) {
        return getService(TranVersion.Core.VERSION_33391).getMedia(str);
    }

    public File getNativeLibrary(String str, boolean z) {
        return getService(TranVersion.Core.VERSION_33391).getNativeLibrary(str, z);
    }

    public ITranConfigsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubConfigs tranThubConfigs = this.mThubService;
            if (tranThubConfigs != null) {
                return tranThubConfigs;
            }
            TranThubConfigs tranThubConfigs2 = new TranThubConfigs();
            this.mThubService = tranThubConfigs2;
            return tranThubConfigs2;
        }
        TranSdkLog.i(TAG, "TranConfigsManager");
        TranAospConfigs tranAospConfigs = this.mAospService;
        if (tranAospConfigs != null) {
            return tranAospConfigs;
        }
        TranAospConfigs tranAospConfigs2 = new TranAospConfigs();
        this.mAospService = tranAospConfigs2;
        return tranAospConfigs2;
    }

    public void initialize(String str) {
        getService(TranVersion.Core.VERSION_33391).initialize(str);
    }

    public File getAsset(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33391).getAsset(str, str2);
    }

    public File getConfigs(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33391).getConfigs(str, str2);
    }

    public List<File> getConfigsList(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33391).getConfigsList(str, str2);
    }
}

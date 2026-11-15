package com.transsion.hubsdk.core.tranthubutils;

import com.transsion.hubsdk.interfaces.tranthubutils.ITranConfigsAdapter;
import com.transsion.hubsdk.tranthubutils.TranConfigs;
import java.io.File;
import java.util.Collections;
import java.util.List;

public class TranThubConfigs implements ITranConfigsAdapter {
    private TranConfigs mManager = new TranConfigs();

    @Override
    public File getAsset(String str) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return null;
        }
        return tranConfigs.getAsset(str);
    }

    @Override
    public File getConfigs(String str) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return null;
        }
        return tranConfigs.getConfigs(str);
    }

    @Override
    public List<File> getConfigsList(String str) {
        TranConfigs tranConfigs = this.mManager;
        return tranConfigs == null ? Collections.emptyList() : tranConfigs.getConfigsList(str);
    }

    @Override
    public File getLibrary(String str) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return null;
        }
        return tranConfigs.getLibrary(str);
    }

    @Override
    public File getMedia(String str) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return null;
        }
        return tranConfigs.getMedia(str);
    }

    @Override
    public File getNativeLibrary(String str, boolean z) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return null;
        }
        return tranConfigs.getNativeLibrary(str, z);
    }

    @Override
    public void initialize(String str) {
        if (this.mManager == null) {
            return;
        }
        TranConfigs.initialize(str);
    }

    @Override
    public File getAsset(String str, String str2) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return null;
        }
        return tranConfigs.getAsset(str, str2);
    }

    @Override
    public File getConfigs(String str, String str2) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return null;
        }
        return tranConfigs.getConfigs(str, str2);
    }

    @Override
    public List<File> getConfigsList(String str, String str2) {
        TranConfigs tranConfigs = this.mManager;
        if (tranConfigs == null) {
            return Collections.emptyList();
        }
        return tranConfigs.getConfigsList(str, str2);
    }
}

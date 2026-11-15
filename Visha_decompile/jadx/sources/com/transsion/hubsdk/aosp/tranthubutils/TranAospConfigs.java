package com.transsion.hubsdk.aosp.tranthubutils;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.tranthubutils.ITranConfigsAdapter;
import java.io.File;
import java.util.Collections;
import java.util.List;

public class TranAospConfigs implements ITranConfigsAdapter {
    private static final String TAG = "TranAospConfigs";
    private static Class sClass = TranDoorMan.getClass("com.transsion.hubsdk.tranthubutils.TranConfigs");
    private static Object sInstance;

    @Override
    public File getAsset(String str) {
        Class cls = sClass;
        if (cls == null) {
            return null;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (File) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getAsset", String.class), sInstance, str);
    }

    @Override
    public File getConfigs(String str) {
        Class cls = sClass;
        if (cls == null) {
            return null;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (File) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getConfigs", String.class), sInstance, str);
    }

    @Override
    public List<File> getConfigsList(String str) {
        Class cls = sClass;
        if (cls == null) {
            return Collections.emptyList();
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (List) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getConfigsList", String.class), sInstance, str);
    }

    @Override
    public File getLibrary(String str) {
        Class cls = sClass;
        if (cls == null) {
            return null;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (File) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getLibrary", String.class), sInstance, str);
    }

    @Override
    public File getMedia(String str) {
        Class cls = sClass;
        if (cls == null) {
            return null;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (File) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getMedia", String.class), sInstance, str);
    }

    @Override
    public File getNativeLibrary(String str, boolean z) {
        Class cls = sClass;
        if (cls == null) {
            return null;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (File) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getNativeLibrary", String.class, Boolean.TYPE), sInstance, str, Boolean.valueOf(z));
    }

    @Override
    public void initialize(String str) {
        Class cls = sClass;
        if (cls == null) {
            return;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "initialize", String.class), sInstance, str);
    }

    @Override
    public File getAsset(String str, String str2) {
        Class cls = sClass;
        if (cls == null) {
            return null;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (File) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getAsset", String.class, String.class), sInstance, str, str2);
    }

    @Override
    public File getConfigs(String str, String str2) {
        Class cls = sClass;
        if (cls == null) {
            return null;
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (File) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getConfigs", String.class, String.class), sInstance, str, str2);
    }

    @Override
    public List<File> getConfigsList(String str, String str2) {
        Class cls = sClass;
        if (cls == null) {
            return Collections.emptyList();
        }
        try {
            sInstance = cls.newInstance();
        } catch (Exception unused) {
            TranSdkLog.e(TAG, "TranConfigs instance failed: " + sInstance);
        }
        return (List) TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClass, "getConfigsList", String.class, String.class), sInstance, str, str2);
    }
}

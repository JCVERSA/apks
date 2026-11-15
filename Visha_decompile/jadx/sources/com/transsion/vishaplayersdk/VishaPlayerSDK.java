package com.transsion.vishaplayersdk;

import android.app.Application;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;

public class VishaPlayerSDK {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + VishaPlayerSDK.class.getSimpleName();
    private static volatile VishaPlayerSDK instance;
    private Application mApp;
    private String mDeviceId;
    private boolean sDebugMode = false;

    private VishaPlayerSDK() {
    }

    public static VishaPlayerSDK getInstance() {
        if (instance == null) {
            synchronized (VishaPlayerSDK.class) {
                try {
                    if (instance == null) {
                        instance = new VishaPlayerSDK();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public Application getAPP() {
        return this.mApp;
    }

    public String getDeviceId() {
        return this.mDeviceId;
    }

    public void init(Application application, String str, boolean z) {
        LogUtils.j(TAG, "init visha player sdk gid:" + str);
        this.mApp = application;
        this.mDeviceId = str;
        if (z) {
            Debuger.enable();
        }
    }

    public boolean isDebugMode() {
        return this.sDebugMode;
    }

    public void setDebugMode(boolean z) {
        this.sDebugMode = z;
    }
}

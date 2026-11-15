package com.hunantv.media.drm2.mask;

import android.app.Application;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.mgtv.drm.LightPlayDrmManager;

public class MaskDrmManager implements IDrmManager {
    public static final String VERSION = "MASK_1.0";
    private static IDrmManager sInstance;
    private volatile IDrmManager.OnInitListener mOnInitListener;
    private volatile int mStatus = 0;
    private volatile String mErrorCode = "0";
    private Object mSyncLocker = new Object();

    private MaskDrmManager() {
    }

    public static synchronized IDrmManager getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new MaskDrmManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    @Override
    public IDrmSession genDrmSession(IDrmManager.SessionConfig sessionConfig) {
        MaskDrmSession maskDrmSession;
        synchronized (this.mSyncLocker) {
            maskDrmSession = new MaskDrmSession(sessionConfig);
        }
        return maskDrmSession;
    }

    @Override
    public int getCurrentStatus() {
        int i;
        synchronized (this.mSyncLocker) {
            i = this.mStatus;
        }
        return i;
    }

    @Override
    public String getErrorCode() {
        String str;
        synchronized (this.mSyncLocker) {
            str = this.mErrorCode;
        }
        return str;
    }

    @Override
    public String getVersion() {
        return VERSION;
    }

    @Override
    public int init(Application application, IDrmManager.InitConfig initConfig) {
        String str;
        String str2;
        synchronized (this.mSyncLocker) {
            try {
                if (!isInited() && !isIniting()) {
                    boolean zSyncTryLoadMgtvDRMLib = ImgoLibLoader.getInstance().syncTryLoadMgtvDRMLib(application);
                    if (zSyncTryLoadMgtvDRMLib) {
                        zSyncTryLoadMgtvDRMLib = LightPlayDrmManager.getInstance().init();
                        str = "MaskDrmManager";
                        str2 = "LightPlayDrmManager init suc=" + zSyncTryLoadMgtvDRMLib;
                    } else {
                        str = "MaskDrmManager";
                        str2 = "syncTryLoadMgtvDRMLib failed";
                    }
                    DebugLog.i(str, str2);
                    if (zSyncTryLoadMgtvDRMLib) {
                        this.mStatus = 2;
                        if (this.mOnInitListener != null) {
                            this.mOnInitListener.onInitSuccess();
                        }
                        return 0;
                    }
                    DebugLog.i("MaskDrmManager", "MaskDrmManager init failed");
                    if (this.mOnInitListener != null) {
                        this.mOnInitListener.onInitError("400275", "");
                    }
                    return -1;
                }
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean isInited() {
        boolean z;
        synchronized (this.mSyncLocker) {
            z = this.mStatus == 2;
        }
        return z;
    }

    @Override
    public boolean isIniting() {
        boolean z;
        synchronized (this.mSyncLocker) {
            z = true;
            if (this.mStatus != 1) {
                z = false;
            }
        }
        return z;
    }

    @Override
    public int release() {
        synchronized (this.mSyncLocker) {
            LightPlayDrmManager.getInstance().release();
        }
        return 0;
    }

    @Override
    public void setOnInitListener(IDrmManager.OnInitListener onInitListener) {
        synchronized (this.mSyncLocker) {
            this.mOnInitListener = onInitListener;
        }
    }
}

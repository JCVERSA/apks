package com.hunantv.media.drm.cbcs;

import android.app.Application;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.drm.IDrmSession;
import com.mgtv.drm.LightPlayDrmManager;

public class CbcsDrmManager implements IDrmManager {
    public static final String VERSION = "CBCS_1.0";
    private static IDrmManager sInstance;
    private volatile IDrmManager.OnInitListener mOnInitListener;
    private IDrmManager wasabiDrmManager;
    private volatile int mStatus = 0;
    private volatile String mErrorCode = "0";

    private CbcsDrmManager() {
    }

    public static synchronized IDrmManager getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new CbcsDrmManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    public void bindWasabiDrmManager(IDrmManager iDrmManager) {
        this.wasabiDrmManager = iDrmManager;
    }

    @Override
    public IDrmSession genDrmSession(IDrmManager.SessionConfig sessionConfig) {
        CbcsDrmSession cbcsDrmSession = new CbcsDrmSession(sessionConfig);
        cbcsDrmSession.bindWasabiDrmManager(this.wasabiDrmManager);
        return cbcsDrmSession;
    }

    @Override
    public int getCurrentStatus() {
        return this.mStatus;
    }

    @Override
    public String getErrorCode() {
        return this.mErrorCode;
    }

    @Override
    public String getVersion() {
        return VERSION;
    }

    @Override
    public int init(Application application, IDrmManager.InitConfig initConfig) {
        if (isInited()) {
            return 0;
        }
        isIniting();
        return 0;
    }

    @Override
    public boolean isInited() {
        return this.mStatus == 2;
    }

    @Override
    public boolean isIniting() {
        return this.mStatus == 1;
    }

    @Override
    public int release() {
        LightPlayDrmManager.getInstance().release();
        return 0;
    }

    @Override
    public void setOnInitListener(IDrmManager.OnInitListener onInitListener) {
        this.mOnInitListener = onInitListener;
    }
}

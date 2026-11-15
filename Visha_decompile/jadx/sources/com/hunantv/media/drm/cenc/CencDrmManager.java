package com.hunantv.media.drm.cenc;

import android.app.Application;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.drm.IDrmSession;

public class CencDrmManager implements IDrmManager {
    public static final String VERSION = "CENC_1.0";
    private static IDrmManager sInstance;
    private volatile IDrmManager.OnInitListener mOnInitListener;
    private volatile int mStatus = 0;
    private volatile String mErrorCode = "0";

    private CencDrmManager() {
    }

    public static synchronized IDrmManager getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new CencDrmManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    @Override
    public IDrmSession genDrmSession(IDrmManager.SessionConfig sessionConfig) {
        return new CencDrmSession(sessionConfig);
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
        if (!isInited() && !isIniting()) {
            this.mStatus = 2;
            if (this.mOnInitListener != null) {
                this.mOnInitListener.onInitSuccess();
            }
        }
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
        return 0;
    }

    @Override
    public void setOnInitListener(IDrmManager.OnInitListener onInitListener) {
        this.mOnInitListener = onInitListener;
    }
}

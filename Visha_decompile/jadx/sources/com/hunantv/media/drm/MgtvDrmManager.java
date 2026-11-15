package com.hunantv.media.drm;

import com.hunantv.media.drm.strategy.StrategyDrmManager;
import com.hunantv.media.report.b.a;

public final class MgtvDrmManager {
    private static IDrmManager sInstance;

    public static synchronized IDrmManager getInstance() {
        try {
            if (sInstance == null) {
                sInstance = StrategyDrmManager.getInstance();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    public static synchronized void setDebugHttpsTrust(boolean z) {
        a.a(z);
    }
}

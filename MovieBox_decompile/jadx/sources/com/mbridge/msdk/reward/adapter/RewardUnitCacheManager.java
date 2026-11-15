package com.mbridge.msdk.reward.adapter;

import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.system.NoProGuard;
import java.util.concurrent.ConcurrentHashMap;

public final class RewardUnitCacheManager implements NoProGuard {
    private static final String TAG = "RewardUnitCacheManager";
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.setting.c> rewardUnitSettings;

    private static final class b {

        private static final RewardUnitCacheManager f35965a = new RewardUnitCacheManager();
    }

    public static RewardUnitCacheManager getInstance() {
        return b.f35965a;
    }

    public void add(String str, String str2, com.mbridge.msdk.videocommon.setting.c cVar) {
        try {
            String str3 = str + "_" + str2;
            if (cVar != null && this.rewardUnitSettings.containsKey(str3)) {
                this.rewardUnitSettings.remove(str3);
            }
            this.rewardUnitSettings.put(str3, cVar);
        } catch (Exception e10) {
            o0.b(TAG, e10.getMessage());
        }
    }

    public com.mbridge.msdk.videocommon.setting.c get(String str, String str2) {
        try {
            try {
                return this.rewardUnitSettings.remove(str + "_" + str2);
            } catch (Exception e10) {
                o0.b(TAG, e10.getMessage());
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    private RewardUnitCacheManager() {
        this.rewardUnitSettings = new ConcurrentHashMap<>();
    }
}

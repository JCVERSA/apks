package com.mbridge.msdk.videocommon.download;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.concurrent.atomic.AtomicBoolean;

public class j {

    private AtomicBoolean f39088a;

    private AtomicBoolean f39089b;

    private static final class b {

        private static final j f39090a = new j();
    }

    public static j a() {
        return b.f39090a;
    }

    public boolean b(int i10) {
        if (MBridgeConstans.DEBUG) {
            o0.c("RewardVideoRefactorManager", "isRewardVideoRefactor adType: " + i10 + ", key: REWARD_VIDEO_REFACTOR_FOR_LOAD");
        }
        if (i10 != 94 && i10 != 287) {
            return false;
        }
        AtomicBoolean atomicBoolean = this.f39088a;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        try {
            this.f39088a = new AtomicBoolean(q0.a().a("r_v_r_f_l", false));
        } catch (Exception e10) {
            this.f39088a = new AtomicBoolean(false);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", "isRewardVideoRefactor error: " + e10.getMessage());
            }
        }
        return this.f39088a.get();
    }

    private j() {
    }

    public boolean a(int i10) {
        if (MBridgeConstans.DEBUG) {
            o0.c("RewardVideoRefactorManager", "isRewardVideoRefactor adType: " + i10 + ", key: REWARD_VIDEO_REFACTOR_FOR_CAMPAIGN_REQUEST");
        }
        if (i10 != 94 && i10 != 287) {
            return false;
        }
        AtomicBoolean atomicBoolean = this.f39089b;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        try {
            this.f39089b = new AtomicBoolean(q0.a().a("r_v_r_f_c_r", false));
        } catch (Exception e10) {
            this.f39089b = new AtomicBoolean(false);
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoRefactorManager", "isRewardVideoRefactor error: " + e10.getMessage());
            }
        }
        return this.f39089b.get();
    }
}

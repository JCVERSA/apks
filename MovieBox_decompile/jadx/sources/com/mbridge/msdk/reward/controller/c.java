package com.mbridge.msdk.reward.controller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.concurrent.CopyOnWriteArrayList;

public class c implements Runnable {

    private final Context f36327a;

    private final String f36328b;

    public c(Context context, String str) {
        this.f36327a = context;
        this.f36328b = str;
    }

    @Override
    public void run() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListC;
        if (this.f36327a == null || TextUtils.isEmpty(this.f36328b)) {
            return;
        }
        try {
            com.mbridge.msdk.reward.report.a.a(this.f36327a, this.f36328b);
            m0.a();
            m0.a(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_RES));
            m0.a(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML));
            com.mbridge.msdk.videocommon.setting.b.b().b(this.f36328b);
            if (q0.a().a("c_d_v_w_i", false) || TextUtils.isEmpty(this.f36328b) || (copyOnWriteArrayListC = com.mbridge.msdk.videocommon.cache.a.a().c(this.f36328b, 1)) == null || copyOnWriteArrayListC.size() <= 0) {
                return;
            }
            com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f36327a, this.f36328b, copyOnWriteArrayListC, 94, (com.mbridge.msdk.videocommon.listener.a) null);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoControllerInitTask", "initRewardVideoController task ", e10);
            }
        }
    }
}

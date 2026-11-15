package com.mbridge.msdk.reward.adapter;

import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.MBSupportMuteAdType;

public class e {

    private final String f36225a;

    private final String f36226b;

    private final boolean f36227c;

    private final com.mbridge.msdk.videocommon.setting.c f36228d;

    private final String f36229e;

    public e(String str, String str2, boolean z10, com.mbridge.msdk.videocommon.setting.c cVar, String str3) {
        this.f36225a = str;
        this.f36226b = str2;
        this.f36227c = z10;
        this.f36228d = cVar;
        this.f36229e = str3;
    }

    public com.mbridge.msdk.foundation.same.net.wrapper.e a(boolean z10, String str, int i10, String str2, String str3, String str4, String str5, boolean z11, int i11) {
        int iE;
        int iB;
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.c.m().b() + com.mbridge.msdk.foundation.controller.c.m().c());
        int i12 = z10 ? 2 : 3;
        com.mbridge.msdk.videocommon.setting.c cVar = this.f36228d;
        if (cVar != null) {
            iE = cVar.e();
            iB = this.f36228d.b();
        } else {
            iE = 0;
            iB = 0;
        }
        String strA = com.mbridge.msdk.foundation.same.buffer.b.a(this.f36226b, "reward");
        int i13 = this.f36227c ? MBSupportMuteAdType.INTERSTITIAL_VIDEO : 94;
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "app_id", strB);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PROPERTIES_UNIT_ID, this.f36226b);
        if (!TextUtils.isEmpty(this.f36225a)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PLACEMENT_ID, this.f36225a);
        }
        if (com.mbridge.msdk.util.b.a()) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ttc_ids", str4 == null ? "" : str4);
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "install_ids", str3 == null ? "" : str3);
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, TmcConstants.EXTRA_APP_DEV_TOKEN, md5);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "req_type", String.valueOf(i12));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_num", String.valueOf(iE));
        if (this.f36227c) {
            iB = 1;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "tnum", String.valueOf(iB));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f34668g, strA);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f34669h, str == null ? "" : str);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_AD_SOURCE_ID, String.valueOf(1));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f34670i, str2 == null ? "" : str2);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_type", String.valueOf(i13));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "offset", String.valueOf(i10));
        if (!TextUtils.isEmpty(str5)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "token", str5);
        }
        if (this.f36227c) {
            if (i11 == com.mbridge.msdk.foundation.same.a.I || i11 == com.mbridge.msdk.foundation.same.a.H) {
                com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ivrwd", "1");
            } else {
                com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ivrwd", "0");
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar2 = this.f36228d;
        if (cVar2 != null && !TextUtils.isEmpty(cVar2.a())) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "u_stid", this.f36228d.a());
        }
        com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
        if (aVarC != null && !TextUtils.isEmpty(aVarC.a())) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "r_stid", aVarC.a());
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "rw_plus", z11 ? "1" : "0");
        String strD = t0.d(this.f36226b);
        if (!TextUtils.isEmpty(strD)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "j", strD);
        }
        String str6 = this.f36229e;
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, str6 != null ? str6 : "");
        return eVar;
    }
}

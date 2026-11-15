package com.mbridge.msdk.foundation.same.report.metrics;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.tracker.m;
import com.mbridge.msdk.tracker.network.toolbox.h;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.x;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class d {

    private static d f34788e;

    private volatile m f34789a;

    private Map<String, e> f34790b = new HashMap();

    private LinkedHashMap<String, c> f34791c = new LinkedHashMap<>();

    private Map<String, e> f34792d = new HashMap();

    private d() {
        if (this.f34789a == null) {
            this.f34789a = m.a("metrics_sdk", com.mbridge.msdk.foundation.controller.c.m().d(), a());
        }
        JSONObject jSONObjectB = com.mbridge.msdk.foundation.same.report.c.b();
        if (this.f34789a != null) {
            this.f34789a.a(jSONObjectB);
            this.f34789a.h();
        }
    }

    public void a(String str, e eVar) {
        Map<String, e> map = this.f34792d;
        if (map != null) {
            map.put(str, eVar);
        }
    }

    public void b(c cVar) {
        if (cVar != null) {
            try {
                if (this.f34790b != null) {
                    e eVar = new e();
                    eVar.a("rs_rid", cVar.s());
                    eVar.a("r_stid", cVar.t());
                    eVar.a("rus_rid", cVar.u());
                    eVar.a("u_stid", cVar.x());
                    this.f34790b.put(cVar.w(), eVar);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public LinkedHashMap<String, c> c() {
        return this.f34791c;
    }

    public m d() {
        try {
            JSONObject jSONObjectB = com.mbridge.msdk.foundation.same.report.c.b();
            if (this.f34789a == null) {
                this.f34789a = m.a("metrics_sdk", com.mbridge.msdk.foundation.controller.c.m().d(), a());
                if (this.f34789a != null) {
                    this.f34789a.a(jSONObjectB);
                    this.f34789a.h();
                }
            } else {
                this.f34789a.a(jSONObjectB);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return this.f34789a;
    }

    public void c(String str) {
        b(str, "");
    }

    public e a(int i10, int i11, String str, boolean z10, int i12) {
        e eVar = new e();
        try {
            eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(i10));
            eVar.a("adtp", Integer.valueOf(i11));
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            if (z10) {
                eVar.a("auto_load", Integer.valueOf(i12));
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return eVar;
    }

    private x a() {
        try {
            int iB = q0.a().b("metrics", "t_m_e_t", q0.a().b("t_m_e_t", MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF));
            int iB2 = q0.a().b("metrics", "t_m_e_s", q0.a().b("t_m_e_s", 50));
            int iB3 = q0.a().b("metrics", "t_m_r_c", q0.a().b("t_m_r_c", 50));
            int iB4 = q0.a().b("metrics", "t_m_t", q0.a().b("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS));
            int iB5 = q0.a().b("metrics", "t_m_r_t_s", q0.a().b("t_m_r_t_s", 2));
            int iB6 = q0.a().b("metrics", "t_r_t", q0.a().b("t_r_t", 1));
            if (iB6 != 0 && iB6 != 1) {
                iB6 = 0;
            }
            return new x.b().a(iB).b(iB2).d(iB3).c(iB4).e(iB5).a(new com.mbridge.msdk.foundation.same.report.d()).a(com.mbridge.msdk.foundation.same.report.c.c()).a(new n()).a(iB6, a(iB6)).a();
        } catch (Exception e10) {
            o0.b("EventLibraryReport", "configTrackManager error: " + e10.getMessage());
            return null;
        }
    }

    public e b(String str) {
        Map<String, e> map;
        e eVar = new e();
        try {
            return (TextUtils.isEmpty(str) || (map = this.f34790b) == null || !map.containsKey(str)) ? eVar : this.f34790b.get(str);
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return eVar;
            }
            e10.printStackTrace();
            return eVar;
        }
    }

    public void d(String str) {
        try {
            JSONObject jSONObjectA = com.mbridge.msdk.foundation.same.c.a(str);
            if (jSONObjectA != null && jSONObjectA.length() != 0) {
                String strOptString = jSONObjectA.optString("key");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(strOptString);
                eVar.a(0);
                eVar.b(0);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                eVar.a(jSONObjectA);
                m mVarD = b().d();
                if (mVarD == null || !mVarD.g()) {
                    return;
                }
                mVarD.d(eVar);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("EventLibraryReport", "reportByTrackManager error: " + e10.getMessage());
            }
        }
    }

    public static d b() {
        if (f34788e == null) {
            synchronized (d.class) {
                try {
                    if (f34788e == null) {
                        f34788e = new d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34788e;
    }

    public void b(String str, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        a(str, cVar, aVar);
    }

    public void b(String str, e eVar) {
        try {
            c cVar = new c();
            if (eVar.b(MBridgeConstans.PROPERTIES_UNIT_ID) != null) {
                cVar.m(String.valueOf(eVar.b(MBridgeConstans.PROPERTIES_UNIT_ID)));
            }
            if (eVar.b("lrid") != null && (eVar.b("lrid") instanceof String)) {
                cVar.h(String.valueOf(eVar.b("lrid")));
            }
            cVar.a(str, eVar);
            new f().b(str, d(), cVar, null);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void b(String str, String str2) {
        LinkedHashMap<String, c> linkedHashMap;
        try {
            String str3 = str + str2;
            if (!TextUtils.isEmpty(str3) && (linkedHashMap = this.f34791c) != null && linkedHashMap.containsKey(str3)) {
                this.f34791c.remove(str3);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private p a(int i10) {
        if (i10 == 1) {
            return new p(new com.mbridge.msdk.foundation.same.report.m((byte) 2), com.mbridge.msdk.foundation.same.net.utils.d.h().f34645j, com.mbridge.msdk.foundation.same.net.utils.d.h().f34649n);
        }
        return new p(new h(), com.mbridge.msdk.foundation.same.net.utils.d.h().f34636d, 0);
    }

    public void a(String str, CampaignEx campaignEx, e eVar) {
        c cVar;
        String localRequestId = "";
        if (campaignEx != null) {
            try {
                localRequestId = campaignEx.getLocalRequestId();
                cVar = c().get(localRequestId);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        } else {
            cVar = null;
        }
        if (cVar != null) {
            if (Arrays.asList(b.f34756h).contains(str)) {
                cVar = a(cVar);
            }
        } else {
            cVar = new c();
        }
        cVar.a(campaignEx);
        cVar.h(localRequestId);
        cVar.a(str, eVar);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(String str, CampaignEx campaignEx) {
        String currentLocalRid = "";
        if (campaignEx != null) {
            try {
                currentLocalRid = campaignEx.getCurrentLocalRid();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        c cVar = c().get(currentLocalRid);
        if (cVar == null) {
            cVar = new c();
        }
        if (cVar.j() != null && !cVar.j().isEmpty() && campaignEx != null) {
            for (int i10 = 0; i10 < cVar.j().size(); i10++) {
                if (cVar.j().get(i10).getId().equals(campaignEx.getId())) {
                    cVar.j().set(i10, campaignEx);
                    break;
                }
            }
        }
        cVar.a(campaignEx);
        cVar.h(currentLocalRid);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(String str, List<CampaignEx> list, e eVar) {
        CampaignEx campaignEx;
        String currentLocalRid = "";
        if (list != null) {
            try {
                if (list.size() > 0 && (campaignEx = list.get(0)) != null) {
                    currentLocalRid = campaignEx.getCurrentLocalRid();
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        c cVar = c().get(currentLocalRid);
        if (cVar == null) {
            cVar = new c();
        }
        cVar.b(list);
        if (list != null && list.size() > 0) {
            cVar.h(list.get(0).getCurrentLocalRid());
        }
        cVar.a(str, eVar);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(com.mbridge.msdk.foundation.entity.m mVar, CampaignEx campaignEx) {
        e eVar = new e();
        eVar.a("result", Integer.valueOf(mVar.x()));
        eVar.a("scenes", mVar.a("scenes", ""));
        eVar.a("resource_type", Integer.valueOf(mVar.y()));
        eVar.a("url", mVar.a("url", ""));
        eVar.a("reason", mVar.t());
        eVar.a("mraid_type", Integer.valueOf(mVar.p()));
        b().a(mVar.n(), campaignEx, eVar);
    }

    public void a(String str, c cVar) {
        try {
            Map<String, e> map = this.f34792d;
            if (map != null && map.containsKey(str) && cVar != null) {
                cVar.a(str, this.f34792d.get(str));
            }
            new f().a(str, d(), cVar, null);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (cVar == null) {
                cVar = new c();
            }
            e eVar = new e();
            eVar.a("st", Long.valueOf(System.currentTimeMillis()));
            if (campaignEx != null) {
                eVar.a(BidResponsedEx.KEY_CID, campaignEx.getId());
                eVar.a("lrid", campaignEx.getLocalRequestId());
                eVar.a("rid", campaignEx.getRequestId());
                eVar.a("rid_n", campaignEx.getRequestIdNotice());
                eVar.a("adtp", Integer.valueOf(campaignEx.getAdType()));
                if (!eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                    eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, campaignEx.getCampaignUnitId());
                }
                eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(campaignEx.isBidCampaign() ? 1 : 0));
                eVar.a("bid_tk", campaignEx.getBidToken());
            }
            if (context != null) {
                eVar.a("network_type", Integer.valueOf(k0.s(context)));
            }
            cVar.a(str, eVar);
            a(str, cVar, aVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(String str, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            if (Arrays.asList(b.f34751c).contains(str)) {
                cVar.c(str);
            }
            Map<String, e> map = this.f34792d;
            if (map != null && map.containsKey(str)) {
                cVar.a(str, this.f34792d.get(str));
            }
            new f().a(str, d(), cVar, aVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public c a(String str) {
        return a(str, "");
    }

    public c a(String str, String str2) {
        LinkedHashMap<String, c> linkedHashMap;
        try {
            String str3 = str + str2;
            if (!TextUtils.isEmpty(str3) && (linkedHashMap = this.f34791c) != null && linkedHashMap.containsKey(str3)) {
                return this.f34791c.get(str3);
            }
            return null;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            return null;
        }
    }

    public c a(c cVar) {
        if (cVar == null) {
            return null;
        }
        try {
            return (c) cVar.clone();
        } catch (CloneNotSupportedException e10) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            e10.printStackTrace();
            return null;
        }
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.length() == 0) {
                    return;
                }
                String strOptString = jSONObject.optString("key");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(strOptString);
                eVar.a(0);
                eVar.b(0);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                eVar.a(jSONObject);
                m mVarD = b().d();
                if (mVarD == null || !mVarD.g()) {
                    return;
                }
                mVarD.d(eVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("EventLibraryReport", "reportByTrackManager error: " + e10.getMessage());
                }
            }
        }
    }
}

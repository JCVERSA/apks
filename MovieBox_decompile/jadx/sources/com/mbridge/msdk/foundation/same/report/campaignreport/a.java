package com.mbridge.msdk.foundation.same.report.campaignreport;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.h;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.tracker.e;
import org.json.JSONObject;

public class a {

    protected Context f34690a;

    protected h f34691b;

    public a(h hVar) {
        this.f34691b = hVar;
        Context contextD = c.m().d();
        this.f34690a = contextD;
        if (this.f34691b == null || contextD == null) {
            return;
        }
        int iS = k0.s(contextD);
        this.f34691b.c(iS);
        this.f34691b.a(k0.a(this.f34690a, iS));
    }

    public void a() {
        if (this.f34691b != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(EventConstants.KEY_TIME, this.f34691b.f());
                jSONObject.put(CampaignEx.JSON_KEY_HB, this.f34691b.i());
                jSONObject.put("fb", this.f34691b.b());
                jSONObject.put("num", this.f34691b.e());
                jSONObject.put(CampaignEx.JSON_KEY_AD_SOURCE_ID, this.f34691b.a());
                jSONObject.put("timeout", this.f34691b.g());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f34691b.h());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", this.f34691b.d());
                    jSONObject.put("network_str", this.f34691b.c());
                }
                e eVar = new e("2000006");
                eVar.a(0);
                eVar.b(0);
                eVar.a(jSONObject);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                d.b().d().d(eVar);
            } catch (Throwable unused) {
            }
        }
    }

    public void b(int i10) {
        h hVar = this.f34691b;
        if (hVar != null) {
            hVar.a(i10);
        }
    }

    public void c(int i10) {
        h hVar = this.f34691b;
        if (hVar != null) {
            hVar.b(i10);
        }
    }

    public void b(String str) {
        h hVar = this.f34691b;
        if (hVar != null) {
            hVar.c(str);
        }
    }

    public void a(int i10) {
        h hVar = this.f34691b;
        if (hVar != null) {
            hVar.d(i10);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f34691b.b(str);
    }
}

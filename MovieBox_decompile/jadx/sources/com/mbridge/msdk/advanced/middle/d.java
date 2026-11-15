package com.mbridge.msdk.advanced.middle;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.NativeAdvancedAdListener;
import org.json.JSONException;
import org.json.JSONObject;

public class d {

    protected NativeAdvancedAdListener f33369a;

    protected CampaignEx f33370b;

    protected c f33371c;

    public d(c cVar, NativeAdvancedAdListener nativeAdvancedAdListener, CampaignEx campaignEx) {
        this.f33371c = cVar;
        this.f33369a = nativeAdvancedAdListener;
        this.f33370b = campaignEx;
    }

    public void a(MBridgeIds mBridgeIds, String str) {
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33370b, mBridgeIds.getUnitId(), str);
    }

    public void b(MBridgeIds mBridgeIds) {
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33369a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onClick(mBridgeIds);
        }
    }

    public void c(MBridgeIds mBridgeIds) {
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33369a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onClose(mBridgeIds);
            c cVar = this.f33371c;
            if (cVar != null) {
                cVar.E = false;
            }
        }
    }

    public void d(MBridgeIds mBridgeIds) {
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33369a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onLeaveApp(mBridgeIds);
        }
    }

    public void e(MBridgeIds mBridgeIds) {
        c cVar = this.f33371c;
        if (cVar != null) {
            cVar.E = true;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_to", "0");
            jSONObject.put("allow_skip", this.f33371c.f());
        } catch (JSONException e10) {
            o0.b("NativeAdvancedShowListenerImpl", "e:" + e10.getMessage());
        }
        j.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33370b, mBridgeIds.getUnitId(), jSONObject.toString());
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33369a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onLogImpression(mBridgeIds);
        }
    }

    public void f(MBridgeIds mBridgeIds) {
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33369a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.showFullScreen(mBridgeIds);
        }
    }

    public void a(MBridgeIds mBridgeIds) {
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33369a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.closeFullScreen(mBridgeIds);
        }
    }
}

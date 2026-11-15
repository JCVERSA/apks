package com.mbridge.msdk.splash.middle;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
import org.json.JSONException;
import org.json.JSONObject;

public class d {

    private MBSplashShowListener f36735a;

    private CampaignEx f36736b;

    private c f36737c;

    public d(c cVar, MBSplashShowListener mBSplashShowListener, CampaignEx campaignEx) {
        this.f36737c = cVar;
        this.f36735a = mBSplashShowListener;
        this.f36736b = campaignEx;
    }

    public void a(MBridgeIds mBridgeIds, String str) {
        c cVar = this.f36737c;
        if (cVar != null) {
            cVar.f36728x = false;
        }
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36736b, mBridgeIds.getUnitId(), str);
        MBSplashShowListener mBSplashShowListener = this.f36735a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowFailed(mBridgeIds, str);
        }
    }

    public void b(MBridgeIds mBridgeIds) {
        c cVar = this.f36737c;
        if (cVar != null) {
            cVar.f36728x = true;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_to", this.f36737c.e());
            jSONObject.put("allow_skip", this.f36737c.f() ? 1 : 0);
            jSONObject.put("countdown", this.f36737c.d());
        } catch (JSONException e10) {
            o0.b("SplashShowListenerImpl", "e:" + e10.getMessage());
        }
        j.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36736b, mBridgeIds.getUnitId(), jSONObject.toString());
        MBSplashShowListener mBSplashShowListener = this.f36735a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onShowSuccessed(mBridgeIds);
        }
    }

    public void a(MBridgeIds mBridgeIds) {
        MBSplashShowListener mBSplashShowListener = this.f36735a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onAdClicked(mBridgeIds);
        }
    }

    public void a(MBridgeIds mBridgeIds, int i10) {
        MBSplashShowListener mBSplashShowListener = this.f36735a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onDismiss(mBridgeIds, i10);
        }
        c cVar = this.f36737c;
        if (cVar != null) {
            cVar.f36728x = false;
        }
        if (i10 == 6 || i10 == 4 || i10 == 5) {
            com.mbridge.msdk.splash.report.a.a(this.f36736b, mBridgeIds.getUnitId(), i10);
        }
    }

    public void a(MBridgeIds mBridgeIds, long j10) {
        MBSplashShowListener mBSplashShowListener = this.f36735a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onAdTick(mBridgeIds, j10);
        }
    }

    public void a(MBridgeIds mBridgeIds, int i10, int i11, int i12) {
        MBSplashShowListener mBSplashShowListener = this.f36735a;
        if (mBSplashShowListener != null) {
            mBSplashShowListener.onZoomOutPlayStart(mBridgeIds);
        }
        com.mbridge.msdk.splash.report.a.a(this.f36736b, mBridgeIds.getUnitId(), i10, i11, i12);
    }
}

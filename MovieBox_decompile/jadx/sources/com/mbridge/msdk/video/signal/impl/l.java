package com.mbridge.msdk.video.signal.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONException;
import org.json.JSONObject;

public class l extends d {

    public boolean f39018s = true;

    private com.mbridge.msdk.click.a q() {
        if (this.f38991l == null) {
            this.f38991l = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38989j);
        }
        return this.f38991l;
    }

    public void a(JSONObject jSONObject) {
        try {
            jSONObject.put("device", new com.mbridge.msdk.foundation.tools.r(com.mbridge.msdk.foundation.controller.c.m().d()).a());
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void b(JSONObject jSONObject) {
    }

    public void a(CampaignEx campaignEx, Context context) {
        String queryParameter;
        try {
            queryParameter = Uri.parse(campaignEx.getNoticeUrl()).getQueryParameter(com.mbridge.msdk.foundation.same.a.f34509m);
        } catch (Throwable unused) {
        }
        this.f38992m.a((!TextUtils.isEmpty(queryParameter) ? Integer.parseInt(queryParameter) : 0) == 2);
        q().a(this.f38992m);
        q().a(campaignEx);
        com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
    }
}

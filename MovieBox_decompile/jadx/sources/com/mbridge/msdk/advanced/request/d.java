package com.mbridge.msdk.advanced.request;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    private static final String f33373c = "d";

    private int f33374a;

    private String f33375b;

    private void b(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        CampaignUnit v5CampaignUnit = "v5".equals(jSONObject.optString("version")) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f33375b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f33375b);
        if (v5CampaignUnit != null && v5CampaignUnit.getAds() != null && v5CampaignUnit.getAds().size() > 0) {
            a(list, v5CampaignUnit);
            saveRequestTime(v5CampaignUnit.getAds().size());
        } else {
            String msg = v5CampaignUnit != null ? v5CampaignUnit.getMsg() : null;
            if (TextUtils.isEmpty(msg)) {
                msg = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
            }
            a(iOptInt, msg);
        }
    }

    public abstract void a(int i10, String str);

    public void a(String str) {
        this.f33375b = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f33373c, "errorCode = " + aVar.f34597a);
        a(aVar.f34597a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override
    public void onSuccess(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar == null || (aVar = eVar.f34595b) == null) {
            return;
        }
        int i10 = this.f33374a;
        if (i10 == 0) {
            b(aVar.f34618b, eVar.f34596c);
        } else if (i10 == 1) {
            a(aVar.f34618b, eVar.f34596c);
        }
    }

    private void a(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        CampaignUnit v5CampaignUnit = "v5".equals(jSONObject.optString("version")) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f33375b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f33375b);
        if (v5CampaignUnit != null && v5CampaignUnit.getListFrames() != null && v5CampaignUnit.getListFrames().size() > 0) {
            List<Frame> listFrames = v5CampaignUnit.getListFrames();
            a(listFrames);
            saveRequestTime(listFrames.size());
        } else {
            String msg = v5CampaignUnit != null ? v5CampaignUnit.getMsg() : null;
            if (TextUtils.isEmpty(msg)) {
                msg = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
            }
            a(iOptInt, msg);
        }
    }
}

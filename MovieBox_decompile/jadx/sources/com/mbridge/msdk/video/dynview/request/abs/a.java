package com.mbridge.msdk.video.dynview.request.abs;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

public abstract class a extends c<JSONObject> {

    private int f38236a;

    private String f38237b;

    private void a(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        CampaignUnit v5CampaignUnit = "v5".equals(jSONObject.optString("version")) ? b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f38237b) : b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f38237b);
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

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        a(aVar.f34597a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override
    public void onSuccess(e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar == null || (aVar = eVar.f34595b) == null || this.f38236a != 0) {
            return;
        }
        a(aVar.f34618b, eVar.f34596c);
    }
}

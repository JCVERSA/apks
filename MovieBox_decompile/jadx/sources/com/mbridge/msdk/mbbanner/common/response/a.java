package com.mbridge.msdk.mbbanner.common.response;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

public abstract class a extends c<JSONObject> {

    private static final String f35308b = "a";

    private String f35309a = "";

    class RunnableC0477a implements Runnable {

        final String f35310a;

        final JSONObject f35311b;

        final int f35312c;

        class RunnableC0478a implements Runnable {

            final CampaignUnit f35314a;

            RunnableC0478a(CampaignUnit campaignUnit) {
                this.f35314a = campaignUnit;
            }

            @Override
            public void run() {
                CampaignUnit campaignUnit = this.f35314a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f35314a.getAds().size() > 0) {
                    a.this.a(this.f35314a);
                    if (!TextUtils.isEmpty(a.this.f35309a)) {
                        a.this.saveHbState(1);
                    }
                    a.this.saveRequestTime(this.f35314a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f35314a;
                String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                if (TextUtils.isEmpty(msg)) {
                    msg = RunnableC0477a.this.f35311b.optString(NotificationCompat.CATEGORY_MESSAGE);
                }
                RunnableC0477a runnableC0477a = RunnableC0477a.this;
                a.this.a(runnableC0477a.f35312c, msg);
            }
        }

        RunnableC0477a(String str, JSONObject jSONObject, int i10) {
            this.f35310a = str;
            this.f35311b = jSONObject;
            this.f35312c = i10;
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0478a("v5".equals(this.f35310a) ? b.parseV5CampaignUnit(this.f35311b.optJSONObject("data"), a.this.f35309a) : b.parseCampaignUnit(this.f35311b.optJSONObject("data"), a.this.f35309a)));
        }
    }

    public abstract void a(int i10, String str);

    public abstract void a(CampaignUnit campaignUnit);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.c(f35308b, "onFailed errorCode = " + aVar.f34597a);
        a(aVar.f34597a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override
    public void onSuccess(e<JSONObject> eVar) {
        super.onSuccess(eVar);
        a(eVar.f34595b.f34618b, eVar.f34596c);
    }

    public void a(String str) {
        this.f35309a = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        o0.c(f35308b, "parseLoad content = " + jSONObject);
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 == iOptInt) {
            calcRequestTime(System.currentTimeMillis());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0477a(jSONObject.optString("version"), jSONObject, iOptInt));
            return;
        }
        a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
    }
}

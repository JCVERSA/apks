package com.mbridge.msdk.mbnative.service.net;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

public abstract class b extends c<JSONObject> {

    private int f35579a;

    private String f35580b;

    class a implements Runnable {

        final String f35581a;

        final JSONObject f35582b;

        final List f35583c;

        final int f35584d;

        class RunnableC0487a implements Runnable {

            final CampaignUnit f35586a;

            RunnableC0487a(CampaignUnit campaignUnit) {
                this.f35586a = campaignUnit;
            }

            @Override
            public void run() {
                CampaignUnit campaignUnit = this.f35586a;
                if (campaignUnit == null || campaignUnit.getAds() == null || this.f35586a.getAds().size() <= 0) {
                    a aVar = a.this;
                    b.this.a(aVar.f35584d, aVar.f35582b.optString(NotificationCompat.CATEGORY_MESSAGE));
                } else {
                    a aVar2 = a.this;
                    b.this.a(aVar2.f35583c, this.f35586a);
                    b.this.saveRequestTime(this.f35586a.getAds().size());
                }
            }
        }

        a(String str, JSONObject jSONObject, List list, int i10) {
            this.f35581a = str;
            this.f35582b = jSONObject;
            this.f35583c = list;
            this.f35584d = i10;
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0487a("v5".equals(this.f35581a) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f35582b.optJSONObject("data")) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f35582b.optJSONObject("data"))));
        }
    }

    public abstract void a(int i10, String str);

    public void a(String str) {
        this.f35580b = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    public String b() {
        return this.f35580b;
    }

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
        if (eVar == null || (aVar = eVar.f34595b) == null) {
            return;
        }
        int i10 = this.f35579a;
        if (i10 == 0) {
            b(aVar.f34618b, eVar.f34596c);
        } else if (i10 == 1) {
            a(aVar.f34618b, eVar.f34596c);
        }
    }

    private void b(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(jSONObject.optString("version"), jSONObject, list, iOptInt));
    }

    public void a(int i10) {
        this.f35579a = i10;
    }

    public int a() {
        return this.f35579a;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit campaignUnit;
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 == iOptInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                campaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"));
            } else {
                campaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"));
            }
            if (campaignUnit != null && campaignUnit.getListFrames() != null && campaignUnit.getListFrames().size() > 0) {
                a(campaignUnit.getListFrames());
                saveRequestTime(campaignUnit.getListFrames().size());
                return;
            } else {
                a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
                return;
            }
        }
        a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
    }
}

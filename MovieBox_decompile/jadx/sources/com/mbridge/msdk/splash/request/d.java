package com.mbridge.msdk.splash.request;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    private static final String f36739c = "d";

    private int f36740a;

    private String f36741b;

    class a implements Runnable {

        final String f36742a;

        final JSONObject f36743b;

        final List f36744c;

        final int f36745d;

        class RunnableC0519a implements Runnable {

            final CampaignUnit f36747a;

            RunnableC0519a(CampaignUnit campaignUnit) {
                this.f36747a = campaignUnit;
            }

            @Override
            public void run() {
                CampaignUnit campaignUnit = this.f36747a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f36747a.getAds().size() > 0) {
                    a aVar = a.this;
                    d.this.a(aVar.f36744c, this.f36747a);
                    d.this.saveRequestTime(this.f36747a.getAds().size());
                } else {
                    CampaignUnit campaignUnit2 = this.f36747a;
                    String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                    if (TextUtils.isEmpty(msg)) {
                        msg = a.this.f36743b.optString(NotificationCompat.CATEGORY_MESSAGE);
                    }
                    a aVar2 = a.this;
                    d.this.a(aVar2.f36745d, msg);
                }
            }
        }

        a(String str, JSONObject jSONObject, List list, int i10) {
            this.f36742a = str;
            this.f36743b = jSONObject;
            this.f36744c = list;
            this.f36745d = i10;
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0519a("v5".equals(this.f36742a) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f36743b.optJSONObject("data"), d.this.f36741b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f36743b.optJSONObject("data"), d.this.f36741b)));
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

    public abstract void a(int i10, String str);

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f36739c, "errorCode = " + aVar.f34597a);
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
        int i10 = this.f36740a;
        if (i10 == 0) {
            b(aVar.f34618b, eVar.f34596c);
        } else if (i10 == 1) {
            a(aVar.f34618b, eVar.f34596c);
        }
    }

    public void a(String str) {
        this.f36741b = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit campaignUnit;
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 == iOptInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                campaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f36741b);
            } else {
                campaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f36741b);
            }
            if (campaignUnit != null && campaignUnit.getListFrames() != null && campaignUnit.getListFrames().size() > 0) {
                List<Frame> listFrames = campaignUnit.getListFrames();
                a(listFrames);
                saveRequestTime(listFrames.size());
                return;
            } else {
                String msg = campaignUnit != null ? campaignUnit.getMsg() : null;
                if (TextUtils.isEmpty(msg)) {
                    msg = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
                }
                a(iOptInt, msg);
                return;
            }
        }
        a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
    }
}

package com.mbridge.msdk.reward.request;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

public abstract class c extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    private static final String f36362d = "c";

    private int f36363a;

    private String f36364b;

    private com.mbridge.msdk.foundation.same.report.metrics.c f36365c;

    class a implements Runnable {

        final String f36366a;

        final JSONObject f36367b;

        final List f36368c;

        final int f36369d;

        class RunnableC0510a implements Runnable {

            final CampaignUnit f36371a;

            RunnableC0510a(CampaignUnit campaignUnit) {
                this.f36371a = campaignUnit;
            }

            @Override
            public void run() {
                CampaignUnit campaignUnit = this.f36371a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f36371a.getAds().size() > 0) {
                    this.f36371a.setMetricsData(c.this.f36365c);
                    a aVar = a.this;
                    c.this.a(aVar.f36368c, this.f36371a);
                    c.this.saveRequestTime(this.f36371a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f36371a;
                String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                if (TextUtils.isEmpty(msg)) {
                    msg = a.this.f36367b.optString(NotificationCompat.CATEGORY_MESSAGE);
                }
                a aVar2 = a.this;
                c cVar = c.this;
                cVar.a(aVar2.f36369d, msg, cVar.f36365c);
            }
        }

        a(String str, JSONObject jSONObject, List list, int i10) {
            this.f36366a = str;
            this.f36367b = jSONObject;
            this.f36368c = list;
            this.f36369d = i10;
        }

        @Override
        public void run() {
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0510a("v5".equals(this.f36366a) ? com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.f36367b.optJSONObject("data"), c.this.f36364b) : com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.f36367b.optJSONObject("data"), c.this.f36364b)));
        }
    }

    public abstract void a(int i10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar);

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f36362d, "errorCode = " + aVar.f34597a);
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(aVar.f34597a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
        bVar.a("campaign_request_error", aVar);
        bVar.a(aVar.f34598b);
        this.f36365c.a(bVar);
        a(aVar.f34597a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar), this.f36365c);
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
        int i10 = this.f36363a;
        if (i10 == 0) {
            b(aVar.f34618b, eVar.f34596c);
        } else if (i10 == 1) {
            a(aVar.f34618b, eVar.f34596c);
        }
    }

    private void b(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 != iOptInt) {
            a(list, jSONObject, iOptInt, this.f36365c);
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(jSONObject.optString("version"), jSONObject, list, iOptInt));
    }

    public void a(String str) {
        this.f36364b = str;
    }

    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        this.f36365c = cVar;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit campaignUnit;
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 == iOptInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                campaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.f36364b);
            } else {
                campaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.f36364b);
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
                a(iOptInt, msg, this.f36365c);
                return;
            }
        }
        a(list, jSONObject, iOptInt, this.f36365c);
    }

    private void a(List<g> list, JSONObject jSONObject, int i10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.error.b bVarA;
        String strB = "";
        if (list != null && list.size() > 0) {
            for (g gVar : list) {
                if (gVar != null) {
                    String strA = gVar.a();
                    if (!TextUtils.isEmpty(strA) && strA.equals("data_res_type")) {
                        strB = gVar.b();
                    }
                }
            }
        }
        String strG = "errorCode: 3507 errorMessage: data load failed, errorMsg is " + jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
        if (!TextUtils.isEmpty(strB) && strB.equals("1")) {
            com.mbridge.msdk.foundation.error.b bVarA2 = com.mbridge.msdk.foundation.error.a.a(880018, strG);
            if (cVar != null) {
                cVar.a(bVarA2);
                cVar.c(true);
                if (TextUtils.isEmpty(strG)) {
                    strG = bVarA2.g();
                }
            }
            a(i10, strG, cVar);
            return;
        }
        if (i10 == -1) {
            bVarA = com.mbridge.msdk.foundation.error.a.a(880017, strG);
        } else {
            bVarA = com.mbridge.msdk.foundation.error.a.a(880003, strG);
        }
        if (cVar != null) {
            cVar.a(bVarA);
            cVar.c(false);
            if (TextUtils.isEmpty(strG)) {
                strG = bVarA.g();
            }
        }
        a(i10, strG, cVar);
    }
}

package com.mbridge.msdk.mbnative.report;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbnative.controller.NativeController;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

public class b {

    class a implements Runnable {

        final Context f35572a;

        final CampaignEx f35573b;

        a(Context context, CampaignEx campaignEx) {
            this.f35572a = context;
            this.f35573b = campaignEx;
        }

        @Override
        public void run() {
            try {
                j.a(g.a(this.f35572a)).b(this.f35573b.getId());
            } catch (Exception unused) {
                o0.b("NativeReportUtils", "campain can't insert db");
            }
        }
    }

    public static synchronized void a(CampaignEx campaignEx, Context context, String str, com.mbridge.msdk.mbnative.listener.a aVar) {
        if (campaignEx == null) {
            return;
        }
        try {
            com.mbridge.msdk.setting.g gVarB = h.b().b(c.m().b());
            boolean z10 = gVarB == null || gVarB.n() == 1;
            if (!campaignEx.isReport()) {
                campaignEx.setReport(true);
                a(campaignEx, context, str);
                a(campaignEx, context, str, aVar, z10);
                a(a(campaignEx), campaignEx, context, str);
                b(campaignEx, context, str);
            }
            if (aVar != null && !campaignEx.isCallBackImpression()) {
                if (!z10) {
                    try {
                        aVar.onLoggingImpression(campaignEx.getType());
                    } catch (Exception e10) {
                        Log.e("NativeReportUtils", e10.getMessage());
                    }
                }
                campaignEx.setCallBackImpression(true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static synchronized void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls != null && pv_urls.size() > 0) {
                    Iterator<String> it = pv_urls.iterator();
                    while (it.hasNext()) {
                        com.mbridge.msdk.click.a.a(context, campaignEx, str, it.next(), false, true);
                    }
                }
            } catch (Throwable th2) {
                o0.a("NativeReportUtils", th2.getMessage());
            }
        }
    }

    private static synchronized void a(CampaignEx campaignEx, Context context, String str) {
        try {
            c.m().a(context);
            if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context, campaignEx));
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33586m);
            }
            if (!TextUtils.isEmpty(str) && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().k() != null) {
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static synchronized void a(CampaignEx campaignEx, Context context, String str, com.mbridge.msdk.mbnative.listener.a aVar, boolean z10) {
        Map<String, Long> map;
        if (!TextUtils.isEmpty(campaignEx.getOnlyImpressionURL()) && (map = NativeController.f35406d0) != null && !map.containsKey(campaignEx.getOnlyImpressionURL())) {
            if (z10 && aVar != null) {
                try {
                    aVar.onLoggingImpression(campaignEx.getAdType());
                } catch (Exception e10) {
                    Log.e("NativeReportUtils", e10.getMessage());
                }
            }
            NativeController.f35406d0.put(campaignEx.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33587n);
        }
    }

    private static void a(List<String> list, CampaignEx campaignEx, Context context, String str) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str2 = list.get(i10);
            if (!TextUtils.isEmpty(str2)) {
                com.mbridge.msdk.click.a.a(context, campaignEx, str, str2, false, false);
            }
        }
    }

    public static List<String> a(CampaignEx campaignEx) {
        ArrayList arrayList = new ArrayList();
        if (campaignEx == null) {
            return arrayList;
        }
        String ad_url_list = campaignEx.getAd_url_list();
        if (TextUtils.isEmpty(ad_url_list)) {
            return arrayList;
        }
        try {
            JSONArray jSONArray = new JSONArray(ad_url_list);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add((String) jSONArray.get(i10));
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }
}

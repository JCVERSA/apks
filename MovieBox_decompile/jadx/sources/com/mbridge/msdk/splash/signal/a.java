package com.mbridge.msdk.splash.signal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.base.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a implements com.mbridge.msdk.mbsignalcommon.mraid.b {

    private WeakReference<Context> f36774b;

    private List<CampaignEx> f36775c;

    private String f36776d;

    private String f36777e;

    private int f36778f;

    private int f36779g;

    private int f36781i;

    private com.mbridge.msdk.splash.middle.a f36782j;

    private SplashExpandDialog f36783k;

    protected String f36773a = "SplashSignalCommunicationImpl";

    private int f36780h = 5;

    class RunnableC0520a implements Runnable {

        final ArrayList f36784a;

        RunnableC0520a(ArrayList arrayList) {
            this.f36784a = arrayList;
        }

        @Override
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f36784a.iterator();
                while (it.hasNext()) {
                    jVarA.b((String) it.next());
                }
            } catch (Exception unused) {
                o0.b(a.this.f36773a, "campain can't insert db");
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.f36777e = str;
        this.f36776d = str2;
        this.f36774b = new WeakReference<>(context);
    }

    public void a(Context context) {
        this.f36774b = new WeakReference<>(context);
    }

    public void b(int i10) {
        this.f36780h = i10;
    }

    public void c(int i10) {
        this.f36781i = i10;
    }

    @Override
    public void close() {
        o0.b(this.f36773a, "close");
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            o0.b(this.f36773a, "close", th2);
        }
    }

    public void d(Object obj, String str) {
        o0.a(this.f36773a, "sendImpressions:" + str);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String string = jSONArray.getString(i10);
                for (CampaignEx campaignEx : this.f36775c) {
                    if (campaignEx.getId().equals(string)) {
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f36776d, campaignEx, "splash");
                        arrayList.add(string);
                    }
                }
            }
            new Thread(new RunnableC0520a(arrayList)).start();
        } catch (Throwable th2) {
            o0.b(this.f36773a, "sendImpressions", th2);
        }
    }

    public void e(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", 0);
            jSONObject.put("message", "Call pause count down success.");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("countdown", this.f36781i);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            o0.b(this.f36773a, e10.getMessage());
        }
        com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
        if (aVar != null) {
            aVar.a(1, -1);
        }
    }

    @Override
    public void expand(String str, boolean z10) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f36774b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            SplashExpandDialog splashExpandDialog = this.f36783k;
            if (splashExpandDialog == null || !splashExpandDialog.isShowing()) {
                SplashExpandDialog splashExpandDialog2 = new SplashExpandDialog(this.f36774b.get(), bundle, this.f36782j);
                this.f36783k = splashExpandDialog2;
                splashExpandDialog2.setCampaignList(this.f36776d, this.f36775c);
                this.f36783k.show();
                com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
                if (aVar != null) {
                    aVar.a(true);
                }
                com.mbridge.msdk.splash.report.a.a(this.f36776d, getMraidCampaign(), str);
            }
        } catch (Throwable th2) {
            o0.b(this.f36773a, "expand", th2);
        }
    }

    public void f(Object obj, String str) {
        int i10 = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                int iOptInt = new JSONObject(str).optInt("countdown");
                try {
                    f.a().b(obj, c.a(0));
                    i10 = iOptInt;
                } catch (Exception e10) {
                    e = e10;
                    i10 = iOptInt;
                    o0.b(this.f36773a, e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
        com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
        if (aVar != null) {
            aVar.a(2, i10);
        }
    }

    @Override
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f36775c;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f36775c.get(0);
    }

    public void init(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            com.mbridge.msdk.splash.common.b bVar = new com.mbridge.msdk.splash.common.b(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f36778f);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", bVar.b());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f36775c));
            l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f36776d);
            if (lVarE == null) {
                lVarE = l.i(this.f36776d);
            }
            if (!TextUtils.isEmpty(this.f36777e)) {
                lVarE.d(this.f36777e);
            }
            lVarE.e(this.f36776d);
            lVarE.j(this.f36780h);
            lVarE.a(this.f36779g);
            jSONObject.put("unitSetting", lVarE.M());
            String strE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put("appSetting", new JSONObject(strE));
            }
            jSONObject.put("sdk_info", d.f35599a);
            o0.b(this.f36773a, "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b(this.f36773a, "init", th2);
        }
    }

    public void install(Object obj, String str) {
        o0.b(this.f36773a, "install");
        try {
            List<CampaignEx> list = this.f36775c;
            if (list == null) {
                return;
            }
            CampaignEx campaignEx = list.size() > 0 ? this.f36775c.get(0) : null;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectCampaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectCampaignToJsonObject.put(next, jSONObject.getString(next));
                }
                CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject);
                String strOptString = jSONObjectCampaignToJsonObject.optString("unitId");
                if (!TextUtils.isEmpty(strOptString)) {
                    campaignWithBackData.setCampaignUnitId(strOptString);
                }
                campaignEx = campaignWithBackData;
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
            if (aVar != null) {
                aVar.a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b(this.f36773a, "click", th2);
        }
    }

    @Override
    public void open(String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
        if (aVar != null) {
            aVar.a(true, str);
        }
    }

    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        o0.b(this.f36773a, "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (contextD == null) {
            try {
                if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b) != null) {
                    contextD = windVaneWebView.getContext();
                }
            } catch (Exception e10) {
                o0.b(this.f36773a, e10.getMessage());
            }
        }
        if (contextD == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (iOptInt == 1) {
                com.mbridge.msdk.click.c.c(contextD, strOptString);
            } else if (iOptInt == 2) {
                com.mbridge.msdk.click.c.e(contextD, strOptString);
            }
        } catch (JSONException e11) {
            o0.b(this.f36773a, e11.getMessage());
        } catch (Throwable th2) {
            o0.b(this.f36773a, th2.getMessage());
        }
    }

    public void reportUrls(Object obj, String str) {
        o0.a(this.f36773a, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                String strA = t0.a(jSONObject.optString("url"), "&tun=", k0.y() + "");
                int iOptInt2 = jSONObject.optInt("report");
                if (iOptInt2 == 0) {
                    Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list = this.f36775c;
                    com.mbridge.msdk.click.a.a(contextD, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list2 = this.f36775c;
                    com.mbridge.msdk.click.a.a(contextD2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            f.a().b(obj, c.a(0));
        } catch (Throwable th2) {
            o0.b(this.f36773a, "reportUrls", th2);
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
            if (aVar != null) {
                aVar.toggleCloseBtn(iOptInt);
            }
        } catch (Throwable th2) {
            o0.b(this.f36773a, "toggleCloseBtn", th2);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
        if (aVar != null) {
            aVar.triggerCloseBtn(obj, str);
        }
    }

    @Override
    public void unload() {
        close();
    }

    @Override
    public void useCustomClose(boolean z10) {
        int i10 = z10 ? 2 : 1;
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
            if (aVar != null) {
                aVar.toggleCloseBtn(i10);
            }
        } catch (Throwable th2) {
            o0.b(this.f36773a, "useCustomClose", th2);
        }
    }

    public void a(int i10) {
        this.f36779g = i10;
    }

    public List<CampaignEx> b() {
        return this.f36775c;
    }

    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b);
            }
        } catch (Throwable th2) {
            o0.b(this.f36773a, "onJSBridgeConnect", th2);
        }
    }

    public void a(com.mbridge.msdk.splash.middle.a aVar) {
        if (aVar != null) {
            this.f36782j = aVar;
        }
    }

    public com.mbridge.msdk.splash.middle.a a() {
        return this.f36782j;
    }

    public void a(List<CampaignEx> list) {
        this.f36775c = list;
    }

    public void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int i10 = new JSONObject(str).getInt("countdown");
            com.mbridge.msdk.splash.middle.a aVar = this.f36782j;
            if (aVar != null) {
                aVar.a(i10);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }
}

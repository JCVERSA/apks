package com.mbridge.msdk.advanced.signal;

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
import com.mbridge.msdk.mbsignalcommon.communication.c;
import com.mbridge.msdk.mbsignalcommon.communication.d;
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

public class b extends c {

    private WeakReference<Context> f33399c;

    private List<CampaignEx> f33400d;

    private String f33401e;

    private String f33402f;

    private int f33403g;

    private int f33404h;

    private com.mbridge.msdk.advanced.middle.a f33406j;

    private NativeAdvancedExpandDialog f33407k;

    private String f33398b = "NativeAdvancedJSBridgeImpl";

    private int f33405i = 5;

    class a implements Runnable {

        final ArrayList f33408a;

        a(ArrayList arrayList) {
            this.f33408a = arrayList;
        }

        @Override
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f33408a.iterator();
                while (it.hasNext()) {
                    jVarA.b((String) it.next());
                }
            } catch (Exception unused) {
                o0.b(b.this.f33398b, "campain can't insert db");
            }
        }
    }

    public b(Context context, String str, String str2) {
        this.f33402f = str;
        this.f33401e = str2;
        this.f33399c = new WeakReference<>(context);
    }

    public void b(int i10) {
        this.f33405i = i10;
    }

    @Override
    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b);
            }
        } catch (Throwable th2) {
            o0.b(this.f33398b, "onSignalCommunicationConnect", th2);
        }
    }

    @Override
    public void click(Object obj, String str) {
        try {
            List<CampaignEx> list = this.f33400d;
            CampaignEx campaignEx = (list == null || list.size() <= 0) ? null : this.f33400d.get(0);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectCampaignToJsonObject = campaignEx != null ? CampaignEx.campaignToJsonObject(campaignEx) : new JSONObject();
                JSONObject jSONObject = new JSONObject(str).getJSONObject("pt");
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
                o0.b(this.f33398b, e10.getMessage());
            }
            com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
            if (aVar != null) {
                aVar.a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b(this.f33398b, "click", th2);
        }
    }

    @Override
    public void close() {
        o0.b(this.f33398b, "close");
        try {
            com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            o0.b(this.f33398b, "close", th2);
        }
    }

    @Override
    public void d(Object obj, String str) {
        o0.a(this.f33398b, "sendImpressions:" + str);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String string = jSONArray.getString(i10);
                for (CampaignEx campaignEx : this.f33400d) {
                    if (campaignEx.getId().equals(string)) {
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f33401e, campaignEx, "h5_native");
                        arrayList.add(string);
                    }
                }
            }
            new Thread(new a(arrayList)).start();
        } catch (Throwable th2) {
            o0.b(this.f33398b, "sendImpressions", th2);
        }
    }

    @Override
    public void expand(String str, boolean z10) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f33399c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            NativeAdvancedExpandDialog nativeAdvancedExpandDialog = this.f33407k;
            if (nativeAdvancedExpandDialog == null || !nativeAdvancedExpandDialog.isShowing()) {
                NativeAdvancedExpandDialog nativeAdvancedExpandDialog2 = new NativeAdvancedExpandDialog(this.f33399c.get(), bundle, this.f33406j);
                this.f33407k = nativeAdvancedExpandDialog2;
                nativeAdvancedExpandDialog2.setCampaignList(this.f33401e, this.f33400d);
                this.f33407k.show();
                com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
                if (aVar != null) {
                    aVar.a(true);
                }
                com.mbridge.msdk.advanced.report.a.a(this.f33401e, getMraidCampaign(), str);
            }
        } catch (Throwable th2) {
            o0.b(this.f33398b, "expand", th2);
        }
    }

    @Override
    public void getFileInfo(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is empty");
            return;
        }
        try {
            com.mbridge.msdk.advanced.signal.a.a(obj, new JSONObject(str));
        } catch (Throwable th2) {
            o0.a(this.f33398b, th2.getMessage());
        }
    }

    @Override
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f33400d;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.f33400d.get(0);
    }

    @Override
    public void init(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            com.mbridge.msdk.advanced.common.b bVar = new com.mbridge.msdk.advanced.common.b(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f33403g);
            jSONObject2.put("customURLScheme", 1);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", bVar.b());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f33400d));
            l lVarA = h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f33401e);
            if (lVarA == null) {
                lVarA = l.k(this.f33401e);
            }
            if (!TextUtils.isEmpty(this.f33402f)) {
                lVarA.d(this.f33402f);
            }
            lVarA.e(this.f33401e);
            lVarA.j(this.f33405i);
            lVarA.a(this.f33404h);
            jSONObject.put("unitSetting", lVarA.M());
            String strE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put("appSetting", new JSONObject(strE));
            }
            jSONObject.put("sdk_info", com.mbridge.msdk.mbsignalcommon.base.d.f35599a);
            o0.b(this.f33398b, "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b(this.f33398b, "init", th2);
        }
    }

    @Override
    public void install(Object obj, String str) {
        o0.b(this.f33398b, "install");
        try {
            List<CampaignEx> list = this.f33400d;
            CampaignEx campaignEx = (list == null || list.size() <= 0) ? null : this.f33400d.get(0);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObjectCampaignToJsonObject = campaignEx != null ? CampaignEx.campaignToJsonObject(campaignEx) : new JSONObject();
                JSONObject jSONObject = new JSONObject(str).getJSONObject("pt");
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
            com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
            if (aVar != null) {
                aVar.a(campaignEx);
            }
        } catch (Throwable th2) {
            o0.b(this.f33398b, "install", th2);
        }
    }

    @Override
    public void open(String str) {
        com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
        if (aVar != null) {
            aVar.a(true, str);
        }
    }

    @Override
    public void readyStatus(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        try {
            if (!(obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) || (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f35709b) == null) {
                return;
            }
            try {
                windVaneWebView.getWebViewListener().a(windVaneWebView, new JSONObject(str).getInt("isReady"));
            } catch (Exception unused) {
                windVaneWebView.getWebViewListener().a(windVaneWebView, 2);
            }
        } catch (Throwable th2) {
            o0.a(this.f33398b, th2.getMessage());
        }
    }

    @Override
    public void reportUrls(Object obj, String str) {
        o0.a(this.f33398b, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
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
                    List<CampaignEx> list = this.f33400d;
                    com.mbridge.msdk.click.a.a(contextD, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextD2 = com.mbridge.msdk.foundation.controller.c.m().d();
                    List<CampaignEx> list2 = this.f33400d;
                    com.mbridge.msdk.click.a.a(contextD2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            f.a().b(obj, d.a(0));
        } catch (Throwable th2) {
            o0.b(this.f33398b, "reportUrls", th2);
        }
    }

    @Override
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
            if (aVar != null) {
                aVar.toggleCloseBtn(iOptInt);
            }
        } catch (Throwable th2) {
            o0.b(this.f33398b, "toggleCloseBtn", th2);
        }
    }

    @Override
    public void triggerCloseBtn(Object obj, String str) {
        if (this.f33406j != null) {
            com.mbridge.msdk.advanced.signal.a.a(obj);
            this.f33406j.triggerCloseBtn(obj, str);
        }
    }

    @Override
    public void unload() {
        close();
    }

    @Override
    public void useCustomClose(boolean z10) {
        try {
            if (this.f33404h == -1) {
                int i10 = z10 ? 2 : 1;
                com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
                if (aVar != null) {
                    aVar.toggleCloseBtn(i10);
                }
            }
        } catch (Throwable th2) {
            o0.b(this.f33398b, "useCustomClose", th2);
        }
    }

    public void a(int i10) {
        this.f33404h = i10;
    }

    public void a(com.mbridge.msdk.advanced.middle.a aVar) {
        if (aVar != null) {
            this.f33406j = aVar;
        }
    }

    public void a(List<CampaignEx> list) {
        this.f33400d = list;
    }

    public List<CampaignEx> a() {
        return this.f33400d;
    }

    @Override
    public void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int i10 = new JSONObject(str).getInt("countdown");
            com.mbridge.msdk.advanced.middle.a aVar = this.f33406j;
            if (aVar != null) {
                aVar.a(i10);
            }
        } catch (JSONException e10) {
            o0.b(this.f33398b, "resetCountdown", e10);
        }
    }
}

package com.mbridge.msdk.interstitial.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

public class a {

    private Context f35064a;

    private String f35065b;

    private String f35066c;

    private int f35067d;

    private boolean f35068e;

    private int f35069f;

    private String f35070g;

    private com.mbridge.msdk.interstitial.controller.a.b f35071h;

    private l f35072i;

    private Handler f35073j;

    class HandlerC0472a extends Handler {
        HandlerC0472a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            Object obj;
            Object obj2;
            try {
                int i10 = message.what;
                if (i10 != 3) {
                    if (i10 == 4 && a.this.f35071h != null && (obj2 = message.obj) != null && (obj2 instanceof String)) {
                        a.this.f35071h.a(a.this.f35068e, (String) obj2);
                    }
                } else if (a.this.f35071h != null && (obj = message.obj) != null && (obj instanceof String)) {
                    a.this.f35071h.b(a.this.f35068e, (String) obj);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class b extends com.mbridge.msdk.interstitial.request.b {
        b() {
        }

        @Override
        public void a(CampaignUnit campaignUnit) {
            try {
                a.this.a(campaignUnit);
            } catch (Exception e10) {
                e10.printStackTrace();
                a.this.b("can't show because unknow error");
                a.this.m();
            }
        }

        @Override
        public void b(int i10, String str) {
            o0.b("IntersAdapter", str);
            a.this.b(str);
            a.this.m();
        }
    }

    class c extends com.mbridge.msdk.foundation.same.c.a {

        final CampaignEx f35076a;

        final Context f35077b;

        c(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f35076a = campaignEx;
            this.f35077b = context;
        }

        @Override
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(str, cVar, this.f35076a, this.f35077b, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
    }

    class d implements Runnable {

        final List f35079a;

        final List f35080b;

        d(List list, List list2) {
            this.f35079a = list;
            this.f35080b = list2;
        }

        @Override
        public void run() {
            List list = this.f35079a;
            if (list == null || list.size() <= 0) {
                a.this.b("no ads available");
            } else {
                a aVar = a.this;
                aVar.a(aVar.f35065b, (List<CampaignEx>) a.this.a((List<CampaignEx>) this.f35079a));
                CampaignEx campaignEx = (CampaignEx) this.f35079a.get(0);
                a.this.c(campaignEx != null ? campaignEx.getRequestId() : "");
            }
            j.a(g.a(a.this.f35064a)).a();
            List list2 = this.f35080b;
            if (list2 == null || list2.size() <= 0) {
                return;
            }
            a.this.c((List<CampaignEx>) this.f35080b);
        }
    }

    public a(Context context, String str, String str2, String str3, boolean z10) {
        this.f35064a = context;
        this.f35065b = str;
        this.f35066c = str2;
        this.f35070g = str3;
        this.f35068e = z10;
        l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
        this.f35072i = lVarE;
        if (lVarE == null) {
            this.f35072i = l.h(this.f35065b);
        }
        i();
    }

    private int g() {
        try {
            Map<String, Integer> map = com.mbridge.msdk.interstitial.controller.a.f35087q;
            int iIntValue = (TextUtils.isEmpty(this.f35065b) || map == null || !map.containsKey(this.f35065b)) ? 1 : map.get(this.f35065b).intValue();
            if (iIntValue <= 0) {
                return 1;
            }
            return iIntValue;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 1;
        }
    }

    private String h() {
        try {
            if (!TextUtils.isEmpty(com.mbridge.msdk.interstitial.controller.a.f35085o)) {
                return com.mbridge.msdk.interstitial.controller.a.f35085o;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "";
    }

    private void i() {
        this.f35073j = new HandlerC0472a(Looper.getMainLooper());
    }

    private e l() {
        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
        String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.c.m().b() + com.mbridge.msdk.foundation.controller.c.m().c());
        int i10 = this.f35068e ? 3 : 2;
        this.f35069f = 1;
        if (this.f35072i.e() > 0) {
            this.f35069f = this.f35072i.e();
        }
        int iF = this.f35072i.f() > 0 ? this.f35072i.f() : 1;
        String strA = com.mbridge.msdk.foundation.same.buffer.b.a(this.f35065b, com.vungle.ads.internal.b.PLACEMENT_TYPE_INTERSTITIAL);
        this.f35067d = b();
        String strH = h();
        if (TextUtils.isEmpty(this.f35070g)) {
            this.f35070g = "0";
        }
        e eVar = new e();
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "app_id", strB);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PROPERTIES_UNIT_ID, this.f35065b);
        if (!TextUtils.isEmpty(this.f35066c)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PLACEMENT_ID, this.f35066c);
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, TmcConstants.EXTRA_APP_DEV_TOKEN, md5);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "category", this.f35070g);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "req_type", i10 + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_num", iF + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "tnum", this.f35069f + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, e.f34668g, strA);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, e.f34669h, c());
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_AD_SOURCE_ID, "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, e.f34670i, strH);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_type", "279");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "offset", this.f35067d + "");
        return eVar;
    }

    public void m() {
        try {
            if (TextUtils.isEmpty(this.f35065b)) {
                return;
            }
            com.mbridge.msdk.interstitial.controller.a.a(this.f35065b, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void n() {
        try {
            this.f35067d += this.f35069f;
            if (this.f35067d > g()) {
                this.f35067d = 0;
            }
            if (TextUtils.isEmpty(this.f35065b)) {
                return;
            }
            com.mbridge.msdk.interstitial.controller.a.a(this.f35065b, this.f35067d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean f() {
        return this.f35068e;
    }

    public void j() {
        if (this.f35064a == null) {
            b("context is null");
            return;
        }
        if (TextUtils.isEmpty(this.f35065b)) {
            b("unitid is null");
            return;
        }
        l lVar = this.f35072i;
        if (lVar == null) {
            b("unitSetting is null please call load");
            return;
        }
        if (lVar.f() <= 0) {
            b("controller don't request ad");
            return;
        }
        a();
        List<CampaignEx> listE = e();
        if (listE == null || listE.size() <= 0) {
            k();
        } else {
            CampaignEx campaignEx = listE.get(0);
            c(campaignEx != null ? campaignEx.getRequestId() : "");
        }
    }

    public void k() {
        try {
            if (this.f35064a == null) {
                b("context is null");
                return;
            }
            if (TextUtils.isEmpty(this.f35065b)) {
                b("unitid is null");
                return;
            }
            if (this.f35072i == null) {
                b("unitSetting is null please call load");
                return;
            }
            e eVarL = l();
            if (eVarL == null) {
                b("request parameter is null");
                return;
            }
            String strD = t0.d(this.f35065b);
            if (!TextUtils.isEmpty(strD)) {
                eVarL.a("j", strD);
            }
            com.mbridge.msdk.interstitial.request.a aVar = new com.mbridge.msdk.interstitial.request.a(this.f35064a);
            b bVar = new b();
            bVar.setUnitId(this.f35065b);
            bVar.setPlacementId(this.f35066c);
            bVar.setAdType(279);
            aVar.choiceV3OrV5BySetting(1, eVarL, bVar, "", 30000L);
        } catch (Exception e10) {
            e10.printStackTrace();
            b("can't show because unknow error");
            m();
        }
    }

    public void c(String str) {
        if (this.f35073j != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = str;
            messageObtain.what = 3;
            this.f35073j.sendMessage(messageObtain);
        }
    }

    private List<CampaignEx> e() {
        try {
            if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
                return com.mbridge.msdk.interstitial.cache.a.a().a(this.f35065b, 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public CampaignEx d() {
        try {
            if (TextUtils.isEmpty(this.f35065b)) {
                return null;
            }
            a();
            List<CampaignEx> listE = e();
            if (listE != null && listE.size() > 0) {
                for (int i10 = 0; i10 < listE.size(); i10++) {
                    CampaignEx campaignEx = listE.get(i10);
                    if (campaignEx != null && (!TextUtils.isEmpty(campaignEx.getHtmlUrl()) || !TextUtils.isEmpty(campaignEx.getMraid()))) {
                        return campaignEx;
                    }
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public void b(String str) {
        try {
            if (this.f35073j != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 4;
                this.f35073j.sendMessage(messageObtain);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(String str, List<CampaignEx> list) {
        if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
            com.mbridge.msdk.interstitial.cache.a.a().a(str, list);
        }
    }

    private String c() {
        String strA = "";
        try {
            JSONArray jSONArrayB = t0.b(this.f35064a, this.f35065b);
            if (jSONArrayB.length() > 0) {
                strA = t0.a(jSONArrayB);
            }
            o0.c("IntersAdapter", "get excludes:" + strA);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return strA;
    }

    private void a() {
        try {
            if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
                com.mbridge.msdk.setting.g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (gVarD == null) {
                    gVarD = h.b().a();
                }
                com.mbridge.msdk.interstitial.cache.a.a().a(gVarD.Z() * 1000, this.f35065b);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private List<CampaignEx> b(List<CampaignEx> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int iE = this.f35072i.e();
                    for (int i10 = 0; i10 < list.size() && i10 < this.f35069f && arrayList.size() < iE; i10++) {
                        CampaignEx campaignEx = list.get(i10);
                        int i11 = 1;
                        if ((campaignEx == null || campaignEx.getOfferType() != 1 || !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) && campaignEx != null && ((!TextUtils.isEmpty(campaignEx.getHtmlUrl()) || campaignEx.isMraid()) && campaignEx.getOfferType() != 99)) {
                            if (t0.c(campaignEx)) {
                                if (!t0.c(this.f35064a, campaignEx.getPackageName())) {
                                    i11 = 2;
                                }
                                campaignEx.setRtinsType(i11);
                            }
                            if (com.mbridge.msdk.foundation.same.c.b(this.f35064a, campaignEx)) {
                                arrayList.add(campaignEx);
                            } else {
                                t0.a(this.f35065b, campaignEx, com.mbridge.msdk.foundation.same.a.f34520x);
                            }
                            a(campaignEx, null, this.f35064a, null);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return arrayList;
    }

    public void c(List<CampaignEx> list) {
        if (this.f35064a == null || list == null || list.size() == 0) {
            return;
        }
        j jVarA = j.a(g.a(this.f35064a));
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = list.get(i10);
            if (campaignEx != null && jVarA != null && !jVarA.a(campaignEx.getId())) {
                com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                gVar.a(campaignEx.getId());
                gVar.b(campaignEx.getFca());
                gVar.c(campaignEx.getFcb());
                gVar.a(0);
                gVar.d(0);
                gVar.a(System.currentTimeMillis());
                jVarA.b(gVar);
            }
        }
    }

    public void a(com.mbridge.msdk.interstitial.controller.a.b bVar) {
        this.f35071h = bVar;
    }

    public void a(CampaignUnit campaignUnit) {
        if (campaignUnit != null && campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
            ArrayList<CampaignEx> ads = campaignUnit.getAds();
            List<CampaignEx> listB = b(ads);
            a(campaignUnit.getSessionId());
            n();
            a(ads, listB);
            return;
        }
        b("no server ads available");
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f35064a, cVar, new c(campaignEx, context, aVar));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(List<CampaignEx> list, List<CampaignEx> list2) {
        new Thread(new d(list2, list)).start();
    }

    private int b() {
        int i10 = 0;
        try {
            int iA = !TextUtils.isEmpty(this.f35065b) ? com.mbridge.msdk.interstitial.controller.a.a(this.f35065b) : 0;
            if (iA <= g()) {
                i10 = iA;
            }
            o0.c("IntersAdapter", "getCurrentOffset:" + i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return i10;
    }

    public List<CampaignEx> a(List<CampaignEx> list) throws Throwable {
        FileOutputStream fileOutputStream;
        ArrayList arrayList = new ArrayList(list.size());
        for (CampaignEx campaignEx : list) {
            if (campaignEx.isMraid() && !TextUtils.isEmpty(campaignEx.getMraid())) {
                com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx, "", this.f35065b, "5");
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                        String md5 = SameMD5.getMD5(z0.b(campaignEx.getMraid()));
                        if (TextUtils.isEmpty(md5)) {
                            md5 = String.valueOf(System.currentTimeMillis());
                        }
                        File file = new File(strB, md5.concat(".html"));
                        fileOutputStream = new FileOutputStream(file);
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            String strB2 = com.mbridge.msdk.setting.util.a.a().b();
                            if (!TextUtils.isEmpty(strB2)) {
                                sb2.append("<script>");
                                sb2.append(strB2);
                                sb2.append("</script>");
                            }
                            sb2.append(campaignEx.getMraid());
                            fileOutputStream.write(sb2.toString().getBytes());
                            fileOutputStream.flush();
                            campaignEx.setMraid(file.getAbsolutePath());
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, "", this.f35065b, "5");
                            try {
                                fileOutputStream.close();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } catch (Exception e11) {
                            e = e11;
                            fileOutputStream2 = fileOutputStream;
                            e.printStackTrace();
                            campaignEx.setMraid("");
                            com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e.getMessage(), this.f35065b, "5");
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception e12) {
                                    e12.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e13) {
                        e = e13;
                    }
                    File file2 = new File(campaignEx.getMraid());
                    if (!file2.exists() || !file2.isFile() || !file2.canRead()) {
                        b("mraid resource write fail");
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            }
            arrayList.add(campaignEx);
        }
        return arrayList;
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        o0.c("IntersAdapter", "onload sessionId:" + str);
        com.mbridge.msdk.interstitial.controller.a.f35085o = str;
    }
}

package com.mbridge.msdk.video.module.listener.impl;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.y0;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class k extends f {

    protected boolean f38628a;

    protected CampaignEx f38629b;

    protected List<CampaignEx> f38630c;

    protected boolean f38631d;

    protected com.mbridge.msdk.videocommon.download.a f38632e;

    protected com.mbridge.msdk.videocommon.entity.c f38633f;

    protected String f38634g;

    protected String f38635h;

    protected com.mbridge.msdk.video.module.listener.a f38636i;

    protected int f38637j;

    private boolean f38638k = false;

    private boolean f38639l = false;

    private boolean f38640m = false;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            try {
                k kVar = k.this;
                if (!kVar.f38628a || kVar.f38629b == null || !y0.b(kVar.f38634g) || com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                    return;
                }
                com.mbridge.msdk.foundation.db.i iVarA = com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
                fVar.a(System.currentTimeMillis());
                fVar.b(k.this.f38634g);
                fVar.a(k.this.f38629b.getId());
                iVarA.a(fVar);
            } catch (Throwable th2) {
                o0.b("NotifyListener", th2.getMessage(), th2);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            try {
                k kVar = k.this;
                if (kVar.f38628a && kVar.f38629b != null && y0.b(kVar.f38634g)) {
                    com.mbridge.msdk.videocommon.cache.a aVarA = com.mbridge.msdk.videocommon.cache.a.a();
                    k kVar2 = k.this;
                    aVarA.a(kVar2.f38629b, kVar2.f38634g);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
            try {
                com.mbridge.msdk.videocommon.cache.a aVarA2 = com.mbridge.msdk.videocommon.cache.a.a();
                k kVar3 = k.this;
                aVarA2.b(kVar3.f38635h, kVar3.f38629b.getAdType());
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            } catch (Throwable th2) {
                o0.a("NotifyListener", th2.getMessage());
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(k.this.f38629b.getId());
            } catch (Throwable th2) {
                o0.b("NotifyListener", th2.getMessage(), th2);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            com.mbridge.msdk.videocommon.download.a aVar;
            try {
                if (q0.a().a("c_r_v_f_w_s_e", false)) {
                    return;
                }
                k kVar = k.this;
                if (!kVar.f38628a || (aVar = kVar.f38632e) == null) {
                    return;
                }
                if (aVar.c() != null && !TextUtils.isEmpty(k.this.f38632e.c().getVideoUrlEncode())) {
                    com.mbridge.msdk.foundation.db.m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(k.this.f38632e.c().getVideoUrlEncode());
                }
                if (TextUtils.isEmpty(k.this.f38632e.k())) {
                    return;
                }
                File file = new File(k.this.f38632e.k());
                if (file.exists() && file.isFile() && file.delete()) {
                    o0.a("NotifyListener", "DEL File :" + file.getAbsolutePath());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public k(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        this.f38631d = false;
        this.f38636i = new f();
        this.f38637j = 1;
        if (!z10 && campaignEx != null && y0.b(str2) && aVar != null && aVar2 != null) {
            this.f38629b = campaignEx;
            this.f38635h = str;
            this.f38634g = str2;
            this.f38632e = aVar;
            this.f38633f = cVar;
            this.f38636i = aVar2;
            this.f38628a = true;
            this.f38637j = i10;
            this.f38631d = false;
            return;
        }
        if (!z10 || campaignEx == null || !y0.b(str2) || aVar2 == null) {
            return;
        }
        this.f38629b = campaignEx;
        this.f38635h = str;
        this.f38634g = str2;
        this.f38632e = aVar;
        this.f38633f = cVar;
        this.f38636i = aVar2;
        this.f38628a = true;
        this.f38637j = i10;
        this.f38631d = true;
    }

    private void d() {
        if (!this.f38628a || com.mbridge.msdk.foundation.same.buffer.b.f34538k == null || TextUtils.isEmpty(this.f38629b.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f38634g, this.f38629b, "reward");
    }

    private void f() {
        if (this.f38629b != null) {
            try {
                HashMap map = new HashMap();
                List<com.mbridge.msdk.foundation.entity.d> listA = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f38629b.getCampaignUnitId(), this.f38629b.getRequestId());
                if (listA == null || listA.size() <= 0 || listA.get(0) == null) {
                    return;
                }
                if (listA.get(0).c() == 1) {
                    map.put("encrypt_p=", "encrypt_p=" + listA.get(0).b());
                    map.put("irlfa=", "irlfa=1");
                    for (Map.Entry entry : map.entrySet()) {
                        String str = (String) entry.getKey();
                        String str2 = (String) entry.getValue();
                        CampaignEx campaignEx = this.f38629b;
                        campaignEx.setImpressionURL(campaignEx.getImpressionURL().replaceAll(str, str2));
                        CampaignEx campaignEx2 = this.f38629b;
                        campaignEx2.setOnlyImpressionURL(campaignEx2.getOnlyImpressionURL().replaceAll(str, str2));
                    }
                }
                o0.a("BidReplaceCampignDao", "removeReplace count " + com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f38629b.getRequestId()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void m() {
        new Thread(new c()).start();
    }

    public void a(CampaignEx campaignEx) {
        this.f38629b = campaignEx;
    }

    public void b(int i10) {
        if (this.f38629b != null) {
            if (i10 == 1 || i10 == 2) {
                com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38629b, i10, this.f38637j);
            }
        }
    }

    public void c() {
        a aVar = new a();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
    }

    protected void e() {
        d dVar = new d();
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(dVar);
        } else {
            dVar.run();
        }
    }

    public void g() {
        if (!this.f38628a || this.f38629b == null) {
            return;
        }
        com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m("2000061", this.f38629b.getId(), this.f38629b.getRequestId(), this.f38629b.getRequestIdNotice(), this.f38634g, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
        mVar.b(this.f38629b.isMraid() ? com.mbridge.msdk.foundation.entity.m.N : com.mbridge.msdk.foundation.entity.m.O);
        com.mbridge.msdk.foundation.same.report.g.b(mVar, com.mbridge.msdk.foundation.controller.c.m().d(), this.f38634g);
    }

    protected void h() {
        String str;
        try {
            if (!this.f38628a || this.f38638k || TextUtils.isEmpty(this.f38629b.getImpressionURL())) {
                return;
            }
            this.f38638k = true;
            if (this.f38629b.isBidCampaign()) {
                f();
            }
            String impressionURL = this.f38629b.getImpressionURL();
            if (this.f38629b.getSpareOfferFlag() == 1) {
                str = impressionURL + "&to=1&cbt=" + this.f38629b.getCbt() + "&tmorl=" + this.f38637j;
            } else {
                str = impressionURL + "&to=0&cbt=" + this.f38629b.getCbt() + "&tmorl=" + this.f38637j;
            }
            com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38629b, this.f38634g, str, false, true, com.mbridge.msdk.click.retry.a.f33586m);
            com.mbridge.msdk.video.module.report.b.d(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38629b);
            m();
            d();
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage(), th2);
        }
    }

    protected void i() {
        CampaignEx campaignEx;
        Map<String, Long> map;
        String str;
        try {
            CampaignEx campaignEx2 = this.f38629b;
            if (campaignEx2 != null && campaignEx2.isDynamicView() && this.f38631d && !this.f38629b.isCampaignIsFiltered()) {
                this.f38639l = true;
                return;
            }
            if (!this.f38628a || (campaignEx = this.f38629b) == null || TextUtils.isEmpty(campaignEx.getOnlyImpressionURL()) || (map = com.mbridge.msdk.foundation.same.buffer.b.f34539l) == null || map.containsKey(this.f38629b.getOnlyImpressionURL()) || this.f38639l) {
                return;
            }
            com.mbridge.msdk.foundation.same.buffer.b.f34539l.put(this.f38629b.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
            String onlyImpressionURL = this.f38629b.getOnlyImpressionURL();
            if (this.f38629b.getSpareOfferFlag() == 1) {
                str = onlyImpressionURL + "&to=1&cbt=" + this.f38629b.getCbt() + "&tmorl=" + this.f38637j;
            } else {
                str = onlyImpressionURL + "&to=0&cbt=" + this.f38629b.getCbt() + "&tmorl=" + this.f38637j;
            }
            String str2 = str;
            if (!this.f38631d || this.f38629b.isCampaignIsFiltered()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38629b, this.f38634g, str2, false, true, com.mbridge.msdk.click.retry.a.f33587n);
                b();
            }
            this.f38639l = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    protected void j() {
        CampaignEx campaignEx;
        List<String> pv_urls;
        try {
            if (!this.f38628a || this.f38640m || (campaignEx = this.f38629b) == null) {
                return;
            }
            this.f38640m = true;
            if ((campaignEx.isDynamicView() && this.f38631d && !this.f38629b.isCampaignIsFiltered()) || (pv_urls = this.f38629b.getPv_urls()) == null || pv_urls.size() <= 0) {
                return;
            }
            Iterator<String> it = pv_urls.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38629b, this.f38634g, it.next(), false, true);
            }
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage());
        }
    }

    protected void k() {
        CampaignEx campaignEx = this.f38629b;
        if (campaignEx == null || TextUtils.isEmpty(campaignEx.getCampaignUnitId()) || this.f38629b.getNativeVideoTracking() == null || this.f38629b.getNativeVideoTracking().i() == null) {
            return;
        }
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        CampaignEx campaignEx2 = this.f38629b;
        com.mbridge.msdk.click.a.a(contextD, campaignEx2, campaignEx2.getCampaignUnitId(), this.f38629b.getNativeVideoTracking().i(), false, false);
    }

    protected void l() {
        com.mbridge.msdk.videocommon.download.a aVar = this.f38632e;
        if (aVar != null) {
            aVar.d(true);
        }
    }

    public void a(List<CampaignEx> list) {
        this.f38630c = list;
    }

    @Override
    public void a(int i10, Object obj) {
        super.a(i10, obj);
        this.f38636i.a(i10, obj);
    }

    public void b() {
        try {
            b bVar = new b();
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(bVar);
            } else {
                bVar.run();
            }
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage(), th2);
        }
    }

    public void a(int i10, String str) {
        if (this.f38629b != null) {
            com.mbridge.msdk.foundation.same.report.g.c(new com.mbridge.msdk.foundation.entity.m("2000062", this.f38629b.getId(), this.f38629b.getRequestId(), this.f38629b.getRequestIdNotice(), this.f38634g, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()), i10, str), com.mbridge.msdk.foundation.controller.c.m().d(), this.f38634g);
        }
    }

    protected void b(String str) {
        try {
            if (this.f38629b != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("url", this.f38629b.getVideoUrlEncode());
                eVar.a("reason", str);
                String noticeUrl = this.f38629b.getNoticeUrl();
                String clickURL = this.f38629b.getClickURL();
                if (TextUtils.isEmpty(noticeUrl)) {
                    if (!TextUtils.isEmpty(clickURL)) {
                        eVar.a("offer_url", clickURL);
                    }
                } else {
                    eVar.a("offer_url", noticeUrl);
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000021", this.f38629b, eVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10) {
        CampaignEx campaignEx = this.f38629b;
        if (campaignEx != null) {
            String noticeUrl = campaignEx.getNoticeUrl();
            if (TextUtils.isEmpty(noticeUrl)) {
                return;
            }
            if (i10 == 1 || i10 == 2) {
                if (!noticeUrl.contains("endscreen_type")) {
                    StringBuilder sb2 = new StringBuilder(noticeUrl);
                    if (noticeUrl.contains(UrlUtils.QUESTION_MARK)) {
                        sb2.append("&endscreen_type=");
                        sb2.append(i10);
                    } else {
                        sb2.append("?endscreen_type=");
                        sb2.append(i10);
                    }
                    noticeUrl = sb2.toString();
                } else if (i10 == 2) {
                    if (noticeUrl.contains("endscreen_type=1")) {
                        noticeUrl = noticeUrl.replace("endscreen_type=1", "endscreen_type=2");
                    }
                } else if (noticeUrl.contains("endscreen_type=2")) {
                    noticeUrl = noticeUrl.replace("endscreen_type=2", "endscreen_type=1");
                }
                this.f38629b.setNoticeUrl(noticeUrl);
            }
        }
    }

    protected void a() {
        com.mbridge.msdk.videocommon.download.b.getInstance().a(false);
    }

    protected void a(String str) {
        List<CampaignEx> list;
        if (this.f38629b == null || (list = this.f38630c) == null || list.size() == 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("camp_position")) {
                this.f38629b = this.f38630c.get(jSONObject.getInt("camp_position"));
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("NotifyListener", e10.getMessage());
            }
        }
    }
}

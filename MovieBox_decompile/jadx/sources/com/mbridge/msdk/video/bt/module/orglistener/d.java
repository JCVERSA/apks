package com.mbridge.msdk.video.bt.module.orglistener;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public class d extends b {

    private h f38121c;

    private com.mbridge.msdk.videocommon.setting.c f38122d;

    private String f38123e;

    private String f38124f;

    private boolean f38125g;

    private Context f38126h;

    private boolean f38127i = false;

    private boolean f38128j = false;

    private boolean f38129k = false;

    public d(Context context, boolean z10, com.mbridge.msdk.videocommon.setting.c cVar, CampaignEx campaignEx, h hVar, String str, String str2) {
        this.f38121c = hVar;
        this.f38122d = cVar;
        this.f38123e = str2;
        this.f38124f = str;
        this.f38125g = z10;
        this.f38126h = context;
        a(cVar, campaignEx);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    private void a(com.mbridge.msdk.videocommon.setting.c cVar, CampaignEx campaignEx) {
        long jA0;
        try {
            String strB = com.mbridge.msdk.foundation.controller.c.m().b();
            if (TextUtils.isEmpty(strB)) {
                jA0 = 0;
            } else {
                com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(strB);
                if (gVarD == null) {
                    gVarD = com.mbridge.msdk.setting.h.b().a();
                }
                if (gVarD != null) {
                    jA0 = gVarD.a0() * 1000;
                } else {
                    jA0 = 0;
                }
            }
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            long jE = aVarC != null ? aVarC.e() : 0L;
            if (campaignEx != null) {
                if (!campaignEx.isSpareOffer(jE, jA0)) {
                    campaignEx.setSpareOfferFlag(0);
                    campaignEx.setCbt(0);
                    return;
                }
                campaignEx.setSpareOfferFlag(1);
                if (cVar.A() == 1) {
                    campaignEx.setCbt(1);
                } else {
                    campaignEx.setCbt(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public void b(String str, String str2) {
        super.b(str, str2);
        h hVar = this.f38121c;
        if (hVar != null) {
            hVar.b(str, str2);
            this.f38121c.a(5, str, str2);
        }
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        super.a(cVar);
        if (this.f38121c == null || this.f38127i) {
            return;
        }
        this.f38127i = true;
        b();
        this.f38121c.a(cVar);
        this.f38121c.a(2, this.f38124f, this.f38123e);
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        super.a(cVar, z10, cVar2);
        h hVar = this.f38121c;
        if (hVar == null || this.f38129k) {
            return;
        }
        this.f38129k = true;
        hVar.a(7, this.f38124f, this.f38123e);
        this.f38121c.a(cVar, z10, cVar2);
    }

    @Override
    public void a(boolean z10, int i10) {
        super.a(z10, i10);
        h hVar = this.f38121c;
        if (hVar == null || this.f38129k) {
            return;
        }
        hVar.a(z10, i10);
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        super.a(cVar, str);
        if (this.f38121c == null || this.f38128j) {
            return;
        }
        this.f38128j = true;
        a();
        this.f38121c.a(cVar, str);
        this.f38121c.a(4, this.f38124f, this.f38123e);
    }

    @Override
    public void a(boolean z10, String str, String str2) {
        super.a(z10, str, str2);
        h hVar = this.f38121c;
        if (hVar != null) {
            hVar.a(z10, str, str2);
        }
    }

    @Override
    public void a(String str, String str2) {
        super.a(str, str2);
        h hVar = this.f38121c;
        if (hVar != null) {
            hVar.a(str, str2);
            this.f38121c.a(6, str, str2);
        }
    }
}

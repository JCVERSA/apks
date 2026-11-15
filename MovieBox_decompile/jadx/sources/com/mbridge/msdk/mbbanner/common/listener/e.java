package com.mbridge.msdk.mbbanner.common.listener;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.setting.l;
import java.util.List;

public class e implements c {

    private c f35220a;

    private l f35221b;

    public e(c cVar, l lVar) {
        this.f35221b = lVar;
        this.f35220a = cVar;
    }

    @Override
    public void a(List<CampaignEx> list) {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.a(list);
        }
    }

    @Override
    public void b() {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override
    public void c() {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.c();
        }
    }

    @Override
    public void d() {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.d();
        }
    }

    @Override
    public void onLeaveApp() {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.onLeaveApp();
        }
    }

    @Override
    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.a(bVar);
        }
    }

    @Override
    public void a() {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override
    public void a(CampaignEx campaignEx) {
        c cVar = this.f35220a;
        if (cVar != null) {
            cVar.a(campaignEx);
        }
    }
}

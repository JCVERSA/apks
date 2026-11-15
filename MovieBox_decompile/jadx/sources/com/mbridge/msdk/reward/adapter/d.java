package com.mbridge.msdk.reward.adapter;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.CopyOnWriteArrayList;

public class d {

    private CopyOnWriteArrayList<CampaignEx> f36217a;

    private CampaignEx f36218b;

    private boolean f36219c = false;

    private int f36220d = 0;

    private int f36221e = 0;

    private int f36222f = 0;

    private int f36223g = 0;

    private int f36224h = 0;

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f36217a = copyOnWriteArrayList;
    }

    public CopyOnWriteArrayList<CampaignEx> b() {
        return this.f36217a;
    }

    public int c() {
        return this.f36223g;
    }

    public int d() {
        return this.f36222f;
    }

    public boolean e() {
        return this.f36219c;
    }

    public void a(boolean z10) {
        this.f36219c = z10;
    }

    public void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.f36218b = campaignEx;
            this.f36220d = campaignEx.getSecondRequestIndex();
            this.f36221e = campaignEx.getSecondShowIndex();
            this.f36222f = campaignEx.getFilterCallBackState();
            this.f36224h = campaignEx.getFilterAdsShowCallState();
            this.f36223g = campaignEx.getFilterAdsVideoCallState();
        }
    }

    public boolean a() {
        return this.f36220d == 1 && this.f36219c;
    }
}

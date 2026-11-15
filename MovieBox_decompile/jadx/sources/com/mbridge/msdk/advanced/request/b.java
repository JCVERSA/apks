package com.mbridge.msdk.advanced.request;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;

public abstract class b extends d {

    private int f33372d;

    public b(int i10) {
        this.f33372d = i10;
    }

    public abstract void a(CampaignUnit campaignUnit, int i10);

    @Override
    public void a(List<Frame> list) {
    }

    public abstract void b(int i10, String str);

    @Override
    public void a(List<g> list, CampaignUnit campaignUnit) {
        a(campaignUnit, this.f33372d);
    }

    @Override
    public void a(int i10, String str) {
        b(i10, str);
    }
}

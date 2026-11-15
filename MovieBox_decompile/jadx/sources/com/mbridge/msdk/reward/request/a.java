package com.mbridge.msdk.reward.request;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;

public abstract class a extends c {
    public abstract void a(CampaignUnit campaignUnit);

    @Override
    public void a(List<Frame> list) {
    }

    public abstract void b(int i10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar);

    @Override
    public void a(List<g> list, CampaignUnit campaignUnit) {
        a(campaignUnit);
    }

    @Override
    public void a(int i10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        b(i10, str, cVar);
    }
}

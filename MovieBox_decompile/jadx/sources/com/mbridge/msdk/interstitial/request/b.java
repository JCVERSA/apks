package com.mbridge.msdk.interstitial.request;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;

public abstract class b extends c {
    public abstract void a(CampaignUnit campaignUnit);

    @Override
    public void a(List<Frame> list) {
    }

    public abstract void b(int i10, String str);

    @Override
    public void a(List<g> list, CampaignUnit campaignUnit) {
        a(campaignUnit);
    }

    @Override
    public void a(int i10, String str) {
        b(i10, str);
    }
}

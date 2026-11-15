package com.mbridge.msdk.dycreator.viewdata;

import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public class a implements com.mbridge.msdk.dycreator.viewdata.base.a {

    private DyOption f34067a;

    private CampaignEx f34068b;

    public a(DyOption dyOption) {
        this.f34067a = dyOption;
        this.f34068b = dyOption.getCampaignEx();
    }

    @Override
    public CampaignEx getBindData() {
        return this.f34068b;
    }

    @Override
    public DyOption getEffectData() {
        return this.f34067a;
    }
}

package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTClientBidding;

class Zq implements TTClientBidding {
    private final Dq Sj;

    Zq(Context context, com.bytedance.sdk.openadsdk.core.model.Sj sj2, AdSlot adSlot) {
        this.Sj = new Dq(context, sj2, adSlot);
    }

    public Dq Sj() {
        return this.Sj;
    }

    @Override
    public void loss(Double d10, String str, String str2) {
        this.Sj.loss(d10, str, str2);
    }

    public void sP() {
        this.Sj.Sj();
    }

    @Override
    public void win(Double d10) {
        this.Sj.win(d10);
    }
}

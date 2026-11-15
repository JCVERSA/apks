package com.transsion.rewardscenter.task.ad;

import android.content.Context;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class d0 extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override
    public boolean A() {
        return false;
    }

    @Override
    public Integer c() {
        return null;
    }

    @Override
    public Integer h() {
        return null;
    }

    @Override
    public Integer i() {
        return null;
    }

    @Override
    public Integer l() {
        return null;
    }

    @Override
    public Integer m() {
        return null;
    }

    @Override
    public Integer s() {
        return Integer.valueOf(R$id.ad_icon);
    }

    @Override
    public int t() {
        return R$layout.stage_task_native_ad_layout;
    }

    @Override
    public Integer v() {
        return null;
    }

    @Override
    public Integer z() {
        return Integer.valueOf(R$id.ad_title);
    }
}

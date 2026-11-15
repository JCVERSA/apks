package com.transsion.ad.test.ad_example;

import android.content.Context;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class s extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override
    public Integer c() {
        return Integer.valueOf(R$id.adChoicesView);
    }

    @Override
    public Integer h() {
        return Integer.valueOf(R$id.store_mark_view);
    }

    @Override
    public Integer i() {
        return Integer.valueOf(R$id.adIcon);
    }

    @Override
    public Integer l() {
        return Integer.valueOf(R$id.call_to_action);
    }

    @Override
    public Integer m() {
        return Integer.valueOf(R$id.native_ad_body);
    }

    @Override
    public Integer s() {
        return Integer.valueOf(R$id.native_ad_icon);
    }

    @Override
    public int t() {
        return R$layout.test_ad_native_layout;
    }

    @Override
    public Integer v() {
        return Integer.valueOf(R$id.coverview);
    }

    @Override
    public Integer z() {
        return Integer.valueOf(R$id.native_ad_title);
    }
}

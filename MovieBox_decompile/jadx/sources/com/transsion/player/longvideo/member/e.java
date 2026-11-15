package com.transsion.player.longvideo.member;

import android.content.Context;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class e extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context) {
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
    public Integer k() {
        return Integer.valueOf(R$id.ivBurlBgView);
    }

    @Override
    public Integer l() {
        return null;
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
        return R$layout.resolution_ad_native_layout;
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

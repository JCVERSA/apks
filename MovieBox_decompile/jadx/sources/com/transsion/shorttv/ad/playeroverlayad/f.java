package com.transsion.shorttv.ad.playeroverlayad;

import android.content.Context;
import com.transsion.ad.bidding.base.r;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class f extends r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override
    public Integer c() {
        return Integer.valueOf(R$id.ad_choices_view);
    }

    @Override
    public Integer h() {
        return Integer.valueOf(R$id.store_mark_view);
    }

    @Override
    public Integer i() {
        return Integer.valueOf(R$id.ad_tag_view);
    }

    @Override
    public Integer k() {
        return Integer.valueOf(R$id.ad_blur_view);
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
        return null;
    }

    @Override
    public int t() {
        return R$layout.shorttv_player_ad_overlay_layout;
    }

    @Override
    public Integer v() {
        return Integer.valueOf(R$id.ad_media_view);
    }

    @Override
    public Integer z() {
        return null;
    }
}

package ow;

import android.content.Context;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class k extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Context context) {
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
        return R$layout.native_home_video_tab_page_layout;
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

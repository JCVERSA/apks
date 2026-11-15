package ow;

import android.content.Context;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class l extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override
    public Integer c() {
        return Integer.valueOf(R$id.native_ad_choices);
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
        return Integer.valueOf(R$id.native_ad_action);
    }

    @Override
    public Integer m() {
        return Integer.valueOf(R$id.native_ad_des);
    }

    @Override
    public Integer s() {
        return Integer.valueOf(R$id.native_ad_icon);
    }

    @Override
    public int t() {
        return R$layout.native_download_intercept_native_dialog_ad_layout;
    }

    @Override
    public Integer v() {
        return Integer.valueOf(R$id.native_ad_media);
    }

    @Override
    public Integer z() {
        return Integer.valueOf(R$id.native_ad_title);
    }
}

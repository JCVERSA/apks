package ow;

import android.content.Context;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class m extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override
    public Integer c() {
        return Integer.valueOf(R$id.adChoicesView);
    }

    @Override
    public Integer h() {
        return null;
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
        return null;
    }

    @Override
    public Integer s() {
        return null;
    }

    @Override
    public int t() {
        return R$layout.native_local_video_land_native_layout;
    }

    @Override
    public Integer v() {
        return Integer.valueOf(R$id.native_ad_media);
    }

    @Override
    public Integer z() {
        return null;
    }
}

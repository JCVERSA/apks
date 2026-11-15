package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class f extends BaseItemProvider {

    private final int f51115e = R$layout.short_tv_item_immersion_ad;

    @Override
    public int l() {
        return 2;
    }

    @Override
    public int m() {
        return this.f51115e;
    }

    @Override
    public void b(BaseViewHolder helper, nr.k item) {
        NativeWrapperAdView nativeWrapperAdView;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (!(item instanceof nr.c) || (nativeWrapperAdView = (NativeWrapperAdView) helper.getViewOrNull(R$id.flRoot)) == null) {
            return;
        }
        yq.b bVar = yq.b.f76391a;
        Context contextK = k();
        nr.c cVar = (nr.c) item;
        BiddingNativeManager biddingNativeManagerA = cVar.a();
        com.transsion.ad.bidding.base.r rVarA = bVar.a(contextK, biddingNativeManagerA != null ? biddingNativeManagerA.getMSceneId() : null);
        BiddingNativeManager biddingNativeManagerA2 = cVar.a();
        BiddingNativeManager biddingNativeManagerA3 = cVar.a();
        nativeWrapperAdView.bindNativeView(biddingNativeManagerA2, rVarA, biddingNativeManagerA3 != null ? biddingNativeManagerA3.k0() : null);
    }
}

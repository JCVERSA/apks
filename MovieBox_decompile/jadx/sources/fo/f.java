package fo;

import android.content.Context;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class f extends BaseItemProvider {
    @Override
    public int l() {
        return MediaType.POST_DETAIL_FOR_YOU_NATIVE_AD.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_provider_recommend_ad_layout;
    }

    @Override
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ow.b bVar = ow.b.f68937a;
        Context contextK = k();
        BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
        com.transsion.ad.bidding.base.r rVarA = bVar.a(contextK, nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null);
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) helper.getViewOrNull(R$id.tAdNativeView);
        if (nativeWrapperAdView != null) {
            BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
            BiddingNativeManager nonAdDelegate3 = item.getNonAdDelegate();
            nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVarA, nonAdDelegate3 != null ? nonAdDelegate3.k0() : null);
        }
    }
}

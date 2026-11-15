package fo;

import android.content.Context;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class x extends BaseItemProvider {

    private final int f60274e = 2;

    private final int f60275f = R$layout.item_immersion_ad;

    @Override
    public int l() {
        return this.f60274e;
    }

    @Override
    public int m() {
        return this.f60275f;
    }

    @Override
    public void b(BaseViewHolder holder, Subject item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ow.b bVar = ow.b.f68937a;
        Context contextK = k();
        BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
        com.transsion.ad.bidding.base.r rVarA = bVar.a(contextK, nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null);
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) holder.getViewOrNull(R$id.flRoot);
        if (nativeWrapperAdView != null) {
            BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
            BiddingNativeManager nonAdDelegate3 = item.getNonAdDelegate();
            nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVarA, nonAdDelegate3 != null ? nonAdDelegate3.k0() : null);
        }
    }
}

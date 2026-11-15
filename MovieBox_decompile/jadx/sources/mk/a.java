package mk;

import android.widget.FrameLayout;
import androidx.constraintlayout.widget.Group;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.UGCFilterVideoItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a extends BaseItemProvider {

    public static final C0815a f66481h = new C0815a(null);

    public static final int f66482i = 8;

    private final rk.b f66483e;

    private final int f66484f = 4;

    private final int f66485g = R$layout.ugc_item_filter_source;

    public static final class C0815a {
        public C0815a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0815a() {
        }
    }

    public a(rk.b bVar) {
        this.f66483e = bVar;
    }

    @Override
    public int l() {
        return this.f66484f;
    }

    @Override
    public int m() {
        return this.f66485g;
    }

    @Override
    public void v(BaseViewHolder viewHolder, int i10) {
        Intrinsics.h(viewHolder, "viewHolder");
        super.v(viewHolder, i10);
    }

    @Override
    public void b(BaseViewHolder holder, UGCFilterVideoItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
        if (nonAdDelegate == null) {
            FrameLayout frameLayout = (FrameLayout) holder.getViewOrNull(R$id.nativeView);
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
            Group group = (Group) holder.getViewOrNull(R$id.group);
            if (group != null) {
                group.setVisibility(0);
                return;
            }
            return;
        }
        r rVarA = ow.b.f68937a.a(k(), nonAdDelegate.getMSceneId());
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) holder.getViewOrNull(R$id.nativeView);
        if (nativeWrapperAdView != null) {
            BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
            nativeWrapperAdView.bindNativeView(nonAdDelegate, rVarA, nonAdDelegate2 != null ? nonAdDelegate2.k0() : null);
        }
        FrameLayout frameLayout2 = (FrameLayout) holder.getViewOrNull(R$id.nativeView);
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(0);
        }
        Group group2 = (Group) holder.getViewOrNull(R$id.group);
        if (group2 != null) {
            group2.setVisibility(8);
        }
    }
}

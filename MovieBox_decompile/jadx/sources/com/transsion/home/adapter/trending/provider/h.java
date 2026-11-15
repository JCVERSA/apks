package com.transsion.home.adapter.trending.provider;

import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.NoNetworkSmallView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class h extends BaseItemProvider {
    public static final Unit B(h hVar) {
        Function0<Unit> function0R1;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = hVar.g();
        if ((baseProviderMultiAdapterG instanceof com.transsion.home.adapter.trending.b) && (function0R1 = ((com.transsion.home.adapter.trending.b) baseProviderMultiAdapterG).R1()) != null) {
            function0R1.invoke();
        }
        com.tn.lib.view.o.b(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()));
        return Unit.f64096a;
    }

    public static final Unit C() {
        com.tn.lib.view.o.c(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()));
        return Unit.f64096a;
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        NoNetworkSmallView noNetworkSmallView = (NoNetworkSmallView) helper.getViewOrNull(R$id.no_network);
        if (noNetworkSmallView != null) {
            noNetworkSmallView.retry(new Function0() {
                @Override
                public final Object invoke() {
                    return h.B(this.f43579a);
                }
            });
            noNetworkSmallView.goToSetting(new Function0() {
                @Override
                public final Object invoke() {
                    return h.C();
                }
            });
        }
        com.tn.lib.view.o.a(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()));
    }

    @Override
    public int l() {
        return PostItemType.NO_NETWORK.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_no_network;
    }
}

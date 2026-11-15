package com.transsion.home.adapter.operateUGC.provider;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.jvm.internal.Intrinsics;

public final class c0 extends BaseItemProvider {
    @Override
    public int l() {
        return PostItemType.TRENDING_MARGIN.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_trending_margin;
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.itemView.setTag("TrendingMargin");
    }
}

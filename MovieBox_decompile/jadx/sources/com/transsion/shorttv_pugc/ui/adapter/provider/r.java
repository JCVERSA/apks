package com.transsion.shorttv_pugc.ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import kotlin.jvm.internal.Intrinsics;

public final class r extends BaseItemProvider {

    private final String f52083e;

    private final boolean f52084f;

    public r(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f52083e = pageName;
        this.f52084f = z10;
    }

    @Override
    public int l() {
        return ShortTvItemType.TRENDING.ordinal();
    }

    @Override
    public int m() {
        return R$layout.pugc_short_tv_item_trending;
    }

    @Override
    public void b(BaseViewHolder holder, OperateItem data) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(data, "data");
    }
}

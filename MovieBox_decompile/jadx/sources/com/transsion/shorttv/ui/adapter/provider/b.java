package com.transsion.shorttv.ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class b extends BaseItemProvider {
    @Override
    public int l() {
        return -1;
    }

    @Override
    public int m() {
        return R$layout.layout_view_container;
    }

    @Override
    public void b(BaseViewHolder helper, bs.a item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}

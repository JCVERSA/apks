package com.transsion.search_pugc.fragment.result.provider;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.SearchType;
import kotlin.jvm.internal.Intrinsics;

public final class l extends BaseItemProvider {
    @Override
    public int l() {
        return SearchType.UNKNOW.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_result_unkown;
    }

    @Override
    public void b(BaseViewHolder helper, SearchResultItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}

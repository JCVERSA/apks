package com.transsion.search.fragment.values.adapter;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.SearchValuesRelatedCollectionEntity;
import kotlin.jvm.internal.Intrinsics;

public final class d extends BaseItemProvider {
    @Override
    public int l() {
        return 0;
    }

    @Override
    public int m() {
        return R$layout.item_search_values_title_layout;
    }

    @Override
    public void b(BaseViewHolder helper, SearchValuesRelatedCollectionEntity item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.setText(R$id.tvTopTitle, item.getTitle());
    }
}

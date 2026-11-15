package com.transsion.shorttv.ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.ShortTvItemType;
import kotlin.jvm.internal.Intrinsics;

public final class v extends BaseItemProvider {
    @Override
    public int l() {
        return ShortTvItemType.TRENDING_TITLE.ordinal();
    }

    @Override
    public int m() {
        return R$layout.short_tv_item_trending_title;
    }

    @Override
    public void b(BaseViewHolder holder, OperateItem data) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(data, "data");
        holder.itemView.setTag("TrendingTitle");
        holder.setText(R$id.sub_operation_title_text, data.getTitle());
    }
}

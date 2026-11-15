package com.transsion.rewardscenter.redeem;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class i extends BaseItemProvider {
    @Override
    public int l() {
        return 0;
    }

    @Override
    public int m() {
        return R$layout.redeem_title_item;
    }

    @Override
    public void b(BaseViewHolder helper, e item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof e.c) {
            helper.setText(R$id.tv_title, ((e.c) item).a());
        }
    }
}

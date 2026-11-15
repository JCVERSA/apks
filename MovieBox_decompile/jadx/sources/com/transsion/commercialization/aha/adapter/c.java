package com.transsion.commercialization.aha.adapter;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.bean.AhaGameAllGames;
import com.transsion.bean.GameLayoutType;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class c extends BaseItemProvider {

    private final int f42574e = GameLayoutType.ITEM_TITLE.ordinal();

    @Override
    public int l() {
        return this.f42574e;
    }

    @Override
    public int m() {
        return R$layout.item_aha_game_title;
    }

    @Override
    public void b(BaseViewHolder helper, AhaGameAllGames item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.setText(R$id.tv_title, item.getTitle());
    }
}

package com.transsion.usercenter.setting.adapter;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class h extends BaseItemProvider {
    @Override
    public int l() {
        return 2;
    }

    @Override
    public int m() {
        return R$layout.user_item_title_setting;
    }

    @Override
    public void b(BaseViewHolder helper, jv.b item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TnTextView) helper.getView(R$id.tvTitle)).setTextById(item.i());
    }
}

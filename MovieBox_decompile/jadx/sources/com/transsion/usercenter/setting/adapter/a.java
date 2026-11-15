package com.transsion.usercenter.setting.adapter;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.usercenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class a extends BaseItemProvider {

    private final int f55228e = 1;

    private final int f55229f = R$layout.dialog_locale_language_item_auto;

    @Override
    public int l() {
        return this.f55228e;
    }

    @Override
    public int m() {
        return this.f55229f;
    }

    @Override
    public void b(BaseViewHolder holder, jv.a item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
    }
}

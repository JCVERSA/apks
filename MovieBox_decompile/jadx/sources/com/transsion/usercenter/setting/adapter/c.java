package com.transsion.usercenter.setting.adapter;

import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class c extends BaseItemProvider {

    private final int f55230e = 2;

    private final int f55231f = R$layout.dialog_locale_language_item;

    @Override
    public int l() {
        return this.f55230e;
    }

    @Override
    public int m() {
        return this.f55231f;
    }

    @Override
    public void b(BaseViewHolder holder, jv.a item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((TextView) holder.getView(R$id.tv_language)).setText(item.a());
    }
}

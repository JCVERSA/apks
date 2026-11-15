package com.transsion.rewardscenter.task.ad;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

public final class s extends BaseItemProvider {

    private final int f49119e = AdTaskType.TITLE.getValue();

    private final int f49120f = R$layout.member_task_title_item;

    @Override
    public int l() {
        return this.f49119e;
    }

    @Override
    public int m() {
        return this.f49120f;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(m(), parent, false);
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }

    @Override
    public void b(BaseViewHolder helper, v item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}

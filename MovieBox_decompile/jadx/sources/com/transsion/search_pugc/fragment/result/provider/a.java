package com.transsion.search_pugc.fragment.result.provider;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.constant.ResultCollectItemWrapper;
import kotlin.jvm.internal.Intrinsics;

public final class a extends BaseItemProvider {

    private final int f50417e = ResultCollectItemWrapper.Type.FOOTER.ordinal();

    @Override
    public int l() {
        return this.f50417e;
    }

    @Override
    public int m() {
        return R$layout.search_collection_footer;
    }

    @Override
    public void b(BaseViewHolder helper, ResultCollectItemWrapper item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        RecyclerView.n nVar = (RecyclerView.n) layoutParams;
        ((ViewGroup.MarginLayoutParams) nVar).width = com.blankj.utilcode.util.i.e(26.0f);
        ((ViewGroup.MarginLayoutParams) nVar).height = com.blankj.utilcode.util.i.e(102.0f);
        helper.itemView.setLayoutParams(nVar);
    }
}

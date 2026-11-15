package com.transsion.home.adapter.trending.provider;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.view.OpRankingView;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.jvm.internal.Intrinsics;

public final class n extends BaseItemProvider {

    private final com.transsion.home.preload.b f43628e;

    public n(com.transsion.home.preload.b bVar) {
        this.f43628e = bVar;
    }

    @Override
    public int l() {
        return PostItemType.OP_RANKING.ordinal();
    }

    @Override
    public int m() {
        return R$layout.post_list_item_op_ranking;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        com.transsion.home.preload.b bVar = this.f43628e;
        if (bVar == null || bVar.b() || this.f43628e.d() == null) {
            return super.r(parent, i10);
        }
        wf.a.C0922a.f(wf.a.f74274a, "MainXMLPreload", "ranking", false, 4, null);
        View viewD = this.f43628e.d();
        if (viewD == null) {
            return super.r(parent, i10);
        }
        viewD.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new BaseViewHolder(viewD);
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        OpRankingView opRankingView = (OpRankingView) helper.getViewOrNull(R$id.ranking_view);
        if (opRankingView == null || item.getRankings() == null) {
            return;
        }
        opRankingView.setDatas(item);
    }
}

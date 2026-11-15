package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class SubRankListProvider extends BaseItemProvider {

    private final int f43370e;

    private t1 f43371f;

    private OperateItem f43372g;

    private com.transsion.home.adapter.suboperate.adapter.r f43373h;

    private com.transsion.home.adapter.suboperate.adapter.s f43374i;

    private int f43375j;

    public static final class a extends RecyclerView.r {

        final androidx.recyclerview.widget.n f43376a;

        final SubRankListProvider f43377b;

        final RecyclerView f43378c;

        a(androidx.recyclerview.widget.n nVar, SubRankListProvider subRankListProvider, RecyclerView recyclerView) {
            this.f43376a = nVar;
            this.f43377b = subRankListProvider;
            this.f43378c = recyclerView;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            View viewFindSnapView;
            List<Object> data;
            Intrinsics.h(recyclerView, "recyclerView");
            if (i10 != 0 || (viewFindSnapView = this.f43376a.findSnapView(recyclerView.getLayoutManager())) == null) {
                return;
            }
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int position = layoutManager != null ? layoutManager.getPosition(viewFindSnapView) : 0;
            com.transsion.home.adapter.suboperate.adapter.s sVar = this.f43377b.f43374i;
            if (sVar != null) {
                sVar.C1(position);
            }
            this.f43377b.f43375j = position;
            if (position != 0) {
                com.transsion.home.adapter.suboperate.adapter.s sVar2 = this.f43377b.f43374i;
                if (position != ((sVar2 == null || (data = sVar2.getData()) == null) ? -1 : data.size()) - 1) {
                    this.f43377b.L(this.f43378c, position);
                    return;
                }
            }
            this.f43378c.scrollToPosition(position);
        }
    }

    public SubRankListProvider(int i10) {
        this.f43370e = i10;
    }

    public static final void G(OperateItem operateItem, View view) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null) {
            ij.k.h(deepLink, null, 1, null);
        }
    }

    private final void H(RecyclerView recyclerView, RecyclerView recyclerView2, OperateItem operateItem) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.suboperate.adapter.r rVar = new com.transsion.home.adapter.suboperate.adapter.r(0, operateItem, this.f43370e, 1, null);
        this.f43373h = rVar;
        RankingListData rankingListData = operateItem.getRankingListData();
        rVar.n1(rankingListData != null ? rankingListData.getItems() : null);
        recyclerView.setAdapter(this.f43373h);
        recyclerView.scrollToPosition(this.f43375j);
        recyclerView.setOnFlingListener(null);
        androidx.recyclerview.widget.n nVar = new androidx.recyclerview.widget.n();
        nVar.attachToRecyclerView(recyclerView);
        recyclerView.addOnScrollListener(new a(nVar, this, recyclerView2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I(final RecyclerView recyclerView, final RecyclerView recyclerView2, OperateItem operateItem) {
        int i10 = 0;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        int i11 = 1;
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.suboperate.adapter.s sVar = new com.transsion.home.adapter.suboperate.adapter.s(i10, i11, 0 == true ? 1 : 0);
        this.f43374i = sVar;
        sVar.C1(this.f43375j);
        com.transsion.home.adapter.suboperate.adapter.s sVar2 = this.f43374i;
        if (sVar2 != null) {
            RankingListData rankingListData = operateItem.getRankingListData();
            sVar2.n1(rankingListData != null ? rankingListData.getItems() : null);
        }
        com.transsion.home.adapter.suboperate.adapter.s sVar3 = this.f43374i;
        if (sVar3 != null) {
            sVar3.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                    SubRankListProvider.J(this.f43449a, recyclerView2, recyclerView, baseQuickAdapter, view, i12);
                }
            });
        }
        recyclerView.setAdapter(this.f43374i);
        recyclerView.scrollToPosition(this.f43375j);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    public static final void J(SubRankListProvider subRankListProvider, RecyclerView recyclerView, RecyclerView recyclerView2, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        subRankListProvider.f43375j = i10;
        if (i10 == 0) {
            recyclerView.scrollToPosition(i10);
        } else {
            com.transsion.home.adapter.suboperate.adapter.r rVar = subRankListProvider.f43373h;
            if (i10 == ((rVar == null || (data = rVar.getData()) == null) ? -1 : data.size()) - 1) {
                recyclerView.scrollToPosition(i10);
            } else {
                subRankListProvider.L(recyclerView, i10);
            }
        }
        com.transsion.home.adapter.suboperate.adapter.s sVar = subRankListProvider.f43374i;
        if (sVar != null) {
            sVar.C1(subRankListProvider.f43375j);
        }
        recyclerView2.scrollToPosition(i10);
    }

    private final void K() {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f43370e), true)) {
            this.f43371f = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubRankListProvider$registerCourse$1(this, null), 3, null);
        }
    }

    public final void L(RecyclerView recyclerView, int i10) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(i10) : null;
        if (viewFindViewByPosition == null) {
            recyclerView.scrollToPosition(i10);
        } else {
            recyclerView.scrollBy(viewFindViewByPosition.getLeft() - ((recyclerView.getWidth() / 2) - (viewFindViewByPosition.getWidth() / 2)), 0);
        }
    }

    private final void M() {
        t1 t1Var = this.f43371f;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f43371f = null;
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f43372g = item;
        helper.setText(R$id.sub_operation_ranklist_title_text, item.getTitle());
        helper.getView(R$id.sub_operation_ranklist_title_linear).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubRankListProvider.G(item, view);
            }
        });
        View view = helper.getView(R$id.sub_operation_ranklist_all);
        String deepLink = item.getDeepLink();
        view.setVisibility((deepLink == null || deepLink.length() == 0) ? 4 : 0);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_recycler);
        RecyclerView recyclerView2 = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_title_tab_recycler);
        H(recyclerView, recyclerView2, item);
        I(recyclerView2, recyclerView, item);
    }

    @Override
    public int l() {
        return PostItemType.RANKING_LIST.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_rank_list;
    }

    @Override
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        K();
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        M();
    }
}

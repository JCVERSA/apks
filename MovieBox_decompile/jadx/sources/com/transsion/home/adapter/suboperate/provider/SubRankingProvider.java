package com.transsion.home.adapter.suboperate.provider;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingData;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.view.RankingAdapter;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class SubRankingProvider extends BaseItemProvider {

    private final int f43380e;

    private t1 f43381f;

    private OperateItem f43382g;

    private BaseQuickAdapter f43383h;

    public static final class a extends RecyclerView.l {

        final int f43384a;

        final int f43385b;

        a(int i10, int i11) {
            this.f43384a = i10;
            this.f43385b = i11;
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            int i10 = this.f43384a;
            outRect.left = i10;
            outRect.right = i10;
            outRect.top = this.f43385b;
        }
    }

    public SubRankingProvider(int i10) {
        this.f43380e = i10;
    }

    private final void D() {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f43380e), true)) {
            this.f43381f = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubRankingProvider$registerCourse$1(this, null), 3, null);
        }
    }

    private final void E(Subject subject, int i10, OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_ranking");
        map.put("sequence", String.valueOf(i10));
        map.put("tabId", String.valueOf(this.f43380e));
        if (subject != null) {
            sk.b.d(subject, map);
        }
        sk.b.a(operateItem, map);
        com.transsion.baselib.helper.a.f42121a.a(SubTabFragment.INSTANCE.a(this.f43380e), map);
    }

    private final void F(Subject subject, int i10, OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "click_ranking");
        map.put("sequence", String.valueOf(i10));
        map.put("tabId", String.valueOf(this.f43380e));
        if (subject != null) {
            sk.b.d(subject, map);
        }
        sk.b.a(operateItem, map);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43380e), map);
    }

    private final void G(BaseQuickAdapter baseQuickAdapter, final OperateItem operateItem) {
        baseQuickAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter2, View view, int i10) {
                SubRankingProvider.H(operateItem, this, baseQuickAdapter2, view, i10);
            }
        });
        if (baseQuickAdapter instanceof com.transsion.home.adapter.suboperate.adapter.u) {
            ((com.transsion.home.adapter.suboperate.adapter.u) baseQuickAdapter).F1(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return SubRankingProvider.I(this.f43459a, operateItem, ((Integer) obj).intValue(), (Subject) obj2);
                }
            });
        }
        this.f43383h = baseQuickAdapter;
        this.f43382g = operateItem;
    }

    public static final void H(OperateItem operateItem, SubRankingProvider subRankingProvider, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<Subject> rankings = operateItem.getRankings();
        Subject subject = rankings != null ? rankings.get(i10) : null;
        zk.h.f(subject, "op_ranking");
        subRankingProvider.F(subject, i10, operateItem);
    }

    public static final Unit I(SubRankingProvider subRankingProvider, OperateItem operateItem, int i10, Subject subject) {
        Intrinsics.h(subject, "subject");
        subRankingProvider.E(subject, i10, operateItem);
        return Unit.f64096a;
    }

    private final void J() {
        t1 t1Var = this.f43381f;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f43381f = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v2, types: [kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r3v3 */
    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        BaseQuickAdapter rankingAdapter;
        List arrayList;
        RankingData rankingData;
        Integer perRow;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.setText(R$id.sub_operation_ranking_title, item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_ranking_recycler);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new a(com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(12.0f)));
        }
        List<Subject> rankings = item.getRankings();
        int i10 = 0;
        int size = rankings != null ? rankings.size() : 0;
        int i11 = 1;
        ?? SubList = 0;
        if (!HomeTabId.INSTANCE.h(Integer.valueOf(this.f43380e), true) || (rankingData = item.getRankingData()) == null || (perRow = rankingData.getPerRow()) == null || perRow.intValue() != 2) {
            recyclerView.setLayoutManager(new NpaGridLayoutManager(k(), 3));
            List<Subject> rankings2 = item.getRankings();
            SubList = rankings2 != null ? rankings2.subList(0, size - (size % 3)) : 0;
            if (SubList == 0 || (arrayList = CollectionsKt.U0((Collection) SubList)) == null) {
                arrayList = new ArrayList();
            }
            rankingAdapter = new RankingAdapter(arrayList);
        } else {
            recyclerView.setLayoutManager(new NpaGridLayoutManager(k(), 2));
            rankingAdapter = new com.transsion.home.adapter.suboperate.adapter.u(i10, this.f43380e, i11, SubList);
            List<Subject> rankings3 = item.getRankings();
            rankingAdapter.n1(rankings3 != null ? rankings3.subList(0, size - (size % 2)) : null);
        }
        G(rankingAdapter, item);
        recyclerView.setAdapter(rankingAdapter);
    }

    @Override
    public int l() {
        return PostItemType.OP_RANKING.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_ranking;
    }

    @Override
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        D();
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        J();
    }
}

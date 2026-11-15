package com.transsion.usercenter.me.adapter;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.profile.bean.MeHistoryInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class HistoryMineItemProvider extends BaseItemProvider {

    private final o f54809e;

    private final Lazy f54810f;

    /* JADX WARN: Multi-variable type inference failed */
    public HistoryMineItemProvider() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static final Unit C(BaseViewHolder baseViewHolder, HistoryMineItemProvider historyMineItemProvider, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        Intrinsics.h(it, "it");
        com.transsion.usercenter.me.k.f54876a.b(ShortTVHistoryView.TYPE_HISTORY);
        Navigator.x(TheRouter.c("/download/play_history"), baseViewHolder.itemView.getContext(), null, 2, null);
        o oVar = historyMineItemProvider.f54809e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f64096a;
    }

    public static final void D(HistoryMineItemProvider historyMineItemProvider, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = historyMineItemProvider.E().getItem(i10);
        if (!(item instanceof VideoDetailPlayBean)) {
            if (item instanceof UGCVideoDetailPlayBean) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new HistoryMineItemProvider$convert$2$2(item, null), 3, null);
            }
        } else if (ij.g.f62108a.b()) {
            kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new HistoryMineItemProvider$convert$2$1(item, null), 3, null);
        } else {
            VideoDetailPlayBean videoDetailPlayBean = (VideoDetailPlayBean) item;
            historyMineItemProvider.F(view, videoDetailPlayBean.getSubjectType(), videoDetailPlayBean.getSubjectId(), videoDetailPlayBean.getOps());
        }
    }

    private final p E() {
        return (p) this.f54810f.getValue();
    }

    private final void F(View view, Integer num, String str, String str2) {
        Navigator.x(TheRouter.c("/movie/detail").F("subject_type", num != null ? num.intValue() : SubjectType.MOVIE.getValue()).K("id", str).K("ops", str2).K("module_name", "profiledetail"), view.getContext(), null, 2, null);
    }

    public static final p G() {
        return new p();
    }

    @Override
    public void b(final BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        MeHistoryInfo meHistoryInfo = data instanceof MeHistoryInfo ? (MeHistoryInfo) data : null;
        if (meHistoryInfo == null) {
            return;
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        uf.c.c(itemView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HistoryMineItemProvider.C(helper, this, item, (View) obj);
            }
        }, 1, null);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.historyRv);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
        recyclerView.setAdapter(E());
        E().w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                HistoryMineItemProvider.D(this.f54821a, baseQuickAdapter, view, i10);
            }
        });
        E().n1(meHistoryInfo.getList());
        List<Object> list = meHistoryInfo.getList();
        recyclerView.setVisibility(list == null || list.isEmpty() ? 8 : 0);
    }

    @Override
    public int l() {
        return 4;
    }

    @Override
    public int m() {
        return R$layout.mine_item_history_layout;
    }

    public HistoryMineItemProvider(o oVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : oVar);
    }

    public HistoryMineItemProvider(o oVar) {
        this.f54809e = oVar;
        this.f54810f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return HistoryMineItemProvider.G();
            }
        });
    }
}

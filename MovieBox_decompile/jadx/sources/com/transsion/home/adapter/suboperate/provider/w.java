package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.suboperate.adapter.SubFilterAdapter;
import com.transsion.home.bean.FilterItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class w extends BaseItemProvider {

    private final Integer f43474e;

    private final boolean f43475f;

    private final Lazy f43476g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return w.A();
        }
    });

    public static final class a extends RecyclerView.s {
        a() {
            m(0, 4);
        }

        @Override
        public void k(RecyclerView.a0 a0Var) {
            super.k(a0Var);
        }
    }

    public w(Integer num, boolean z10) {
        this.f43474e = num;
        this.f43475f = z10;
    }

    public static final a A() {
        return new a();
    }

    private final a B() {
        return (a) this.f43476g.getValue();
    }

    @Override
    public int l() {
        return PostItemType.FILTER.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_filter;
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        List<FilterItem> filters = item.getFilters();
        if (filters == null) {
            filters = new ArrayList<>();
        }
        if (filters.isEmpty()) {
            View itemView = helper.itemView;
            Intrinsics.g(itemView, "itemView");
            uf.c.g(itemView);
            return;
        }
        View itemView2 = helper.itemView;
        Intrinsics.g(itemView2, "itemView");
        uf.c.k(itemView2);
        TextView textView = (TextView) helper.getView(R$id.sub_operation_filter_title);
        String title = item.getTitle();
        if (title == null || title.length() == 0) {
            uf.c.g(textView);
        } else {
            textView.setText(item.getTitle());
            uf.c.k(textView);
        }
        RecyclerView recyclerView = (RecyclerView) helper.itemView.findViewById(R$id.sub_operation_filter_recycler);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        if (!Intrinsics.c(recyclerView.getRecycledViewPool(), B())) {
            recyclerView.setRecycledViewPool(B());
        }
        SubFilterAdapter subFilterAdapter = new SubFilterAdapter(0, this.f43474e, item, this.f43475f, 1, null);
        subFilterAdapter.n1(filters);
        recyclerView.setAdapter(subFilterAdapter);
    }
}

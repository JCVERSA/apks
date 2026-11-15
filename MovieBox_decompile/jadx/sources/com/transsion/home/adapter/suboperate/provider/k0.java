package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BffCommonOpData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class k0 extends BaseItemProvider {

    private final int f43442e;

    private final boolean f43443f;

    private final int f43444g;

    public k0(int i10, boolean z10) {
        this.f43442e = i10;
        this.f43443f = z10;
        int i11 = z10 ? 4 : 3;
        this.f43444g = ((int) (com.blankj.utilcode.util.a0.a(((((com.blankj.utilcode.util.a0.b(RangesKt.h(com.blankj.utilcode.util.y.e(), com.blankj.utilcode.util.y.c())) - 12) - (i11 * 8)) - 12) * 1.0f) / i11) * 1.39f)) + com.blankj.utilcode.util.a0.a(26.0f);
    }

    public static final void A(List list, k0 k0Var, OperateItem operateItem, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        BffCommonOpData bffCommonOpData = (BffCommonOpData) CollectionsKt.l0(list, i10);
        if (bffCommonOpData == null) {
            return;
        }
        if (i10 == list.size() - 1) {
            k0Var.B(operateItem, bffCommonOpData);
            k0Var.D(bffCommonOpData, i10, operateItem);
        } else {
            k0Var.B(operateItem, bffCommonOpData);
            k0Var.D(bffCommonOpData, i10, operateItem);
        }
    }

    private final void B(OperateItem operateItem, BffCommonOpData bffCommonOpData) {
        String deepLink = bffCommonOpData.getDeepLink();
        if (deepLink != null) {
            ij.k.h(deepLink, null, 1, null);
        }
    }

    private final void C(OperateItem operateItem) {
        String title;
        String opId;
        HashMap map = new HashMap();
        map.put("event_type", "browse_post_list");
        String str = "";
        if (operateItem == null || (title = operateItem.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (operateItem != null && (opId = operateItem.getOpId()) != null) {
            str = opId;
        }
        map.put("opId", str);
        map.put("tabId", String.valueOf(this.f43442e));
        if (operateItem != null) {
            sk.b.a(operateItem, map);
        }
        com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.f43442e), map);
    }

    private final void D(BffCommonOpData bffCommonOpData, int i10, OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "click_post_list_item");
        map.put("sequence", String.valueOf(i10));
        map.put("tabId", String.valueOf(this.f43442e));
        sk.b.c(bffCommonOpData, map);
        sk.b.a(operateItem, map);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43442e), map);
    }

    @Override
    public int l() {
        return PostItemType.POST_LIST.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_variable;
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        List<BffCommonOpData> postData = item.getPostData();
        if (postData == null) {
            postData = CollectionsKt.l();
        }
        helper.itemView.setVisibility(postData.isEmpty() ? 8 : 0);
        if (postData.isEmpty()) {
            return;
        }
        ((TextView) helper.getView(R$id.sub_operation_variable_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_variable_recycle);
        final List listK0 = CollectionsKt.K0(postData, 10);
        if (this.f43444g > 0) {
            ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
            layoutParams.height = this.f43444g;
            recyclerView.setLayoutParams(layoutParams);
        }
        Object tag = recyclerView.getTag();
        com.transsion.home.adapter.suboperate.adapter.o oVar = tag instanceof com.transsion.home.adapter.suboperate.adapter.o ? (com.transsion.home.adapter.suboperate.adapter.o) tag : null;
        if (oVar == null) {
            oVar = new com.transsion.home.adapter.suboperate.adapter.o(0, item, this.f43442e, this.f43443f, 1, null);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
            linearLayoutManager.setItemPrefetchEnabled(true);
            recyclerView.setLayoutManager(linearLayoutManager);
            recyclerView.setAdapter(oVar);
            recyclerView.setTag(oVar);
            if (recyclerView.getItemDecorationCount() == 0) {
                recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
            }
        } else {
            oVar.E1(item);
        }
        oVar.n1(listK0);
        oVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                k0.A(listK0, this, item, baseQuickAdapter, view, i10);
            }
        });
        C(item);
    }
}

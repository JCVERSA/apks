package com.transsion.shorttv_pugc.ui.adapter.provider;

import android.net.Uri;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.CustomData;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import com.transsion.shorttv_pugc.ui.adapter.ShortTvOpCustomAdapter;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class m extends BaseItemProvider {

    private final String f52076e;

    private final boolean f52077f;

    private final Lazy f52078g;

    public static final class a extends RecyclerView.s {
        a() {
            m(0, 16);
        }

        @Override
        public void k(RecyclerView.a0 a0Var) {
            super.k(a0Var);
        }
    }

    public m(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f52076e = pageName;
        this.f52077f = z10;
        this.f52078g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return m.C();
            }
        });
    }

    public static final void B(OperateItem operateItem, m mVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<BannerData> items;
        BannerData bannerData;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        CustomData customData = operateItem.getCustomData();
        if (customData == null || (items = customData.getItems()) == null || (bannerData = items.get(i10)) == null) {
            return;
        }
        mVar.G(bannerData);
        mVar.F(bannerData, i10, operateItem);
    }

    public static final a C() {
        return new a();
    }

    private final a D() {
        return (a) this.f52078g.getValue();
    }

    private final void E(OperateItem operateItem) {
        String title;
        String opId;
        HashMap map = new HashMap();
        map.put("event_type", "browse_custom");
        String str = "";
        if (operateItem == null || (title = operateItem.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        if (operateItem != null && (opId = operateItem.getOpId()) != null) {
            str = opId;
        }
        map.put("opId", str);
        if (operateItem != null) {
            ShortTvExtKt.a(operateItem, map);
        }
        qi.h.f69682a.z(this.f52076e, map);
    }

    private final void F(BannerData bannerData, int i10, OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "click_custom_item");
        map.put("sequence", String.valueOf(i10));
        CustomData customData = operateItem.getCustomData();
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        if (bannerData != null) {
            ShortTvExtKt.b(bannerData, map);
        }
        ShortTvExtKt.a(operateItem, map);
        qi.h.f69682a.o(this.f52076e, map);
    }

    private final void G(BannerData bannerData) {
        String deepLink = bannerData.getDeepLink();
        if (deepLink != null) {
            Uri uriA = hs.a.f61487a.a(Uri.parse(deepLink + "&module_name=opt_custom&ops=" + bannerData.getOps()));
            if (uriA != null) {
                hr.c.j(uriA);
            }
        }
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<BannerData> items;
        List<BannerData> items2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.sub_operation_variable_title)).setText(item.getTitle());
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_variable_recycle);
        String str = this.f52076e;
        CustomData customData = item.getCustomData();
        CustomData customData2 = item.getCustomData();
        ShortTvOpCustomAdapter shortTvOpCustomAdapter = new ShortTvOpCustomAdapter(0, str, customData, (customData2 == null || (items2 = customData2.getItems()) == null) ? null : items2.get(0), this.f52077f, 1, null);
        recyclerView.setAdapter(shortTvOpCustomAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new com.transsion.shorttv_pugc.base.widget.k(8.0f, 0.0f, 12.0f, 2, null));
        }
        if (!Intrinsics.c(recyclerView.getRecycledViewPool(), D())) {
            recyclerView.setRecycledViewPool(D());
        }
        CustomData customData3 = item.getCustomData();
        shortTvOpCustomAdapter.n1((customData3 == null || (items = customData3.getItems()) == null) ? new ArrayList<>() : items);
        shortTvOpCustomAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                m.B(item, this, baseQuickAdapter, view, i10);
            }
        });
        E(item);
    }

    @Override
    public int l() {
        return ShortTvItemType.CUSTOM_DATA.ordinal();
    }

    @Override
    public int m() {
        return R$layout.pugc_short_tv_op_custom;
    }
}

package com.transsion.shorttv.ui.adapter;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv.ui.widget.ShortTvVideoItemView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class j extends BaseItemProvider {

    private final ShortTvDetailListFragment f51118e;

    private boolean f51119f;

    private final String f51120g;

    private final String f51121h;

    private final boolean f51122i;

    private final int f51123j;

    private final int f51124k;

    public j(ShortTvDetailListFragment fragment, boolean z10, String str, String str2, boolean z11) {
        Intrinsics.h(fragment, "fragment");
        this.f51118e = fragment;
        this.f51119f = z10;
        this.f51120g = str;
        this.f51121h = str2;
        this.f51122i = z11;
        this.f51123j = 1;
        this.f51124k = R$layout.short_tv_item_video;
    }

    @Override
    public int l() {
        return this.f51123j;
    }

    @Override
    public int m() {
        return this.f51124k;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        com.transsion.shorttv.utils.e.a aVar = com.transsion.shorttv.utils.e.f51640c;
        if (!aVar.a().d().isEmpty()) {
            View view = (View) aVar.a().d().remove(0);
            if (view.getParent() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                return new BaseViewHolder(view);
            }
        }
        return super.r(parent, i10);
    }

    @Override
    public void b(BaseViewHolder holder, nr.k item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (item instanceof nr.e) {
            ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) holder.getView(R$id.view_video_item);
            nr.e eVar = (nr.e) item;
            ShortTvDetailListFragment shortTvDetailListFragment = this.f51118e;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            com.transsion.shorttv.ui.widget.d.a.a(shortTvVideoItemView, eVar, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f51119f, this.f51120g, this.f51121h, false, this.f51122i, 64, null);
        }
    }

    @Override
    public void f(BaseViewHolder helper, nr.k item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (item instanceof nr.e) {
            Object objK0 = CollectionsKt.k0(payloads);
            ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) helper.getView(R$id.view_video_item);
            if (!(objK0 instanceof Integer)) {
                if (objK0 instanceof Boolean) {
                    shortTvVideoItemView.updateLockState((nr.e) item);
                }
            } else {
                nr.e eVar = (nr.e) item;
                ShortTvDetailListFragment shortTvDetailListFragment = this.f51118e;
                BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
                shortTvVideoItemView.setData(eVar, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f51119f, this.f51120g, this.f51121h, true, this.f51122i);
            }
        }
    }
}

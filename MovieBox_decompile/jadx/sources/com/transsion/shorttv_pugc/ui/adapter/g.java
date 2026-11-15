package com.transsion.shorttv_pugc.ui.adapter;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv_pugc.ui.widget.ShortTvVideoItemView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class g extends BaseItemProvider {

    private final ShortTvDetailListFragment f52010e;

    private boolean f52011f;

    private final String f52012g;

    private final String f52013h;

    private final boolean f52014i;

    private final int f52015j;

    private final int f52016k;

    public g(ShortTvDetailListFragment fragment, boolean z10, String str, String str2, boolean z11) {
        Intrinsics.h(fragment, "fragment");
        this.f52010e = fragment;
        this.f52011f = z10;
        this.f52012g = str;
        this.f52013h = str2;
        this.f52014i = z11;
        this.f52015j = 1;
        this.f52016k = R$layout.pugc_short_tv_item_video;
    }

    @Override
    public int l() {
        return this.f52015j;
    }

    @Override
    public int m() {
        return this.f52016k;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        com.transsion.shorttv_pugc.utils.e.a aVar = com.transsion.shorttv_pugc.utils.e.f52432c;
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
    public void b(BaseViewHolder holder, ShorttvModel.UGCVideo item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) holder.getView(R$id.view_video_item);
        ShortTvDetailListFragment shortTvDetailListFragment = this.f52010e;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        com.transsion.shorttv_pugc.ui.widget.a.C0642a.a(shortTvVideoItemView, item, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f52011f, this.f52012g, this.f52013h, false, this.f52014i, 64, null);
    }

    @Override
    public void f(BaseViewHolder helper, ShorttvModel.UGCVideo item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        Object objK0 = CollectionsKt.k0(payloads);
        ShortTvVideoItemView shortTvVideoItemView = (ShortTvVideoItemView) helper.getView(R$id.view_video_item);
        if (objK0 instanceof Integer) {
            ShortTvDetailListFragment shortTvDetailListFragment = this.f52010e;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            shortTvVideoItemView.setData(item, shortTvDetailListFragment, baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f52011f, this.f52012g, this.f52013h, true, this.f52014i);
        } else if (objK0 instanceof Boolean) {
            shortTvVideoItemView.updateLockState(item);
        }
    }
}

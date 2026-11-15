package com.transsion.home.adapter.suboperate.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class v extends RecyclerView.Adapter {

    private List f43333a;

    private final int f43334b;

    private final com.transsion.home.adapter.suboperate.provider.i f43335c;

    private final OperateItem f43336d;

    private final int f43337e;

    private final int f43338f;

    public v(List banners, int i10, com.transsion.home.adapter.suboperate.provider.i bannerProvider, OperateItem operateItem) {
        Intrinsics.h(banners, "banners");
        Intrinsics.h(bannerProvider, "bannerProvider");
        Intrinsics.h(operateItem, "operateItem");
        this.f43333a = banners;
        this.f43334b = i10;
        this.f43335c = bannerProvider;
        this.f43336d = operateItem;
        this.f43338f = 1;
    }

    private final BannerData h(int i10) {
        int size;
        if (!this.f43333a.isEmpty() && (size = i10 % this.f43333a.size()) >= 0 && size < this.f43333a.size()) {
            return (BannerData) this.f43333a.get(size);
        }
        return null;
    }

    public final List g() {
        return this.f43333a;
    }

    @Override
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override
    public int getItemViewType(int i10) {
        BannerData bannerDataH = h(i10);
        return (bannerDataH != null ? bannerDataH.getBiddingAdData() : null) != null ? this.f43338f : this.f43337e;
    }

    public final void i(List list) {
        Intrinsics.h(list, "<set-?>");
        this.f43333a = list;
    }

    @Override
    public void onBindViewHolder(RecyclerView.a0 holder, int i10) {
        Intrinsics.h(holder, "holder");
        if (this.f43333a.isEmpty()) {
            return;
        }
        int size = i10 % this.f43333a.size();
        if (getItemViewType(i10) == this.f43338f) {
            SubBannerADViewHolder subBannerADViewHolder = holder instanceof SubBannerADViewHolder ? (SubBannerADViewHolder) holder : null;
            if (subBannerADViewHolder != null) {
                subBannerADViewHolder.i(h(i10));
                return;
            }
            return;
        }
        SubBannerViewHolder subBannerViewHolder = holder instanceof SubBannerViewHolder ? (SubBannerViewHolder) holder : null;
        if (subBannerViewHolder != null) {
            subBannerViewHolder.g(h(i10), size);
        }
    }

    @Override
    public RecyclerView.a0 onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        if (i10 == this.f43338f) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_banner_ad, parent, false);
            Intrinsics.e(viewInflate);
            return new SubBannerADViewHolder(viewInflate);
        }
        View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_view_pager, parent, false);
        Intrinsics.e(viewInflate2);
        return new SubBannerViewHolder(viewInflate2, this.f43334b, this.f43335c, this.f43336d);
    }

    @Override
    public void onViewRecycled(RecyclerView.a0 holder) {
        Intrinsics.h(holder, "holder");
        super.onViewRecycled(holder);
        boolean z10 = holder instanceof SubBannerADViewHolder;
        if ((z10 ? (SubBannerADViewHolder) holder : null) != null) {
            SubBannerADViewHolder subBannerADViewHolder = z10 ? (SubBannerADViewHolder) holder : null;
            if (subBannerADViewHolder != null) {
                subBannerADViewHolder.k();
            }
        }
    }
}

package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.Image;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class ShortTVBannerAdapter extends RecyclerView.Adapter {

    private final List f51098a = new ArrayList();

    private Function3 f51099b;

    public static final void i(BannerData bannerData, ShortTVBannerAdapter shortTVBannerAdapter, int i10, View view) {
        Function3 function3;
        if (bannerData == null || (function3 = shortTVBannerAdapter.f51099b) == null) {
            return;
        }
        Intrinsics.e(view);
        function3.invoke(view, Integer.valueOf(i10), bannerData);
    }

    public final List getData() {
        return this.f51098a;
    }

    @Override
    public int getItemCount() {
        return this.f51098a.size();
    }

    @Override
    public void onBindViewHolder(b holder, final int i10) {
        Image image;
        String thumbnail;
        Image image2;
        String url;
        Boolean hasResource;
        Intrinsics.h(holder, "holder");
        final BannerData bannerData = (BannerData) this.f51098a.get(i10);
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTVBannerAdapter.i(bannerData, this, i10, view);
            }
        });
        if (bannerData == null || !bannerData.getBuiltIn()) {
            er.b.a aVar = er.b.f59791a;
            Context context = holder.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ShapeableImageView ivCover = holder.f().f70007b;
            Intrinsics.g(ivCover, "ivCover");
            aVar.j(context, ivCover, (bannerData == null || (image2 = bannerData.getImage()) == null || (url = image2.getUrl()) == null) ? "" : url, (8096 & 8) != 0 ? aVar.c() : R$color.short_tv_module_04, (8096 & 16) != 0 ? aVar.b() : 0, (8096 & 32) != 0, (8096 & 64) != 0 ? "" : (bannerData == null || (image = bannerData.getImage()) == null || (thumbnail = image.getThumbnail()) == null) ? "" : thumbnail, (8096 & 128) != 0, (8096 & 256) != 0, (8096 & 512) != 0 ? false : false, (8096 & 1024) != 0 ? false : false, (8096 & 2048) != 0 ? false : false, (8096 & 4096) != 0 ? 25 : 0);
        } else {
            kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ShortTVBannerAdapter$onBindViewHolder$1$2(bannerData, holder, null), 3, null);
        }
        holder.f().f70009d.setText(bannerData != null ? bannerData.getContent() : null);
        AppCompatImageView ivPlay = holder.f().f70008c;
        Intrinsics.g(ivPlay, "ivPlay");
        ivPlay.setVisibility((bannerData == null || (hasResource = bannerData.getHasResource()) == null) ? false : hasResource.booleanValue() ? 0 : 8);
    }

    @Override
    public b onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.short_tv_item_banner, parent, false);
        Intrinsics.e(viewInflate);
        return new b(viewInflate);
    }

    public final void k(Function3 listener) {
        Intrinsics.h(listener, "listener");
        this.f51099b = listener;
    }

    public final void setData(List list) {
        Intrinsics.h(list, "list");
        this.f51098a.clear();
        this.f51098a.addAll(list);
        notifyDataSetChanged();
    }
}

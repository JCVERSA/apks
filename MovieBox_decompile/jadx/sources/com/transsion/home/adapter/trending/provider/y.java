package com.transsion.home.adapter.trending.provider;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.adapter.BaseItemBindingProvider;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SingleImagePage;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.jvm.internal.Intrinsics;

public final class y extends BaseItemBindingProvider {

    public static final int f43645h = BaseItemBindingProvider.f42261f;

    private final int f43646g = com.blankj.utilcode.util.y.e() - lj.a.b(24);

    public static final void C(BaseViewHolder baseViewHolder, OperateItem operateItem, View view) {
        String deepLink;
        zk.c.f76806a.f(baseViewHolder.getBindingAdapterPosition(), operateItem);
        SingleImagePage page = operateItem.getPage();
        if (page == null || (deepLink = page.getDeepLink()) == null) {
            deepLink = operateItem.getDeepLink();
        }
        if (deepLink != null) {
            ij.k.h(deepLink, null, 1, null);
        }
    }

    @Override
    public void y(qk.e0 binding, final BaseViewHolder helper, final OperateItem item) {
        Image image;
        String url;
        String thumbnail;
        Image image2;
        Image image3;
        Image image4;
        Integer width;
        Image image5;
        Integer height;
        Intrinsics.h(binding, "binding");
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        binding.f69724c.setText(item.getTitle());
        helper.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                y.C(helper, item, view);
            }
        });
        SingleImagePage page = item.getPage();
        int iIntValue = (page == null || (image5 = page.getImage()) == null || (height = image5.getHeight()) == null) ? 0 : height.intValue();
        SingleImagePage page2 = item.getPage();
        int iIntValue2 = (page2 == null || (image4 = page2.getImage()) == null || (width = image4.getWidth()) == null) ? 1 : width.intValue();
        int i10 = this.f43646g;
        float f10 = ((i10 * iIntValue) * 1.0f) / iIntValue2;
        wf.a.C0922a c0922a = wf.a.f74274a;
        SingleImagePage page3 = item.getPage();
        wf.a.C0922a.f(c0922a, "SingleImage", "imgH:" + iIntValue + ",imgW:" + iIntValue2 + " imageViewHeight:" + f10 + ", imageViewWidth:" + i10 + "， url:" + ((page3 == null || (image3 = page3.getImage()) == null) ? null : image3.getUrl()), false, 4, null);
        ViewGroup.LayoutParams layoutParams = binding.f69723b.getLayoutParams();
        layoutParams.height = (int) f10;
        binding.f69723b.setLayoutParams(layoutParams);
        SingleImagePage page4 = item.getPage();
        if (page4 == null || (image = page4.getImage()) == null || (url = image.getUrl()) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        Context context = binding.f69723b.getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarG = aVar.m(context).g(url);
        SingleImagePage page5 = item.getPage();
        if (page5 == null || (image2 = page5.getImage()) == null || (thumbnail = image2.getThumbnail()) == null) {
            thumbnail = "";
        }
        ni.f.b bVarM = bVarG.l(thumbnail).m(this.f43646g);
        ShapeableImageView ivCover = binding.f69723b;
        Intrinsics.g(ivCover, "ivCover");
        bVarM.d(ivCover);
    }

    @Override
    public qk.e0 z(LayoutInflater inflater, ViewGroup parent) {
        Intrinsics.h(inflater, "inflater");
        Intrinsics.h(parent, "parent");
        qk.e0 e0VarC = qk.e0.c(LayoutInflater.from(k()), parent, false);
        Intrinsics.g(e0VarC, "inflate(...)");
        return e0VarC;
    }

    @Override
    public int l() {
        return PostItemType.SINGLE_IMAGE.ordinal();
    }
}

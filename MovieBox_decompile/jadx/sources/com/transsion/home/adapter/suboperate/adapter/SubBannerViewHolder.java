package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.tn.lib.widget.R$string;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Image;
import com.transsnet.downloader.DownloadManagerApi;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class SubBannerViewHolder extends RecyclerView.a0 {

    private final int f43272a;

    private final com.transsion.home.adapter.suboperate.provider.i f43273b;

    private final OperateItem f43274c;

    private final View f43275d;

    private final View f43276e;

    private final ImageView f43277f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubBannerViewHolder(View itemView, int i10, com.transsion.home.adapter.suboperate.provider.i bannerProvider, OperateItem operateItem) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        Intrinsics.h(bannerProvider, "bannerProvider");
        Intrinsics.h(operateItem, "operateItem");
        this.f43272a = i10;
        this.f43273b = bannerProvider;
        this.f43274c = operateItem;
        View viewFindViewById = itemView.findViewById(R$id.home_sub_pager_items_status);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f43275d = viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.home_sub_pager_items_top_mask);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f43276e = viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.home_sub_pager_item_image);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f43277f = (ImageView) viewFindViewById3;
    }

    public static final void h(BannerData bannerData, SubBannerViewHolder subBannerViewHolder, int i10, View view) {
        String deepLink = bannerData.getDeepLink();
        if (deepLink != null) {
            if (!yg.l.f76264a.e()) {
                fh.b.f60176a.d(R$string.no_network_toast);
                return;
            }
            Uri uriG = com.transsion.baselib.helper.b.f42123a.g(Uri.parse(deepLink + "&module_name=opt_banner_free&autoPlay=true&ops=" + bannerData.getOps()));
            if (uriG != null) {
                ij.k.o(uriG);
            }
            subBannerViewHolder.k(bannerData, i10, DownloadManagerApi.x0(DownloadManagerApi.f56187j.a(), bannerData.getSubjectId(), null, false, false, 12, null) ? "play_subject" : "download_subject");
        }
    }

    private final GradientDrawable i(String str) {
        int color = Color.parseColor(str);
        int iRed = Color.red(color);
        int iGreen = Color.green(color);
        int iBlue = Color.blue(color);
        int iArgb = Color.argb(255, iRed, iGreen, iBlue);
        int iArgb2 = Color.argb(153, iRed, iGreen, iBlue);
        int iArgb3 = Color.argb(0, iRed, iGreen, iBlue);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(new int[]{iArgb, iArgb2, iArgb3});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        return gradientDrawable;
    }

    private final void j(BannerData bannerData, int i10) {
        if (this.f43273b.T(bannerData != null ? bannerData.getSubjectId() : null)) {
            HashMap map = new HashMap();
            map.put("event_type", "browse_banner");
            map.put("sequence", String.valueOf(i10));
            map.put("tabId", String.valueOf(this.f43272a));
            if (bannerData != null) {
                sk.b.b(bannerData, map);
            }
            sk.b.a(this.f43274c, map);
            com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.f43272a), map);
        }
    }

    private final void k(BannerData bannerData, int i10, String str) {
        HashMap map = new HashMap();
        map.put("event_type", "click_banner_poster");
        map.put("sequence", String.valueOf(i10));
        map.put("module_name", str);
        map.put("tabId", String.valueOf(this.f43272a));
        if (bannerData != null) {
            sk.b.b(bannerData, map);
        }
        sk.b.a(this.f43274c, map);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43272a), map);
    }

    public final void g(final BannerData bannerData, final int i10) {
        String url;
        String thumbnail;
        if (bannerData == null) {
            return;
        }
        zg.h hVar = zg.h.f76787a;
        Context context = this.f43277f.getContext();
        Intrinsics.g(context, "getContext(...)");
        int iE = hVar.e(context);
        if (bannerData.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubBannerViewHolder$bindData$1(bannerData, this, null), 3, null);
        } else {
            ni.f.a aVar = ni.f.f67269a;
            Context context2 = this.f43277f.getContext();
            Intrinsics.g(context2, "getContext(...)");
            ni.f.b bVarM = aVar.m(context2);
            Image image = bannerData.getImage();
            String str = "";
            if (image == null || (url = image.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarM2 = bVarM.g(url).m(iE);
            Image image2 = bannerData.getImage();
            if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarM2.l(str).d(this.f43277f);
        }
        this.f43275d.getLayoutParams().height = com.blankj.utilcode.util.d.c() + a0.a(44.0f);
        Image image3 = bannerData.getImage();
        String averageHueDark = image3 != null ? image3.getAverageHueDark() : null;
        if (averageHueDark != null && StringsKt.c0(averageHueDark, Utils.SEPARATOR, false, 2, null)) {
            this.f43275d.setBackgroundColor(Color.parseColor(averageHueDark));
            this.f43276e.setBackground(i(averageHueDark));
        }
        j(bannerData, i10);
        this.f43277f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubBannerViewHolder.h(bannerData, this, i10, view);
            }
        });
    }

    public final ImageView getImageView() {
        return this.f43277f;
    }
}

package com.transsion.shorttv.ui.adapter.provider;

import android.content.Context;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.Subject;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class ShortTvListSubjectProvider extends BaseItemProvider {

    private final String f51158e;

    private final boolean f51159f;

    public ShortTvListSubjectProvider(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f51158e = pageName;
        this.f51159f = z10;
    }

    public static final void A(BaseViewHolder baseViewHolder, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        baseViewHolder.itemView.performClick();
    }

    private final void B(AppCompatImageView appCompatImageView, Subject subject) {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ShortTvListSubjectProvider$loadBuiltInCover$1(subject, appCompatImageView, null), 3, null);
    }

    private final void C(AppCompatImageView appCompatImageView, Subject subject) {
        String thumbnail;
        String url;
        er.b.a aVar = er.b.f59791a;
        Context context = appCompatImageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        Cover cover = subject.getCover();
        String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
        int i10 = R$color.short_tv_module_04;
        Cover cover2 = subject.getCover();
        aVar.j(context, appCompatImageView, str, (8096 & 8) != 0 ? aVar.c() : i10, (8096 & 16) != 0 ? aVar.b() : 0, (8096 & 32) != 0, (8096 & 64) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (8096 & 128) != 0, (8096 & 256) != 0, (8096 & 512) != 0 ? false : false, (8096 & 1024) != 0 ? false : false, (8096 & 2048) != 0 ? false : false, (8096 & 4096) != 0 ? 25 : 0);
    }

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.short_tv_item_trending;
    }

    @Override
    public void b(final BaseViewHolder holder, bs.a data) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(data, "data");
        Subject subjectB = data.b();
        if (subjectB == null) {
            return;
        }
        holder.getView(R$id.tv_title_trending).setVisibility(subjectB.getShowTitle() ? 0 : 8);
        if (subjectB.getNonAdDelegate() != null) {
            ((FrameLayout) holder.getView(R$id.flAdContainer)).setVisibility(0);
            ((Group) holder.getView(R$id.group)).setVisibility(8);
            yq.b bVar = yq.b.f76391a;
            Context contextK = k();
            BiddingNativeManager nonAdDelegate = subjectB.getNonAdDelegate();
            com.transsion.ad.bidding.base.r rVarA = bVar.a(contextK, nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) holder.getViewOrNull(R$id.flAdContainer);
            if (nativeWrapperAdView != null) {
                BiddingNativeManager nonAdDelegate2 = subjectB.getNonAdDelegate();
                BiddingNativeManager nonAdDelegate3 = subjectB.getNonAdDelegate();
                nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVarA, nonAdDelegate3 != null ? nonAdDelegate3.k0() : null);
                return;
            }
            return;
        }
        ((FrameLayout) holder.getView(R$id.flAdContainer)).setVisibility(8);
        ((Group) holder.getView(R$id.group)).setVisibility(0);
        AppCompatImageView appCompatImageView = (AppCompatImageView) holder.getView(R$id.iv_cover);
        if (subjectB.getBuiltIn()) {
            B(appCompatImageView, subjectB);
        } else {
            C(appCompatImageView, subjectB);
        }
        TextView textView = (TextView) holder.getView(R$id.tv_title);
        textView.setText(subjectB.getTitle());
        boolean z10 = new StaticLayout(subjectB.getTitle(), textView.getPaint(), y.e() - a0.a(139.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false).getLineCount() > 1;
        TextView textView2 = (TextView) holder.getView(R$id.tv_type);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String releaseDate = subjectB.getReleaseDate();
        if (releaseDate != null && releaseDate.length() != 0) {
            Date dateL = c0.l(subjectB.getReleaseDate(), "yyyy-MM-dd");
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateL);
            spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
        }
        String[] strArrA = com.blankj.utilcode.util.u.a(subjectB.getGenre(), ",");
        if (strArrA != null) {
            for (String str : strArrA) {
                spannableStringBuilder.append((CharSequence) " · ").append((CharSequence) str);
            }
        }
        String countryName = subjectB.getCountryName();
        if (countryName != null && countryName.length() != 0) {
            spannableStringBuilder.append((CharSequence) " · ").append((CharSequence) subjectB.getCountryName());
        }
        textView2.setText(spannableStringBuilder);
        List<String> tags = subjectB.getTags();
        if (tags == null) {
            tags = new ArrayList<>();
        }
        RecyclerView recyclerView = (RecyclerView) holder.getView(R$id.rv_list);
        if (tags.isEmpty()) {
            cr.b.b(recyclerView);
        } else {
            com.transsion.shorttv.ui.adapter.s sVar = new com.transsion.shorttv.ui.adapter.s(CollectionsKt.U0(tags));
            sVar.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    ShortTvListSubjectProvider.A(holder, baseQuickAdapter, view, i10);
                }
            });
            FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
            flexboxLayoutManager.c0(0);
            flexboxLayoutManager.d0(1);
            flexboxLayoutManager.e0(0);
            recyclerView.setLayoutManager(flexboxLayoutManager);
            if (recyclerView.getItemDecorationCount() <= 0) {
                recyclerView.addItemDecoration(new com.transsion.shorttv.base.widget.f(a0.a(4.0f)));
            }
            recyclerView.setAdapter(sVar);
            cr.b.e(recyclerView);
        }
        TextView textView3 = (TextView) holder.getView(R$id.tv_desc);
        textView3.setMaxLines(z10 ? 1 : 2);
        String str2 = this.f51158e;
        if (Intrinsics.c(str2, "minitv_explore")) {
            textView3.setText(subjectB.getDescription());
        } else if (Intrinsics.c(str2, "minitv_favorite")) {
            textView3.setText(subjectB.getTotalEpisode() + " EPs");
        }
        TextView textView4 = (TextView) holder.getView(R$id.btn_download);
        textView4.setText(this.f51159f ? Utils.a().getString(R$string.short_tv_download) : Utils.a().getString(R$string.short_tv_play));
        textView4.setCompoundDrawablesWithIntrinsicBounds(this.f51159f ? R$mipmap.short_tv_ic_download_white : R$mipmap.short_tv_ic_play_white_trending, 0, 0, 0);
    }
}

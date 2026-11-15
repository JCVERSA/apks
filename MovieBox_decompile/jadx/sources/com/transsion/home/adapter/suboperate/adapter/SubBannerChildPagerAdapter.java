package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.net.Uri;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.hisavana.common.bean.TAdNativeInfo;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.DownloadManagerApi;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class SubBannerChildPagerAdapter extends RecyclerView.Adapter {

    private List f43256a;

    private final int f43257b;

    private final OperateItem f43258c;

    private final int f43259d;

    private final int f43260e;

    public static final class SubViewPagerViewHolder extends RecyclerView.a0 {

        private final int f43261a;

        private final OperateItem f43262b;

        private final ImageView f43263c;

        private final ImageView f43264d;

        private final TextView f43265e;

        private final TextView f43266f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubViewPagerViewHolder(View itemView, int i10, OperateItem operateItem) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            Intrinsics.h(operateItem, "operateItem");
            this.f43261a = i10;
            this.f43262b = operateItem;
            View viewFindViewById = itemView.findViewById(R$id.contentIV);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f43263c = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.playIV);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f43264d = (ImageView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.titleTV);
            Intrinsics.g(viewFindViewById3, "findViewById(...)");
            this.f43265e = (TextView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R$id.desTV);
            Intrinsics.g(viewFindViewById4, "findViewById(...)");
            this.f43266f = (TextView) viewFindViewById4;
        }

        public static final Unit h(BannerData bannerData, SubViewPagerViewHolder subViewPagerViewHolder, int i10, View it) {
            Intrinsics.h(it, "it");
            String deepLink = bannerData.getDeepLink();
            if (deepLink != null) {
                if (!yg.l.f76264a.e()) {
                    fh.b.f60176a.d(R$string.no_network_toast);
                    return Unit.f64096a;
                }
                Uri uriG = com.transsion.baselib.helper.b.f42123a.g(Uri.parse(deepLink + "&module_name=opt_banner_free&autoPlay=true&ops=" + bannerData.getOps()));
                if (uriG != null) {
                    ij.k.o(uriG);
                }
                subViewPagerViewHolder.j(bannerData, i10, DownloadManagerApi.x0(DownloadManagerApi.f56187j.a(), bannerData.getSubjectId(), null, false, false, 12, null) ? "play_subject" : "download_subject");
            }
            return Unit.f64096a;
        }

        private final SpannableString i(Subject subject) {
            int iIndexOf;
            List listR0;
            StringBuilder sb2 = new StringBuilder();
            String releaseDate = subject.getReleaseDate();
            String genre = subject.getGenre();
            String str = (genre == null || (listR0 = StringsKt.R0(genre, new char[]{','}, false, 0, 6, null)) == null) ? null : (String) CollectionsKt.k0(listR0);
            if (releaseDate != null && releaseDate.length() != 0) {
                sb2.append(" | ");
                sb2.append(releaseDate);
            }
            if (str != null) {
                sb2.append(" | ");
                sb2.append(str);
            }
            SpannableString spannableString = new SpannableString(sb2);
            if (releaseDate != null && releaseDate.length() != 0) {
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_20));
                ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_60));
                spannableString.setSpan(foregroundColorSpan, 0, 3, 17);
                spannableString.setSpan(foregroundColorSpan2, 3, releaseDate.length() + 3, 17);
            }
            if (str != null && (iIndexOf = sb2.indexOf(str)) >= 3) {
                ForegroundColorSpan foregroundColorSpan3 = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_20));
                ForegroundColorSpan foregroundColorSpan4 = new ForegroundColorSpan(Utils.a().getResources().getColor(R$color.white_60));
                spannableString.setSpan(foregroundColorSpan3, iIndexOf - 3, iIndexOf, 17);
                spannableString.setSpan(foregroundColorSpan4, iIndexOf, sb2.length(), 17);
            }
            return spannableString;
        }

        private final void j(BannerData bannerData, int i10, String str) {
            HashMap map = new HashMap();
            map.put("event_type", "click_banner_poster");
            map.put("sequence", String.valueOf(i10));
            map.put("module_name", str);
            map.put("tabId", String.valueOf(this.f43261a));
            if (bannerData != null) {
                sk.b.b(bannerData, map);
            }
            sk.b.a(this.f43262b, map);
            com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43261a), map);
        }

        private final void k(BannerData bannerData, ImageView imageView) {
            if (!(bannerData != null ? Intrinsics.c(bannerData.getHasResource(), Boolean.TRUE) : false)) {
                imageView.setImageResource(R$drawable.ic_trending_arrow);
            } else if (!ij.t.f62121a.b() || bannerData.getSubjectType() == SubjectType.SHORT_TV.getValue()) {
                imageView.setImageResource(R$drawable.ic_trending_download);
            } else {
                imageView.setImageResource(R$drawable.ic_trending_play);
            }
        }

        public final void g(final BannerData bannerData, final int i10) {
            String url;
            String thumbnail;
            Cover cover;
            Cover cover2;
            Intrinsics.h(bannerData, "bannerData");
            Subject subject = bannerData.getSubject();
            if (subject == null || (cover2 = subject.getCover()) == null || (url = cover2.getUrl()) == null) {
                Image image = bannerData.getImage();
                url = image != null ? image.getUrl() : null;
            }
            Subject subject2 = bannerData.getSubject();
            if (subject2 == null || (cover = subject2.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                Image image2 = bannerData.getImage();
                thumbnail = image2 != null ? image2.getThumbnail() : null;
            }
            if (bannerData.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1(url, this, null), 3, null);
            } else {
                ni.f.a aVar = ni.f.f67269a;
                Context context = this.f43263c.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                if (url == null) {
                    url = "";
                }
                ni.f.b bVarG = bVarM.g(url);
                if (thumbnail == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).i(R$mipmap.ic_img_placeholder).m(lj.a.b(40)).c(lj.a.b(56)).d(this.f43263c);
            }
            this.itemView.setClickable(false);
            Subject subject3 = bannerData.getSubject();
            if (subject3 != null) {
                TextView textView = this.f43265e;
                String title = subject3.getTitle();
                textView.setText(title != null ? title : "");
                SpannableString spannableStringI = i(subject3);
                if (spannableStringI.length() > 0) {
                    this.f43266f.setText(spannableStringI);
                    this.f43266f.setCompoundDrawablesWithIntrinsicBounds(com.transsion.moviedetailapi.h.a(subject3.getSubjectType()), 0, 0, 0);
                }
            }
            if (bannerData.getSubject() == null) {
                this.f43265e.setText(bannerData.getContent());
                this.f43266f.setText((CharSequence) null);
            }
            CharSequence text = this.f43266f.getText();
            if (text == null || text.length() == 0) {
                this.f43266f.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            }
            TextView textView2 = this.f43266f;
            CharSequence text2 = textView2.getText();
            textView2.setVisibility(text2 == null || text2.length() == 0 ? 8 : 0);
            View itemView = this.itemView;
            Intrinsics.g(itemView, "itemView");
            uf.c.c(itemView, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubBannerChildPagerAdapter.SubViewPagerViewHolder.h(bannerData, this, i10, (View) obj);
                }
            }, 1, null);
            k(bannerData, this.f43264d);
        }

        public final ImageView getImageView() {
            return this.f43263c;
        }
    }

    public static final class a extends RecyclerView.a0 {

        private final ImageView f43267a;

        private final ImageView f43268b;

        private final ImageView f43269c;

        private final TextView f43270d;

        private final TextView f43271e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R$id.iconBg);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f43267a = (ImageView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.contentIV);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f43268b = (ImageView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R$id.playIV);
            Intrinsics.g(viewFindViewById3, "findViewById(...)");
            this.f43269c = (ImageView) viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R$id.titleTV);
            Intrinsics.g(viewFindViewById4, "findViewById(...)");
            this.f43270d = (TextView) viewFindViewById4;
            View viewFindViewById5 = itemView.findViewById(R$id.desTV);
            Intrinsics.g(viewFindViewById5, "findViewById(...)");
            this.f43271e = (TextView) viewFindViewById5;
        }

        public static final Unit i(View it) {
            Intrinsics.h(it, "it");
            BannerADDataHelper.f43481a.l();
            return Unit.f64096a;
        }

        public static final Unit j(AdMaterialList adMaterialList, AdPlans adPlans, View it) {
            Intrinsics.h(it, "it");
            com.transsion.ad.strategy.b.f41175a.a(adMaterialList != null ? adMaterialList.getDeeplink() : null, adMaterialList != null ? adMaterialList.getH5Link() : null, adPlans);
            return Unit.f64096a;
        }

        public final void h(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            final AdPlans plans;
            String url;
            String thumbnail;
            if (biddingIntermediateMaterialBean == null || (plans = biddingIntermediateMaterialBean.getPlans()) == null) {
                return;
            }
            TAdNativeInfo nativeInfo = biddingIntermediateMaterialBean.getNativeInfo();
            if (nativeInfo != null) {
                this.f43270d.setText(nativeInfo.getTitle());
                this.f43271e.setText(nativeInfo.getDescription());
                RequestManager requestManagerWith = Glide.with(this.f43267a.getContext());
                TAdNativeInfo.Image icon = nativeInfo.getIcon();
                requestManagerWith.load2(icon != null ? icon.getUrl() : null).transform(new sf.a(50, 8, true)).into(this.f43267a);
                this.f43268b.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                RequestManager requestManagerWith2 = Glide.with(this.f43268b.getContext());
                TAdNativeInfo.Image icon2 = nativeInfo.getIcon();
                requestManagerWith2.load2(icon2 != null ? icon2.getUrl() : null).placeholder(R$mipmap.ic_img_placeholder).into(this.f43268b);
                this.f43269c.setImageResource(R$drawable.ic_trending_arrow);
                View itemView = this.itemView;
                Intrinsics.g(itemView, "itemView");
                uf.c.c(itemView, 0L, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return SubBannerChildPagerAdapter.a.i((View) obj);
                    }
                }, 1, null);
                return;
            }
            com.transsion.ad.monopoly.plan.c cVar = com.transsion.ad.monopoly.plan.c.f41120a;
            AdMaterialList adMaterialListC = cVar.c(plans);
            MbAdImage mbAdImageA = cVar.a(plans);
            this.f43268b.setImageResource(R$mipmap.ic_img_placeholder);
            ni.f.a aVar = ni.f.f67269a;
            Context context = this.f43268b.getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            String str = "";
            if (mbAdImageA == null || (url = mbAdImageA.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            if (mbAdImageA != null && (thumbnail = mbAdImageA.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).i(R$mipmap.ic_img_placeholder).m(lj.a.b(40)).c(lj.a.b(56)).d(this.f43268b);
            this.f43268b.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f43270d.setText(adMaterialListC != null ? adMaterialListC.getTitle() : null);
            this.f43271e.setText(adMaterialListC != null ? adMaterialListC.getDesc() : null);
            this.f43271e.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            this.f43269c.setImageResource(R$drawable.ic_trending_arrow);
            final AdMaterialList adMaterialListC2 = cVar.c(plans);
            View itemView2 = this.itemView;
            Intrinsics.g(itemView2, "itemView");
            uf.c.c(itemView2, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubBannerChildPagerAdapter.a.j(adMaterialListC2, plans, (View) obj);
                }
            }, 1, null);
        }
    }

    public SubBannerChildPagerAdapter(List banners, int i10, OperateItem operateItem) {
        Intrinsics.h(banners, "banners");
        Intrinsics.h(operateItem, "operateItem");
        this.f43256a = banners;
        this.f43257b = i10;
        this.f43258c = operateItem;
        this.f43260e = 1;
    }

    private final BannerData g(int i10) {
        int size;
        if (!this.f43256a.isEmpty() && (size = i10 % this.f43256a.size()) >= 0 && size < this.f43256a.size()) {
            return (BannerData) this.f43256a.get(size);
        }
        return null;
    }

    @Override
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override
    public int getItemViewType(int i10) {
        BannerData bannerDataG = g(i10);
        return (bannerDataG != null ? bannerDataG.getBiddingAdData() : null) != null ? this.f43260e : this.f43259d;
    }

    public final void h(List list) {
        Intrinsics.h(list, "<set-?>");
        this.f43256a = list;
    }

    @Override
    public void onBindViewHolder(RecyclerView.a0 holder, int i10) {
        Intrinsics.h(holder, "holder");
        if (this.f43256a.isEmpty()) {
            return;
        }
        int size = i10 % this.f43256a.size();
        BannerData bannerData = (BannerData) this.f43256a.get(size);
        if (bannerData == null) {
            return;
        }
        if (holder instanceof a) {
            ((a) holder).h(bannerData.getBiddingAdData());
        } else if (holder instanceof SubViewPagerViewHolder) {
            ((SubViewPagerViewHolder) holder).g(bannerData, size);
        }
    }

    @Override
    public RecyclerView.a0 onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_sub_top_banner_card, parent, false);
        if (i10 == this.f43260e) {
            Intrinsics.e(viewInflate);
            return new a(viewInflate);
        }
        Intrinsics.e(viewInflate);
        return new SubViewPagerViewHolder(viewInflate, this.f43257b, this.f43258c);
    }
}

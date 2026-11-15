package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.hisavana.common.bean.TAdNativeInfo;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.gslb.GslbSdk;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.bean.BannerData;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class SubBannerADViewHolder extends RecyclerView.a0 {

    public static final a f43242h = new a(null);

    public static final int f43243i = 8;

    private static final int f43244j = Color.parseColor("#101114");

    private static final int f43245k = a0.a(237.0f);

    private static final int f43246l = a0.a(37.0f);

    private static final int f43247m = a0.a(57.0f);

    private final View f43248a;

    private final View f43249b;

    private final View f43250c;

    private final FrameLayout f43251d;

    private final NativeWrapperAdView f43252e;

    private com.transsion.ad.bidding.base.r f43253f;

    private n0 f43254g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubBannerADViewHolder(View itemView) {
        super(itemView);
        Intrinsics.h(itemView, "itemView");
        View viewFindViewById = itemView.findViewById(R$id.home_sub_pager_items_status);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f43248a = viewFindViewById;
        View viewFindViewById2 = itemView.findViewById(R$id.home_sub_pager_items_space);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f43249b = viewFindViewById2;
        View viewFindViewById3 = itemView.findViewById(R$id.home_sub_pager_items_top_mask);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.f43250c = viewFindViewById3;
        View viewFindViewById4 = itemView.findViewById(R$id.home_sub_pager_items_container);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f43251d = (FrameLayout) viewFindViewById4;
        View viewFindViewById5 = itemView.findViewById(R$id.nativeView);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        this.f43252e = (NativeWrapperAdView) viewFindViewById5;
    }

    private final GradientDrawable j(String str) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(new int[]{Color.parseColor(StringsKt.Q(str, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(str, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(str, Utils.SEPARATOR, "#00", false, 4, null))});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        return gradientDrawable;
    }

    private final void l(TAdNativeInfo tAdNativeInfo) {
        TAdNativeInfo.Image image;
        ViewGroup.LayoutParams layoutParams = this.f43252e.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = -2;
        }
        List<TAdNativeInfo.Image> imageList = tAdNativeInfo.getImageList();
        String url = (imageList == null || (image = (TAdNativeInfo.Image) CollectionsKt.k0(imageList)) == null) ? null : image.getUrl();
        if (url == null || StringsKt.q0(url)) {
            m(ViewCompat.MEASURED_STATE_MASK);
        } else {
            Glide.with(GslbSdk.context).asBitmap().load2(url).into(new CustomTarget() {
                @Override
                public void onLoadCleared(Drawable drawable) {
                }

                @Override
                public void onLoadFailed(Drawable drawable) {
                    wf.a.C0922a.f(wf.a.f74274a, "BannerADDataHelper", "onLoadFailed", false, 4, null);
                    this.f43255a.m(ViewCompat.MEASURED_STATE_MASK);
                }

                @Override
                public void onResourceReady(Bitmap resource, Transition transition) {
                    Intrinsics.h(resource, "resource");
                    n0 n0Var = this.f43255a.f43254g;
                    if (n0Var != null) {
                        kotlinx.coroutines.k.d(n0Var, y0.b(), null, new SubBannerADViewHolder$renderHiADMask$1$onResourceReady$1(resource, this.f43255a, null), 2, null);
                    }
                }
            });
        }
    }

    public final void m(int i10) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format(Locale.ROOT, "#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(16777215 & i10)}, 1));
        Intrinsics.g(str, "format(...)");
        this.f43248a.setBackgroundColor(i10);
        this.f43249b.setBackgroundColor(i10);
        this.f43250c.setBackground(j(str));
        this.f43252e.post(new Runnable() {
            @Override
            public final void run() {
                SubBannerADViewHolder.n(this.f43306a);
            }
        });
    }

    public static final void n(SubBannerADViewHolder subBannerADViewHolder) {
        int i10;
        int measuredHeight = subBannerADViewHolder.f43252e.getMeasuredHeight();
        if (measuredHeight == 0) {
            i10 = f43246l;
        } else {
            i10 = measuredHeight < 10 ? 1 : f43245k - measuredHeight;
        }
        subBannerADViewHolder.f43249b.getLayoutParams().height = RangesKt.l(i10, 1, f43247m);
        wf.a.C0922a.f(wf.a.f74274a, "BannerADDataHelper", "nativeViewHeight: " + measuredHeight + ", space height: " + i10 + ", space.layoutParams.height: " + subBannerADViewHolder.f43249b.getLayoutParams().height, false, 4, null);
        subBannerADViewHolder.f43249b.requestLayout();
        uf.c.k(subBannerADViewHolder.f43249b);
    }

    public final void i(BannerData bannerData) {
        BiddingIntermediateMaterialBean biddingAdData;
        n0 n0Var = this.f43254g;
        if (n0Var == null || !o0.g(n0Var)) {
            this.f43254g = o0.a(y0.c().plus(JobKt__JobKt.b(null, 1, null)));
        }
        this.f43248a.getLayoutParams().height = com.blankj.utilcode.util.d.c();
        this.f43251d.getLayoutParams().height = ((y.e() * 9) / 16) + a0.a(44.0f);
        if (this.f43253f == null) {
            ow.b bVar = ow.b.f68937a;
            Context context = this.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            this.f43253f = bVar.a(context, "TrendingNativeBannerScene");
        }
        BannerADDataHelper.f43481a.i(this.f43252e, this.f43253f, bannerData != null ? bannerData.getBiddingAdData() : null);
        if (bannerData == null || (biddingAdData = bannerData.getBiddingAdData()) == null) {
            return;
        }
        this.f43249b.getLayoutParams().height = 0;
        uf.c.g(this.f43249b);
        TAdNativeInfo nativeInfo = biddingAdData.getNativeInfo();
        if (nativeInfo != null) {
            l(nativeInfo);
            return;
        }
        AdPlans plans = biddingAdData.getPlans();
        if (plans != null) {
            ViewGroup.LayoutParams layoutParams = this.f43252e.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = -1;
            }
            MbAdImage mbAdImageB = com.transsion.ad.monopoly.plan.c.f41120a.b(plans);
            String averageHueDark = mbAdImageB != null ? mbAdImageB.getAverageHueDark() : null;
            if (averageHueDark != null && StringsKt.c0(averageHueDark, Utils.SEPARATOR, false, 2, null)) {
                this.f43248a.setBackgroundColor(Color.parseColor(averageHueDark));
                this.f43250c.setBackground(j(averageHueDark));
                return;
            }
            int i10 = f43244j;
            this.f43248a.setBackgroundColor(i10);
            View view = this.f43250c;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format(Locale.ROOT, "#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(i10 & 16777215)}, 1));
            Intrinsics.g(str, "format(...)");
            view.setBackground(j(str));
        }
    }

    public final void k() {
        BannerADDataHelper.f43481a.n();
        n0 n0Var = this.f43254g;
        if (n0Var != null) {
            o0.d(n0Var, null, 1, null);
        }
    }
}

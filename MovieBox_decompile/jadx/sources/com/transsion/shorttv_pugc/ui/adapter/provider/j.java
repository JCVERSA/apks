package com.transsion.shorttv_pugc.ui.adapter.provider;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.BannerBean;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.Image;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVBannerAdapter;
import com.transsion.shorttv_pugc.ui.widget.ShortTVBannerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

public final class j extends BaseItemProvider {

    private final Fragment f52063e;

    private final String f52064f;

    private final boolean f52065g;

    private final boolean f52066h;

    private final int f52067i;

    private ShortTVBannerAdapter f52068j;

    private final Lazy f52069k;

    private int f52070l;

    private long f52071m;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        final View f52073b;

        a(View view) {
            this.f52073b = view;
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            j jVar = j.this;
            jVar.O(this.f52073b, i10, jVar.f52070l, f10);
        }

        @Override
        public void onPageSelected(int i10) {
            if (j.this.f52063e.isResumed()) {
                j.this.M();
                j.this.f52071m = System.currentTimeMillis();
            }
            j.this.f52070l = i10;
        }
    }

    public j(Fragment fragment, String pageName, boolean z10, boolean z11) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        this.f52063e = fragment;
        this.f52064f = pageName;
        this.f52065g = z10;
        this.f52066h = z11;
        this.f52067i = com.blankj.utilcode.util.d.c();
        this.f52069k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return j.H(this.f52059a);
            }
        });
        this.f52070l = -1;
    }

    public static final com.transsion.shorttv_pugc.utils.a H(j jVar) {
        return new com.transsion.shorttv_pugc.utils.a(jVar.f52064f);
    }

    public static final Unit J(j jVar, View view, int i10, BannerData item) {
        Intrinsics.h(view, "<unused var>");
        Intrinsics.h(item, "item");
        jVar.N(i10, item);
        return Unit.f64096a;
    }

    public static final void K(j jVar, View view) {
        jVar.O(view, 0, 0, 0.0f);
    }

    private final com.transsion.shorttv_pugc.utils.a L() {
        return (com.transsion.shorttv_pugc.utils.a) this.f52069k.getValue();
    }

    public final void M() {
        List data;
        BannerData bannerData;
        List data2;
        int i10 = this.f52070l;
        if (i10 >= 0) {
            ShortTVBannerAdapter shortTVBannerAdapter = this.f52068j;
            if (i10 >= ((shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? 0 : data2.size())) {
                return;
            }
            long jCurrentTimeMillis = this.f52071m > 0 ? System.currentTimeMillis() - this.f52071m : 0L;
            ShortTVBannerAdapter shortTVBannerAdapter2 = this.f52068j;
            if (shortTVBannerAdapter2 == null || (data = shortTVBannerAdapter2.getData()) == null || (bannerData = (BannerData) data.get(this.f52070l)) == null) {
                return;
            }
            com.transsion.shorttv_pugc.utils.a aVarL = L();
            String str = this.f52064f;
            String value = ShortTvItemType.BANNER.getValue();
            String subjectId = bannerData.getSubjectId();
            Boolean hasResource = bannerData.getHasResource();
            String deepLink = bannerData.getDeepLink();
            Integer numValueOf = Integer.valueOf(this.f52070l);
            Image image = bannerData.getImage();
            aVarL.a((4144 & 1) != 0 ? null : str, (4144 & 2) != 0 ? null : "opt", (4144 & 4) != 0 ? null : value, (4144 & 8) != 0 ? null : subjectId, (4144 & 16) != 0 ? null : null, (4144 & 32) != 0 ? null : null, (4144 & 64) != 0 ? null : hasResource, (4144 & 128) != 0 ? null : deepLink, (4144 & 256) != 0 ? null : numValueOf, (4144 & 512) != 0 ? null : image != null ? image.getUrl() : null, (4144 & 1024) != 0 ? 0L : jCurrentTimeMillis, (4144 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4144 & 4096) == 0 ? null : null);
        }
    }

    private final void N(int i10, BannerData bannerData) {
        com.transsion.shorttv_pugc.utils.a aVarL = L();
        String str = this.f52064f;
        ShortTvItemType shortTvItemType = ShortTvItemType.BANNER;
        String value = shortTvItemType.getValue();
        String subjectId = bannerData.getSubjectId();
        Boolean hasResource = bannerData.getHasResource();
        String deepLink = bannerData.getDeepLink();
        Integer numValueOf = Integer.valueOf(i10);
        Image image = bannerData.getImage();
        aVarL.c(str, "opt", value, (4272 & 8) != 0 ? null : subjectId, (4272 & 16) != 0 ? null : null, (4272 & 32) != 0 ? null : null, (4272 & 64) != 0 ? null : hasResource, (4272 & 128) != 0 ? null : null, (4272 & 256) != 0 ? null : deepLink, (4272 & 512) != 0 ? null : numValueOf, (4272 & 1024) != 0 ? null : image != null ? image.getUrl() : null, (4272 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4272 & 4096) != 0 ? null : null);
        String deepLink2 = bannerData.getDeepLink();
        if (deepLink2 != null) {
            Uri uriA = hs.a.f61487a.a(Uri.parse(deepLink2 + "&ops=" + shortTvItemType.getValue()));
            if (uriA != null) {
                hr.c.j(uriA);
            }
        }
    }

    public final void O(View view, int i10, int i11, float f10) {
        Image image;
        String averageHueDark;
        Image image2;
        String averageHueDark2;
        List data;
        List data2;
        ShortTVBannerAdapter shortTVBannerAdapter = this.f52068j;
        BannerData bannerData = null;
        BannerData bannerData2 = (shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? null : (BannerData) data2.get(i10);
        ShortTVBannerAdapter shortTVBannerAdapter2 = this.f52068j;
        if (shortTVBannerAdapter2 != null && (data = shortTVBannerAdapter2.getData()) != null) {
            bannerData = (BannerData) data.get(i11);
        }
        if (bannerData2 == null || (image = bannerData2.getImage()) == null || (averageHueDark = image.getAverageHueDark()) == null || bannerData == null || (image2 = bannerData.getImage()) == null || (averageHueDark2 = image2.getAverageHueDark()) == null) {
            return;
        }
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{i10 == i11 ? Color.parseColor(averageHueDark) : wy.a.a(f10, Color.parseColor(averageHueDark), Color.parseColor(averageHueDark2)), 0}));
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        List<BannerData> banners;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        BannerBean banner = item.getBanner();
        if (banner == null || (banners = banner.getBanners()) == null) {
            return;
        }
        final View view = helper.getView(R$id.v_banner_bg);
        helper.getView(R$id.v_top_space);
        View view2 = helper.getView(R$id.v_bar_space);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).height = this.f52067i + gs.a.a(this.f52066h ? 50 : 10);
        view2.setLayoutParams(bVar);
        ShortTVBannerView shortTVBannerView = (ShortTVBannerView) helper.getView(R$id.banner);
        ShortTVBannerAdapter shortTVBannerAdapter = new ShortTVBannerAdapter();
        shortTVBannerAdapter.k(new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return j.J(this.f52060a, (View) obj, ((Integer) obj2).intValue(), (BannerData) obj3);
            }
        });
        shortTVBannerView.setAutoTurningTime(4000L);
        shortTVBannerView.setPagerScrollDuration(1000L);
        shortTVBannerView.setPageMargin(a0.a((this.f52065g ? 3 : 1) * 44.0f), a0.a(16.0f));
        shortTVBannerView.addPageTransformer(new com.to.aboomy.pager2banner.b());
        shortTVBannerView.setOuterPageChangeListener(new a(view));
        shortTVBannerView.setAdapter(shortTVBannerAdapter);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(banners);
        shortTVBannerAdapter.setData(arrayList);
        shortTVBannerView.post(new Runnable() {
            @Override
            public final void run() {
                j.K(this.f52061a, view);
            }
        });
    }

    @Override
    public int l() {
        return ShortTvItemType.BANNER.ordinal();
    }

    @Override
    public int m() {
        return R$layout.pugc_short_tv_view_banner;
    }
}

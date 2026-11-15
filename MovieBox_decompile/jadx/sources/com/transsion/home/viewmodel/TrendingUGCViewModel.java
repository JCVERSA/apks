package com.transsion.home.viewmodel;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import androidx.p009lifecycle.u0;
import androidx.p009lifecycle.v0;
import com.google.gson.Gson;
import com.transsion.baselib.net.LaunchWithErrorHandlerKt;
import com.transsion.home.adapter.trending.adapter.SportLiveAdapter;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.DisplayMeta;
import com.transsion.home.bean.FeedsLayoutType;
import com.transsion.home.bean.LiveListItem;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RoomEntranceResponse;
import com.transsion.home.bean.TrendingRequestEntity;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class TrendingUGCViewModel extends androidx.p009lifecycle.b {

    public static final a f44486l = new a(null);

    public static final int f44487m = 8;

    private static TrendingUGCViewModel f44488n;

    private String f44489b;

    private int f44490c;

    private boolean f44491d;

    private List f44492e;

    private final Lazy f44493f;

    private final Lazy f44494g;

    private final Lazy f44495h;

    private final Lazy f44496i;

    private final Lazy f44497j;

    private final Lazy f44498k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TrendingUGCViewModel a(Application application) {
            Intrinsics.h(application, "application");
            if (TrendingUGCViewModel.f44488n == null) {
                TrendingUGCViewModel.f44488n = (TrendingUGCViewModel) v0.a.f9340e.a(application).create(TrendingUGCViewModel.class);
            }
            return TrendingUGCViewModel.f44488n;
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrendingUGCViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44489b = "1";
        this.f44490c = 14;
        this.f44493f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCViewModel.H();
            }
        });
        this.f44494g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCViewModel.G();
            }
        });
        this.f44495h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCViewModel.P();
            }
        });
        this.f44496i = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCViewModel.O();
            }
        });
        this.f44497j = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCViewModel.L();
            }
        });
        this.f44498k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCViewModel.s();
            }
        });
    }

    public final yk.e C() {
        return (yk.e) this.f44496i.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:116:0x02d8  */
    public final void F(MainOperateData mainOperateData) {
        List<OperateItem> items;
        ArrayList arrayList;
        List<BannerData> banners;
        List<BannerData> banners2;
        List listI0;
        if (mainOperateData == null || (items = mainOperateData.getItems()) == null) {
            return;
        }
        List<OperateItem> items2 = mainOperateData.getItems();
        mainOperateData.setItems((items2 == null || (listI0 = CollectionsKt.I0(items2, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                return ComparisonsKt.d(((OperateItem) t10).getPosition(), ((OperateItem) t11).getPosition());
            }
        })) == null) ? null : CollectionsKt.U0(listI0));
        ArrayList<OperateItem> arrayList2 = new ArrayList();
        for (OperateItem operateItem : items) {
            if (Intrinsics.c(operateItem.getType(), PostItemType.SPORT_LIVE.getValue())) {
                List<LiveListItem> liveList = operateItem.getLiveList();
                if (liveList != null) {
                    arrayList = new ArrayList();
                    for (Object obj : liveList) {
                        if (!Intrinsics.c(((LiveListItem) obj).getStatus(), SportLiveAdapter.P)) {
                            arrayList.add(obj);
                        }
                    }
                } else {
                    arrayList = null;
                }
                if (arrayList != null && !arrayList.isEmpty()) {
                    arrayList2.add(operateItem);
                }
            } else if (Intrinsics.c(operateItem.getType(), PostItemType.UGC_MOVIE_RANK.getValue())) {
                List<UGCContent> contentList = operateItem.getContentList();
                if ((contentList != null ? contentList.size() : 0) >= 3) {
                    arrayList2.add(operateItem);
                }
            } else if (Intrinsics.c(operateItem.getType(), PostItemType.CUSTOM_DATA.getValue())) {
                BannerBean banner = operateItem.getBanner();
                if (((banner == null || (banners = banner.getBanners()) == null) ? 0 : banners.size()) >= 3) {
                    arrayList2.add(operateItem);
                }
            } else {
                if (Intrinsics.c(operateItem.getType(), PostItemType.UGC_BANNER.getValue())) {
                    BannerBean banner2 = operateItem.getBanner();
                    if (((banner2 == null || (banners2 = banner2.getBanners()) == null) ? 0 : banners2.size()) != 0) {
                    }
                }
                arrayList2.add(operateItem);
            }
        }
        Integer groupPos = mainOperateData.getGroupPos();
        if ((groupPos != null ? groupPos.intValue() : 0) > 0) {
            ep.k.f59780a.m(true);
            Integer groupPos2 = mainOperateData.getGroupPos();
            int iIntValue = groupPos2 != null ? groupPos2.intValue() : 0;
            if (iIntValue >= items.size()) {
                arrayList2.add(new OperateItem(null, PostItemType.ROOM.getValue(), null, null, "TrendingRoom", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870893, null));
            } else {
                arrayList2.add(iIntValue, new OperateItem(null, PostItemType.ROOM.getValue(), null, null, "TrendingRoom", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870893, null));
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (OperateItem operateItem2 : arrayList2) {
            String type = operateItem2.getType();
            PostItemType postItemType = PostItemType.UGC_SUBJECT_LIST;
            if (Intrinsics.c(type, postItemType.getValue()) && Intrinsics.c(operateItem2.getStyleTemplate(), com.transsion.home.adapter.operateUGC.b.M)) {
                List<UGCContent> contentList2 = operateItem2.getContentList();
                boolean z10 = (contentList2 != null ? contentList2.size() : 0) % 2 == 0;
                String title = operateItem2.getTitle();
                if (!(title == null || title.length() == 0)) {
                    arrayList3.add(new OperateItem(operateItem2.getTitle(), PostItemType.FEEDS_TITLE.getValue(), null, operateItem2.getDeepLink(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870900, null));
                }
                List<UGCContent> contentList3 = operateItem2.getContentList();
                if (contentList3 != null) {
                    int i10 = 0;
                    for (Object obj2 : contentList3) {
                        int i11 = i10 + 1;
                        if (i10 < 0) {
                            CollectionsKt.u();
                        }
                        UGCContent uGCContent = (UGCContent) obj2;
                        if (i10 == 0) {
                            arrayList3.add(new OperateItem(null, PostItemType.TRENDING_FEES_BIG.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, uGCContent.getVideo(), null, null, null, null, null, null, operateItem2, null, 401604605, null));
                        } else if (z10) {
                            List<UGCContent> contentList4 = operateItem2.getContentList();
                            if (!(contentList4 != null && i10 == contentList4.size() - 1)) {
                                arrayList3.add(new OperateItem(null, PostItemType.TRENDING_FEES_GRID.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, uGCContent.getVideo(), null, null, null, null, null, null, operateItem2, null, 401604605, null));
                            }
                        } else {
                            arrayList3.add(new OperateItem(null, PostItemType.TRENDING_FEES_GRID.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, uGCContent.getVideo(), null, null, null, null, null, null, operateItem2, null, 401604605, null));
                        }
                        i10 = i11;
                    }
                }
                arrayList3.add(new OperateItem(null, PostItemType.TRENDING_MARGIN.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
            } else {
                if (Intrinsics.c(operateItem2.getType(), postItemType.getValue()) && Intrinsics.c(operateItem2.getStyleTemplate(), com.transsion.home.adapter.operateUGC.b.N)) {
                    operateItem2.setType(PostItemType.UGC_PORTRAIT_GRID.getValue());
                }
                arrayList3.add(operateItem2);
            }
        }
        if (y().f() == null && !yg.l.f76264a.e()) {
            int iX = x(arrayList3);
            if (iX >= 0 && iX < arrayList3.size()) {
                arrayList3.add(iX, new OperateItem(null, PostItemType.NO_NETWORK.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870909, null));
            }
        }
        if (mainOperateData.getTrendingTitle() != null) {
            arrayList3.add(new OperateItem(mainOperateData.getTrendingTitle(), PostItemType.FEEDS_TITLE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870908, null));
        }
        mainOperateData.setItems(arrayList3);
    }

    public static final androidx.p009lifecycle.b0 G() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 H() {
        return new androidx.p009lifecycle.b0();
    }

    private final void K() {
        LaunchWithErrorHandlerKt.b(this, new TrendingUGCViewModel$requestOperateData$1(this, null), new TrendingUGCViewModel$requestOperateData$2(this, null));
    }

    public static final androidx.p009lifecycle.b0 L() {
        return new androidx.p009lifecycle.b0();
    }

    public final void M(MainOperateData mainOperateData) {
        List<OperateItem> items;
        if (mainOperateData == null || (items = mainOperateData.getItems()) == null || !(!items.isEmpty())) {
            return;
        }
        String json = new Gson().toJson(mainOperateData);
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        bVar.b().putString("trending_operating_version", mainOperateData.getVersion());
        bVar.b().putString("trending_operating_data", json);
    }

    public static final yk.e O() {
        return (yk.e) kg.c.f63982e.a().h(yk.e.class);
    }

    public static final androidx.p009lifecycle.b0 P() {
        return new androidx.p009lifecycle.b0();
    }

    public static final com.transsion.home.viewmodel.preload.a s() {
        return new com.transsion.home.viewmodel.preload.a();
    }

    public final List t(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TrendingRespItem trendingRespItem = (TrendingRespItem) it.next();
            UGCContent content = trendingRespItem.getContent();
            if ((content != null ? content.getVideo() : null) != null) {
                DisplayMeta displayMeta = trendingRespItem.getDisplayMeta();
                if (Intrinsics.c(displayMeta != null ? displayMeta.getLayoutType() : null, FeedsLayoutType.FULL.getValue())) {
                    String value = PostItemType.TRENDING_FEES_BIG.getValue();
                    UGCContent content2 = trendingRespItem.getContent();
                    arrayList.add(new OperateItem(null, value, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, content2 != null ? content2.getVideo() : null, null, null, null, null, null, null, null, null, 535822333, null));
                } else {
                    DisplayMeta displayMeta2 = trendingRespItem.getDisplayMeta();
                    if (Intrinsics.c(displayMeta2 != null ? displayMeta2.getLayoutType() : null, FeedsLayoutType.HALF.getValue())) {
                        String value2 = PostItemType.TRENDING_FEES_GRID.getValue();
                        UGCContent content3 = trendingRespItem.getContent();
                        arrayList.add(new OperateItem(null, value2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, content3 != null ? content3.getVideo() : null, null, null, null, null, null, null, null, null, 535822333, null));
                    }
                }
            }
        }
        return arrayList;
    }

    public static final Unit v(TrendingUGCViewModel trendingUGCViewModel) {
        String string = zk.e.f76812a.b().getString("trending_room_entrance_cache_v2", "");
        if (string == null || string.length() == 0) {
            wf.a.f74274a.c("TrendingUGCFragment", "fetchGroupInfo failed without cache", true);
        } else {
            trendingUGCViewModel.B().n((RoomEntranceResponse) com.blankj.utilcode.util.o.d(string, RoomEntranceResponse.class));
            wf.a.f74274a.c("TrendingUGCFragment", "fetchGroupInfo use cache", true);
        }
        return Unit.f64096a;
    }

    private final com.transsion.home.viewmodel.preload.a w() {
        return (com.transsion.home.viewmodel.preload.a) this.f44498k.getValue();
    }

    public final void A(Context context) {
        Intrinsics.h(context, "context");
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("trending_operating_data", "");
        if (string == null || string.length() == 0) {
            string = w().e(context);
        }
        if (string != null) {
            try {
                if (string.length() == 0) {
                    wf.a.f74274a.c("PreloadTrending", "preloadOperatingCache json is null", true);
                } else {
                    MainOperateData mainOperateData = (MainOperateData) com.blankj.utilcode.util.o.d(string, MainOperateData.class);
                    if (mainOperateData != null) {
                        wf.a.C0922a c0922a = wf.a.f74274a;
                        List<OperateItem> items = mainOperateData.getItems();
                        c0922a.c("PreloadTrending", "load operating cache size=" + (items != null ? Integer.valueOf(items.size()) : null) + "}", true);
                        F(mainOperateData);
                        y().n(mainOperateData);
                    }
                }
            } catch (Exception e10) {
                wf.a.f74274a.c("PreloadTrending", "exception when from json " + e10.getMessage(), true);
            }
        } else {
            wf.a.f74274a.c("PreloadTrending", "preloadOperatingCache json is null", true);
        }
        K();
    }

    public final androidx.p009lifecycle.b0 B() {
        return (androidx.p009lifecycle.b0) this.f44497j.getValue();
    }

    public final List D() {
        return this.f44492e;
    }

    public final androidx.p009lifecycle.b0 E() {
        return (androidx.p009lifecycle.b0) this.f44495h.getValue();
    }

    public final void I() {
        this.f44489b = "1";
        this.f44490c = 14;
        K();
    }

    public final void J() {
        String string;
        if (this.f44491d) {
            return;
        }
        this.f44491d = true;
        TrendingRequestEntity trendingRequestEntity = new TrendingRequestEntity();
        trendingRequestEntity.setPage(this.f44489b);
        trendingRequestEntity.setPerPage(this.f44490c);
        trendingRequestEntity.setSessionId(jg.b.f63119a.h());
        Uri uriB = com.transsion.baselib.report.h.f42200a.b();
        if (uriB == null || (string = uriB.toString()) == null) {
            string = "";
        }
        trendingRequestEntity.setDeepLink(string);
        trendingRequestEntity.setLatest_events(new ej.a(ej.b.f59709a.e()));
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new TrendingUGCViewModel$requestFeedsList$1(trendingRequestEntity, this, null), 2, null);
    }

    public final void N(List list) {
        this.f44492e = list;
    }

    public final void u(boolean z10) {
        Function0 function0 = new Function0() {
            @Override
            public final Object invoke() {
                return TrendingUGCViewModel.v(this.f44548a);
            }
        };
        if (z10) {
            function0.invoke();
        } else {
            kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new TrendingUGCViewModel$fetchGroupInfo$1(this, function0, null), 2, null);
        }
    }

    public final int x(List operateItems) {
        Intrinsics.h(operateItems, "operateItems");
        OperateItem operateItem = (OperateItem) CollectionsKt.l0(operateItems, 0);
        return Intrinsics.c(operateItem != null ? operateItem.getType() : null, PostItemType.TRENDING_FEES_GRID.getValue()) ? 2 : 1;
    }

    public final androidx.p009lifecycle.b0 y() {
        return (androidx.p009lifecycle.b0) this.f44494g.getValue();
    }

    public final androidx.p009lifecycle.b0 z() {
        return (androidx.p009lifecycle.b0) this.f44493f.getValue();
    }
}

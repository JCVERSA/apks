package com.transsion.home.adapter.suboperate;

import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.adapter.operateUGC.provider.FeedsBigUGCProvider;
import com.transsion.home.adapter.operateUGC.provider.FeedsGridUGCProvider;
import com.transsion.home.adapter.operateUGC.provider.c;
import com.transsion.home.adapter.operateUGC.provider.f0;
import com.transsion.home.adapter.operateUGC.provider.j;
import com.transsion.home.adapter.operateUGC.provider.l;
import com.transsion.home.adapter.operateUGC.provider.p;
import com.transsion.home.adapter.operateUGC.provider.s;
import com.transsion.home.adapter.operateUGC.provider.w;
import com.transsion.home.adapter.suboperate.provider.SubFeedsEducationProvider;
import com.transsion.home.adapter.suboperate.provider.SubFeedsSingleImageProvider;
import com.transsion.home.adapter.suboperate.provider.SubHorizontalBannerProvider;
import com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider;
import com.transsion.home.adapter.suboperate.provider.SubRankListProvider;
import com.transsion.home.adapter.suboperate.provider.SubRankingProvider;
import com.transsion.home.adapter.suboperate.provider.b0;
import com.transsion.home.adapter.suboperate.provider.k;
import com.transsion.home.adapter.suboperate.provider.k0;
import com.transsion.home.adapter.suboperate.provider.q;
import com.transsion.home.adapter.suboperate.provider.r0;
import com.transsion.home.adapter.trending.provider.e;
import com.transsion.home.adapter.trending.provider.e0;
import com.transsion.home.adapter.trending.provider.i0;
import com.transsion.home.adapter.trending.provider.m;
import com.transsion.home.adapter.trending.provider.y;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingData;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.bean.RankingListItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.preload.b;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import t6.f;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u001e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B{\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u001e\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\b2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ%\u0010\u001e\u001a\u00020\f2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u001d\u001a\u00020\fH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\b2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020\b2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010\u0013\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010,R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020.0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0017\u0010;\u001a\u0002068\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:¨\u0006<"}, d2 = {"Lcom/transsion/home/adapter/suboperate/SubTabAdapter;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/home/bean/OperateItem;", "Lt6/i;", "", "typeList", "Lkotlin/Function1;", "", "", "onAppointmentCLick", "Lcom/transsion/home/fragment/tab/SubTabFragment;", "fragment", "", "tabId", "Lcom/transsion/home/preload/b;", "xmlPreloadImp", "onPositionScroll", "isTablet", "gridCount", "isUGCVideoMode", "<init>", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/transsion/home/fragment/tab/SubTabFragment;ILcom/transsion/home/preload/b;Lkotlin/jvm/functions/Function1;ZIZ)V", "T1", "()V", "", "list", "n1", "(Ljava/util/Collection;)V", "data", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onDetachedFromRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "I", "H", "Lkotlin/jvm/functions/Function1;", "Z", "", "", "J", "Ljava/util/List;", "supportTypes", "Lkotlinx/coroutines/t1;", "K", "Lkotlinx/coroutines/t1;", "mObserveJob", "Lcom/transsion/home/adapter/trending/provider/e;", "L", "Lcom/transsion/home/adapter/trending/provider/e;", "S1", "()Lcom/transsion/home/adapter/trending/provider/e;", "preferencesProvider", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubTabAdapter extends BaseProviderMultiAdapter<OperateItem> implements i {
    public static final int M = 8;

    private final int tabId;

    private final Function1<Integer, Unit> onPositionScroll;

    private final boolean isUGCVideoMode;

    private final List<String> supportTypes;

    private t1 mObserveJob;

    private final e preferencesProvider;

    public class a {

        public static final int[] f43237a;

        static {
            int[] iArr = new int[PostItemType.values().length];
            try {
                iArr[PostItemType.SUBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PostItemType.RANKING_MOVIE_HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PostItemType.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f43237a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SubTabAdapter(List<OperateItem> typeList, Function1<? super Function1<? super Boolean, Unit>, Unit> onAppointmentCLick, SubTabFragment fragment, int i10, b bVar, Function1<? super Integer, Unit> onPositionScroll, boolean z10, int i11, boolean z11) {
        super(CollectionsKt.U0(typeList));
        Intrinsics.h(typeList, "typeList");
        Intrinsics.h(onAppointmentCLick, "onAppointmentCLick");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(onPositionScroll, "onPositionScroll");
        this.tabId = i10;
        this.onPositionScroll = onPositionScroll;
        this.isUGCVideoMode = z11;
        this.supportTypes = new ArrayList();
        e eVar = new e();
        this.preferencesProvider = eVar;
        Function2 function2 = new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return SubTabAdapter.R1(this.f43239a, (String) obj, (BaseItemProvider) obj2);
            }
        };
        if (z11) {
            c cVar = new c(i10, fragment);
            fragment.getLifecycle().a(cVar);
            function2.invoke(PostItemType.UGC_BANNER.getValue(), cVar);
            function2.invoke(PostItemType.UGC_MOVIE_RANK.getValue(), new p(i10, z10));
            function2.invoke(PostItemType.UGC_MUSIC_RANK.getValue(), new s(i10));
            function2.invoke(PostItemType.UGC_FILTER.getValue(), new j(Integer.valueOf(i10), z10));
            function2.invoke(PostItemType.HASH_TAG.getValue(), new l(Integer.valueOf(i10)));
            function2.invoke(PostItemType.UGC_RANKING_LIST.getValue(), new w(i10));
            function2.invoke(PostItemType.UGC_VERTICAL_OPT_LIST.getValue(), new f0(i10));
            function2.invoke(PostItemType.TRENDING_FEES_GRID.getValue(), new FeedsGridUGCProvider(i11, i10));
            function2.invoke(PostItemType.TRENDING_FEES_BIG.getValue(), new FeedsBigUGCProvider(i10));
            function2.invoke(PostItemType.UGC_CUSTOM.getValue(), new k(i10, z10));
            function2.invoke(PostItemType.FEEDS_TITLE.getValue(), new r0());
            function2.invoke(PostItemType.TRENDING_NATIVE_AD.getValue(), new com.transsion.home.adapter.suboperate.provider.a());
            function2.invoke(PostItemType.UGC_SPORT_LIVE.getValue(), new e0(i10, z10));
            function2.invoke(PostItemType.UGC_SINGLE_IMAGE.getValue(), new y());
            function2.invoke(PostItemType.PREFERENCES.getValue(), eVar);
            return;
        }
        com.transsion.home.adapter.suboperate.provider.i iVar = new com.transsion.home.adapter.suboperate.provider.i(i10, fragment);
        fragment.getLifecycle().a(iVar);
        SubHorizontalBannerProvider subHorizontalBannerProvider = new SubHorizontalBannerProvider(i10, fragment);
        fragment.getLifecycle().a(subHorizontalBannerProvider);
        SubMyCourseProvider subMyCourseProvider = new SubMyCourseProvider(i10);
        fragment.getLifecycle().a(subMyCourseProvider);
        m mVar = new m(i10, bVar, true, z10);
        function2.invoke(PostItemType.HORIZONTAL_BANNER.getValue(), subHorizontalBannerProvider);
        function2.invoke(PostItemType.BANNER.getValue(), iVar);
        function2.invoke(PostItemType.FILTER.getValue(), new com.transsion.home.adapter.suboperate.provider.w(Integer.valueOf(i10), z10));
        function2.invoke(PostItemType.APPOINTMENT_LIST.getValue(), new com.transsion.home.adapter.suboperate.provider.c(onAppointmentCLick, i10));
        function2.invoke(PostItemType.CUSTOM_DATA.getValue(), new k(i10, z10));
        function2.invoke(PostItemType.SUBJECT.getValue(), new q(i10, z10));
        function2.invoke(PostItemType.SINGLE_SUBJECT.getValue(), new SubFeedsSingleImageProvider(i10, z10));
        function2.invoke(PostItemType.EDUCATION_SUBJECT.getValue(), new SubFeedsEducationProvider(i10));
        function2.invoke(PostItemType.TRENDING_NATIVE_AD.getValue(), new com.transsion.home.adapter.suboperate.provider.a());
        function2.invoke(PostItemType.OP_SUBJECTS_MOVIE.getValue(), mVar);
        function2.invoke(PostItemType.RANKING_MOVIE_HORIZONTAL.getValue(), mVar);
        function2.invoke(PostItemType.MY_COURSE.getValue(), subMyCourseProvider);
        function2.invoke(PostItemType.FEEDS_TITLE.getValue(), new r0());
        function2.invoke(PostItemType.OP_RANKING.getValue(), new SubRankingProvider(i10));
        function2.invoke(PostItemType.RANKING_LIST.getValue(), new SubRankListProvider(i10));
        function2.invoke(PostItemType.RANKING_LIST_MUSIC.getValue(), new b0(i10, z10));
        function2.invoke(PostItemType.RANKING_LIST_MULTI_TAB.getValue(), new i0(i10, z10));
        function2.invoke(PostItemType.PREFERENCES.getValue(), eVar);
        function2.invoke(PostItemType.POST_LIST.getValue(), new k0(i10, z10));
    }

    public static final Unit R1(SubTabAdapter subTabAdapter, String key, BaseItemProvider provider) {
        Intrinsics.h(key, "key");
        Intrinsics.h(provider, "provider");
        subTabAdapter.supportTypes.add(key);
        subTabAdapter.F1(provider);
        return Unit.f64096a;
    }

    private final void T1() {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.tabId), true)) {
            this.mObserveJob = kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubTabAdapter$registerCourse$1(this, null), 3, null);
        }
    }

    @Override
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        this.onPositionScroll.invoke(Integer.valueOf(holder.getBindingAdapterPosition()));
    }

    @Override
    protected int N1(List<? extends OperateItem> data, int position) {
        Trailer trailer;
        Cover cover;
        Intrinsics.h(data, "data");
        OperateItem operateItem = data.get(position);
        PostItemType.Companion companion = PostItemType.INSTANCE;
        String type = operateItem.getType();
        if (type == null) {
            type = "";
        }
        PostItemType postItemTypeA = companion.a(type);
        if (this.isUGCVideoMode && postItemTypeA != null) {
            if (postItemTypeA == PostItemType.UGC_CUSTOM) {
                return PostItemType.CUSTOM_DATA.ordinal();
            }
            if (postItemTypeA == PostItemType.UGC_SINGLE_IMAGE) {
                return PostItemType.SINGLE_IMAGE.ordinal();
            }
            if (postItemTypeA == PostItemType.UGC_SPORT_LIVE) {
                return PostItemType.SPORT_LIVE.ordinal();
            }
        }
        int i10 = postItemTypeA == null ? -1 : a.f43237a[postItemTypeA.ordinal()];
        if (i10 == -1) {
            return PostItemType.SUBJECT.ordinal();
        }
        Cover stills = null;
        if (i10 == 1) {
            Subject feedsSubject = operateItem.getFeedsSubject();
            Cover cover2 = feedsSubject != null ? feedsSubject.getCover() : null;
            Subject feedsSubject2 = operateItem.getFeedsSubject();
            if (feedsSubject2 == null || (trailer = feedsSubject2.getTrailer()) == null || (cover = trailer.getCover()) == null) {
                Subject feedsSubject3 = operateItem.getFeedsSubject();
                if (feedsSubject3 != null) {
                    stills = feedsSubject3.getStills();
                }
            } else {
                stills = cover;
            }
            if (HomeTabId.INSTANCE.h(Integer.valueOf(this.tabId), true)) {
                return PostItemType.EDUCATION_SUBJECT.ordinal();
            }
            return (stills == null || (cover2 != null && Intrinsics.c(stills.getSize(), cover2.getSize()) && Intrinsics.c(stills.getHeight(), cover2.getHeight()) && Intrinsics.c(stills.getWidth(), cover2.getWidth()))) ? PostItemType.SINGLE_SUBJECT.ordinal() : PostItemType.SUBJECT.ordinal();
        }
        if (i10 == 2) {
            operateItem.setRankingData(new RankingData(null, true, 1, null));
            return PostItemType.OP_SUBJECTS_MOVIE.ordinal();
        }
        if (i10 == 3) {
            BannerBean banner = operateItem.getBanner();
            return Intrinsics.c(banner != null ? banner.getStyle() : null, "HORIZONTAL") ? PostItemType.HORIZONTAL_BANNER.ordinal() : PostItemType.BANNER.ordinal();
        }
        if (this.supportTypes.contains(postItemTypeA.getValue())) {
            return postItemTypeA.ordinal();
        }
        wf.a.C0922a.l(wf.a.f74274a, "SubTabAdapter", "unregistered itemType: " + postItemTypeA.name() + "(" + postItemTypeA.ordinal() + "), fallback to SUBJECT", false, 4, null);
        return PostItemType.SUBJECT.ordinal();
    }

    public final e getPreferencesProvider() {
        return this.preferencesProvider;
    }

    @Override
    public f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    @Override
    public void n1(Collection<OperateItem> list) {
        Object objM453constructorimpl;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(list == null ? new ArrayList<>() : list);
        if (list != null) {
            for (OperateItem operateItem : list) {
                if (!CollectionsKt.b0(this.supportTypes, operateItem.getType())) {
                    arrayList2.remove(operateItem);
                    wf.a.C0922a.f(wf.a.f74274a, "SubTabViewModel", "remove unSupport operate " + operateItem.getType(), false, 4, null);
                }
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (Intrinsics.c(operateItem.getType(), PostItemType.RANKING_LIST_MULTI_TAB.getValue())) {
                        RankingListData rankingListData = operateItem.getRankingListData();
                        if (rankingListData == null) {
                            arrayList2.remove(operateItem);
                            wf.a.C0922a.f(wf.a.f74274a, "SubTabViewModel", "remove NEW_STYLE_RANKING: rankingListData is null", false, 4, null);
                        } else {
                            List<RankingListItem> items = rankingListData.getItems();
                            if (items != null) {
                                arrayList = new ArrayList();
                                for (Object obj : items) {
                                    RankingListItem rankingListItem = (RankingListItem) obj;
                                    List<Subject> subjects = rankingListItem.getSubjects();
                                    boolean z10 = false;
                                    if (subjects != null && (!subjects.isEmpty())) {
                                        z10 = true;
                                    }
                                    if (!z10) {
                                        wf.a.C0922a.f(wf.a.f74274a, "SubTabViewModel", "remove RankingListItem with empty subjects: " + rankingListItem.getTitle(), false, 4, null);
                                    }
                                    if (z10) {
                                        arrayList.add(obj);
                                    }
                                }
                            } else {
                                arrayList = null;
                            }
                            rankingListData.setItems(arrayList);
                            if (arrayList == null || arrayList.isEmpty()) {
                                arrayList2.remove(operateItem);
                                wf.a.C0922a.f(wf.a.f74274a, "SubTabViewModel", "remove NEW_STYLE_RANKING: items is empty after filtering", false, 4, null);
                            }
                        }
                    }
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    wf.a.C0922a.f(wf.a.f74274a, "SubTabViewModel", "setList error: " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
                }
            }
        }
        T1();
        super.n1(arrayList2);
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        t1 t1Var = this.mObserveJob;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
    }
}

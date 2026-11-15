package com.transsion.search.fragment.hot;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baseui.widget.CustomPagerTitleView;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.search.R$id;
import com.transsion.search.R$string;
import com.transsion.search.SearchManager;
import com.transsion.search.ad.SearchHotAdContainerView;
import com.transsion.search.ad.SearchHotAdHelper;
import com.transsion.search.bean.HotRankItem;
import com.transsion.search.bean.HotSearchKeyWord;
import com.transsion.search.bean.HotSubjectEntity;
import com.transsion.search.fragment.BaseSearchMainFragment;
import com.transsion.search.fragment.SearchSubjectFragment;
import com.transsion.search.fragment.hot.SearchHotFragment;
import com.transsion.search.viewmodel.SearchViewModel;
import com.transsion.search.widget.LinesFlexBoxLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import lj.a;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import ro.o;

@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 V2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002WXB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0019\u0010\u0015\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J'\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u0017\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010,\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\u0005J\u000f\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b/\u0010\u0005J\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102J\r\u00103\u001a\u00020\u0006¢\u0006\u0004\b3\u0010\u0005J\u0015\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u001b¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u00020\nH\u0016¢\u0006\u0004\b8\u0010\rJ\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b=\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010A\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010C\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010DR\u0018\u0010F\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00020\u001b0H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010L\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010Q\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010U¨\u0006Y"}, d2 = {"Lcom/transsion/search/fragment/hot/SearchHotFragment;", "Lcom/transsion/search/fragment/BaseSearchMainFragment;", "Lvp/c;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initViewModel", "initHistory", "loadHistoryData", "", "isExpand", "expandHistoryLine", "(Z)V", "showHistoryList", "Lcom/transsion/search/bean/HotSubjectEntity;", "subjectEntity", "initHotWordWithData", "(Lcom/transsion/search/bean/HotSubjectEntity;)V", "initEveryoneSearch", "it", "initRankWithData", "initViewPager", "Landroid/content/Context;", "context", "", "index", "", "textStr", "Lxy/d;", "getIndicatorText", "(Landroid/content/Context;ILjava/lang/String;)Lxy/d;", "Lxy/c;", "getIndicatorView", "(Landroid/content/Context;)Lxy/c;", "clearTipsDialog", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lvp/c;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "lazyLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onConnected", "keyword", "addHistoryWord", "(Ljava/lang/String;)V", "hidden", "onHiddenChanged", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "Lcom/transsion/search/fragment/hot/adapter/d;", "mSearchHistoryAdapter", "Lcom/transsion/search/fragment/hot/adapter/d;", "expand", "Z", "historyExpandLine", "I", "historyCollapseLine", "hotSearchWord", "Ljava/lang/String;", "", "mHistoryList", "Ljava/util/List;", "Lcom/transsion/search/fragment/hot/adapter/f;", "everyOneSearchAdapter", "Lcom/transsion/search/fragment/hot/adapter/f;", "mHotSubjectEntity", "Lcom/transsion/search/bean/HotSubjectEntity;", "Lcom/transsion/search/viewmodel/SearchViewModel;", "mSearchViewModel", "Lcom/transsion/search/viewmodel/SearchViewModel;", "Lcom/transsion/search/ad/SearchHotAdHelper;", "adHelper", "Lcom/transsion/search/ad/SearchHotAdHelper;", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchHotFragment extends BaseSearchMainFragment<vp.c> implements TRDialogListener {

    public static final Companion INSTANCE = new Companion(null);
    public static final String PAGE_NAME = "search_hot_subject";
    private SearchHotAdHelper adHelper;
    private com.transsion.search.fragment.hot.adapter.f everyOneSearchAdapter;
    private boolean expand;
    private String hotSearchWord;
    private HotSubjectEntity mHotSubjectEntity;
    private com.transsion.search.fragment.hot.adapter.d mSearchHistoryAdapter;
    private SearchViewModel mSearchViewModel;
    private int historyExpandLine = 2;
    private int historyCollapseLine = 1;
    private List<String> mHistoryList = new ArrayList();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchHotFragment a(String str) {
            SearchHotFragment searchHotFragment = new SearchHotFragment();
            searchHotFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("hot_search_word", str)));
            return searchHotFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements ViewPager2.PageTransformer {

        private final int f50050a;

        public b() {
            this(0, 1, null);
        }

        @Override
        public void transformPage(View page, float f10) {
            Intrinsics.h(page, "page");
            if (f10 < -1.0f) {
                page.setTranslationX(0.0f);
                return;
            }
            if (f10 <= 0.0f) {
                page.setTranslationX(0.0f);
            } else if (f10 <= 1.0f) {
                page.setTranslationX(-(this.f50050a * f10));
            } else {
                page.setTranslationX(-(this.f50050a * (f10 - 1)));
            }
        }

        public b(int i10) {
            this.f50050a = i10;
        }

        public b(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? a.b(38) : i10);
        }
    }

    public static final class c extends com.transsion.baseui.util.f {

        final int f50052f;

        c(int i10) {
            this.f50052f = i10;
        }

        @Override
        public void c(View view) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void d(View view) {
            MagicIndicator magicIndicator;
            ViewPager2 viewPager2;
            vp.c cVar = (vp.c) SearchHotFragment.this.getMViewBinding();
            if (cVar != null && (viewPager2 = cVar.f73708o) != null) {
                viewPager2.setCurrentItem(this.f50052f, false);
            }
            vp.c cVar2 = (vp.c) SearchHotFragment.this.getMViewBinding();
            if (cVar2 == null || (magicIndicator = cVar2.f73705l) == null) {
                return;
            }
            magicIndicator.onPageScrolled(this.f50052f, 0.0f, 0);
        }
    }

    public static final class d extends xy.a {
        d() {
        }

        @Override
        public int a() {
            List<HotRankItem> hot;
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            if (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null) {
                return 0;
            }
            return hot.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            return SearchHotFragment.this.getIndicatorView(context);
        }

        @Override
        public xy.d c(Context context, int i10) {
            String name;
            List<HotRankItem> hot;
            HotRankItem hotRankItem;
            Intrinsics.h(context, "context");
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            if (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null || (hotRankItem = hot.get(i10)) == null || (name = hotRankItem.getName()) == null) {
                name = "";
            }
            return SearchHotFragment.this.getIndicatorText(context, i10, name);
        }
    }

    public static final class e extends FragmentStateAdapter {
        e() {
            super(SearchHotFragment.this);
        }

        @Override
        public Fragment createFragment(int i10) {
            List<HotRankItem> hot;
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            HotRankItem hotRankItem = (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null) ? null : hot.get(i10);
            if (hotRankItem != null) {
                hotRankItem.setIndex(i10);
            }
            return SearchRankPagerFragment.INSTANCE.a(hotRankItem);
        }

        @Override
        public int getItemCount() {
            List<HotRankItem> hot;
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            if (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null) {
                return 0;
            }
            return hot.size();
        }
    }

    public static final class f extends ViewPager2.OnPageChangeCallback {
        f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageScrollStateChanged(int i10) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i10);
            vp.c cVar = (vp.c) SearchHotFragment.this.getMViewBinding();
            if (cVar == null || (magicIndicator = cVar.f73705l) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i10, f10, i11);
            vp.c cVar = (vp.c) SearchHotFragment.this.getMViewBinding();
            if (cVar == null || (magicIndicator = cVar.f73705l) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i10, f10, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageSelected(int i10) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i10);
            Fragment fragmentK0 = SearchHotFragment.this.getChildFragmentManager().k0("f" + i10);
            if (fragmentK0 instanceof SearchRankPagerFragment) {
                ((SearchRankPagerFragment) fragmentK0).b0();
            }
            vp.c cVar = (vp.c) SearchHotFragment.this.getMViewBinding();
            if (cVar == null || (magicIndicator = cVar.f73705l) == null) {
                return;
            }
            magicIndicator.onPageSelected(i10);
        }
    }

    public static final class g implements com.transsion.search.a {
        g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static final void c(List list, SearchHotFragment searchHotFragment) {
            ConstraintLayout constraintLayout;
            ArrayList arrayList = new ArrayList();
            List list2 = list;
            arrayList.addAll(list2);
            CollectionsKt.Y(arrayList);
            searchHotFragment.mHistoryList = arrayList;
            searchHotFragment.showHistoryList();
            vp.c cVar = (vp.c) searchHotFragment.getMViewBinding();
            if (cVar == null || (constraintLayout = cVar.f73699f) == null) {
                return;
            }
            constraintLayout.setVisibility(!list2.isEmpty() ? 0 : 8);
        }

        @Override
        public void a(final List list) {
            Intrinsics.h(list, "list");
            FragmentActivity activity = SearchHotFragment.this.getActivity();
            if (activity != null) {
                final SearchHotFragment searchHotFragment = SearchHotFragment.this;
                activity.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        SearchHotFragment.g.c(list, searchHotFragment);
                    }
                });
            }
        }
    }

    static final class h implements c0, FunctionAdapter {

        private final Function1 f50057a;

        h(Function1 function) {
            Intrinsics.h(function, "function");
            this.f50057a = function;
        }

        @Override
        public final Function a() {
            return this.f50057a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f50057a.invoke(obj);
        }
    }

    private final void clearTipsDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.search_clear_title);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarK = aVar.k(string);
            String string2 = getString(R$string.search_clear_des);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarG = aVarK.g(string2);
            String string3 = getString(R$string.search_clear_cancel);
            Intrinsics.g(string3, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string3);
            String string4 = getString(R$string.search_clear_clear);
            Intrinsics.g(string4, "getString(...)");
            aVarE.j(string4).h(R$drawable.libui_sub_btn2_normal).f(this).a().d0(this, "clear_tips");
        } catch (Exception e10) {
            wf.a.C0922a.g(wf.a.f74274a, "e " + e10.getLocalizedMessage(), false, 2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"NotifyDataSetChanged"})
    private final void expandHistoryLine(final boolean isExpand) {
        RecyclerView recyclerView;
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar == null || (recyclerView = cVar.f73700g) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                SearchHotFragment.expandHistoryLine$lambda$12(this.f76377a, isExpand);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void expandHistoryLine$lambda$12(final SearchHotFragment searchHotFragment, final boolean z10) {
        vp.c cVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        vp.c cVar2 = (vp.c) searchHotFragment.getMViewBinding();
        RecyclerView.m layoutManager = null;
        if (((cVar2 == null || (recyclerView3 = cVar2.f73700g) == null) ? null : recyclerView3.getLayoutManager()) instanceof LinesFlexBoxLayoutManager) {
            vp.c cVar3 = (vp.c) searchHotFragment.getMViewBinding();
            if (cVar3 != null && (recyclerView2 = cVar3.f73700g) != null) {
                layoutManager = recyclerView2.getLayoutManager();
            }
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager");
            final LinesFlexBoxLayoutManager linesFlexBoxLayoutManager = (LinesFlexBoxLayoutManager) layoutManager;
            int iN0 = linesFlexBoxLayoutManager.n0();
            if (iN0 <= 0) {
                return;
            }
            linesFlexBoxLayoutManager.q0(z10 ? searchHotFragment.historyExpandLine : searchHotFragment.historyCollapseLine);
            boolean z11 = z10 || iN0 > searchHotFragment.historyCollapseLine;
            final int iO0 = linesFlexBoxLayoutManager.o0() - 1;
            com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
            if (dVar != null) {
                dVar.W1(z11, z10, iO0);
            }
            com.transsion.search.fragment.hot.adapter.d dVar2 = searchHotFragment.mSearchHistoryAdapter;
            if (dVar2 != null) {
                dVar2.notifyDataSetChanged();
            }
            if (!z11 || (cVar = (vp.c) searchHotFragment.getMViewBinding()) == null || (recyclerView = cVar.f73700g) == null) {
                return;
            }
            recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    SearchHotFragment.expandHistoryLine$lambda$12$lambda$11(linesFlexBoxLayoutManager, iO0, searchHotFragment, z10);
                }
            });
        }
    }

    public static final void expandHistoryLine$lambda$12$lambda$11(LinesFlexBoxLayoutManager linesFlexBoxLayoutManager, int i10, SearchHotFragment searchHotFragment, boolean z10) {
        com.transsion.search.fragment.hot.adapter.d dVar;
        if (linesFlexBoxLayoutManager.getChildCount() <= i10 && (dVar = searchHotFragment.mSearchHistoryAdapter) != null) {
            dVar.W1(true, z10, i10 - 1);
        }
        com.transsion.search.fragment.hot.adapter.d dVar2 = searchHotFragment.mSearchHistoryAdapter;
        if (dVar2 != null) {
            dVar2.notifyDataSetChanged();
        }
    }

    public final xy.d getIndicatorText(Context context, int index, String textStr) {
        CustomPagerTitleView customPagerTitleView = new CustomPagerTitleView(context, 17, a0.a(10.0f));
        customPagerTitleView.setSelectTextSize(16.0f);
        customPagerTitleView.setText(textStr);
        customPagerTitleView.setOnClickListener(new c(index));
        return customPagerTitleView;
    }

    public final xy.c getIndicatorView(Context context) {
        GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(context);
        gradientLinePagerIndicator.setMode(1);
        gradientLinePagerIndicator.setLineHeight(a0.a(2.0f));
        gradientLinePagerIndicator.setLineWidth(a0.a(30.0f));
        gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
        gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
        int color = androidx.core.content.b.getColor(context, R$color.white);
        gradientLinePagerIndicator.setColors(color, color, color);
        return gradientLinePagerIndicator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initEveryoneSearch() {
        RecyclerView recyclerView;
        Bundle arguments = getArguments();
        this.hotSearchWord = arguments != null ? arguments.getString("hot_search_word") : null;
        com.transsion.search.fragment.hot.adapter.f fVar = new com.transsion.search.fragment.hot.adapter.f(0, 1, null);
        fVar.l(R$id.tv_keyword);
        fVar.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                SearchHotFragment.initEveryoneSearch$lambda$23$lambda$22(this.f76380a, baseQuickAdapter, view, i10);
            }
        });
        this.everyOneSearchAdapter = fVar;
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar == null || (recyclerView = cVar.f73696c) == null) {
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        LinesFlexBoxLayoutManager linesFlexBoxLayoutManager = new LinesFlexBoxLayoutManager(contextRequireContext);
        linesFlexBoxLayoutManager.c0(0);
        linesFlexBoxLayoutManager.d0(1);
        linesFlexBoxLayoutManager.e0(0);
        linesFlexBoxLayoutManager.q0(this.historyExpandLine);
        recyclerView.setLayoutManager(linesFlexBoxLayoutManager);
        recyclerView.setAdapter(this.everyOneSearchAdapter);
    }

    public static final void initEveryoneSearch$lambda$23$lambda$22(final SearchHotFragment searchHotFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Object objM453constructorimpl;
        String strS;
        HotSearchKeyWord hotSearchKeyWord;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        Fragment parentFragment = searchHotFragment.getParentFragment();
        if (parentFragment instanceof SearchSubjectFragment) {
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.search.fragment.hot.adapter.f fVar = searchHotFragment.everyOneSearchAdapter;
                objM453constructorimpl = Result.m453constructorimpl((fVar == null || (hotSearchKeyWord = (HotSearchKeyWord) fVar.getItem(i10)) == null) ? null : hotSearchKeyWord.getTitle());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            String str = (String) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
            if (str == null) {
                return;
            }
            ((SearchSubjectFragment) parentFragment).u0(str, "hot", new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SearchHotFragment.initEveryoneSearch$lambda$23$lambda$22$lambda$21(this.f76381a, (String) obj);
                }
            });
            com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f50263a;
            SearchViewModel searchViewModel = searchHotFragment.mSearchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            aVar.h(str, i10, strS);
        }
    }

    public static final Unit initEveryoneSearch$lambda$23$lambda$22$lambda$21(SearchHotFragment searchHotFragment, String it) {
        Intrinsics.h(it, "it");
        com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
        if (dVar != null) {
            dVar.p(new com.transsion.search.fragment.hot.adapter.a(1, it));
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initHistory() {
        String strS;
        TextView textView;
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar != null && (textView = cVar.f73710q) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchHotFragment.initHistory$lambda$7(this.f76375a, view);
                }
            });
        }
        com.transsion.search.fragment.hot.adapter.d dVar = new com.transsion.search.fragment.hot.adapter.d();
        this.mSearchHistoryAdapter = dVar;
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
            strS = "mb_sug";
        }
        dVar.Y1(strS);
        com.transsion.search.fragment.hot.adapter.d dVar2 = this.mSearchHistoryAdapter;
        if (dVar2 != null) {
            dVar2.l(R$id.search_history_text);
        }
        com.transsion.search.fragment.hot.adapter.d dVar3 = this.mSearchHistoryAdapter;
        if (dVar3 != null) {
            dVar3.s1(new r6.b() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    SearchHotFragment.initHistory$lambda$10(this.f76376a, baseQuickAdapter, view, i10);
                }
            });
        }
        loadHistoryData();
    }

    public static final void initHistory$lambda$10(final SearchHotFragment searchHotFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Object objM453constructorimpl;
        String strS;
        com.transsion.search.fragment.hot.adapter.a aVar;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        Fragment parentFragment = searchHotFragment.getParentFragment();
        if (parentFragment instanceof SearchSubjectFragment) {
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
                objM453constructorimpl = Result.m453constructorimpl((dVar == null || (aVar = (com.transsion.search.fragment.hot.adapter.a) dVar.getItem(i10)) == null) ? null : aVar.a());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            String str = (String) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
            if (str == null) {
                return;
            }
            ((SearchSubjectFragment) parentFragment).u0(str, ShortTVHistoryView.TYPE_HISTORY, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SearchHotFragment.initHistory$lambda$10$lambda$9(this.f76379a, (String) obj);
                }
            });
            com.transsion.search.widget.d.a aVar2 = com.transsion.search.widget.d.f50263a;
            SearchViewModel searchViewModel = searchHotFragment.mSearchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            aVar2.f(str, i10, strS);
        }
    }

    public static final Unit initHistory$lambda$10$lambda$9(SearchHotFragment searchHotFragment, String it) {
        Intrinsics.h(it, "it");
        com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
        if (dVar != null) {
            dVar.p(new com.transsion.search.fragment.hot.adapter.a(1, it));
        }
        return Unit.f64096a;
    }

    public static final void initHistory$lambda$7(SearchHotFragment searchHotFragment, View view) {
        searchHotFragment.clearTipsDialog();
        Context context = view.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        if (KeyboardUtils.g((Activity) context)) {
            Context context2 = view.getContext();
            Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
            KeyboardUtils.d((Activity) context2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initHotWordWithData(HotSubjectEntity subjectEntity) {
        ConstraintLayout constraintLayout;
        RecyclerView recyclerView;
        List<HotSearchKeyWord> everyoneSearch;
        List<HotSearchKeyWord> everyoneSearch2;
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar == null || (constraintLayout = cVar.f73701h) == null) {
            return;
        }
        if (((subjectEntity == null || (everyoneSearch2 = subjectEntity.getEveryoneSearch()) == null) ? 0 : everyoneSearch2.size()) <= 0) {
            uf.c.g(constraintLayout);
            return;
        }
        uf.c.k(constraintLayout);
        final ArrayList arrayList = new ArrayList();
        if (subjectEntity != null && (everyoneSearch = subjectEntity.getEveryoneSearch()) != null) {
            for (HotSearchKeyWord hotSearchKeyWord : everyoneSearch) {
                if (!Intrinsics.c(hotSearchKeyWord.getTitle(), this.hotSearchWord)) {
                    arrayList.add(hotSearchKeyWord);
                }
            }
        }
        com.transsion.search.fragment.hot.adapter.f fVar = this.everyOneSearchAdapter;
        if (fVar != null) {
            fVar.n1(arrayList);
        }
        vp.c cVar2 = (vp.c) getMViewBinding();
        if (cVar2 == null || (recyclerView = cVar2.f73696c) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                SearchHotFragment.initHotWordWithData$lambda$19$lambda$18(this.f76373a, arrayList);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void initHotWordWithData$lambda$19$lambda$18(SearchHotFragment searchHotFragment, List list) {
        String strS;
        RecyclerView recyclerView;
        vp.c cVar = (vp.c) searchHotFragment.getMViewBinding();
        RecyclerView.m layoutManager = (cVar == null || (recyclerView = cVar.f73696c) == null) ? null : recyclerView.getLayoutManager();
        if (layoutManager instanceof LinesFlexBoxLayoutManager) {
            int iO0 = ((LinesFlexBoxLayoutManager) layoutManager).o0();
            for (int i10 = 0; i10 < iO0; i10++) {
                if (i10 < list.size()) {
                    com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f50263a;
                    String title = ((HotSearchKeyWord) list.get(i10)).getTitle();
                    SearchViewModel searchViewModel = searchHotFragment.mSearchViewModel;
                    if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                        strS = "mb_sug";
                    }
                    aVar.g(title, i10, strS);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initRankWithData(HotSubjectEntity it) {
        RelativeLayout relativeLayout;
        ViewPager2 viewPager2;
        RecyclerView.Adapter adapter;
        MagicIndicator magicIndicator;
        vy.a navigator;
        RelativeLayout relativeLayout2;
        List<HotRankItem> hot = it != null ? it.getHot() : null;
        if (hot == null || hot.isEmpty()) {
            vp.c cVar = (vp.c) getMViewBinding();
            if (cVar == null || (relativeLayout = cVar.f73707n) == null) {
                return;
            }
            uf.c.h(relativeLayout);
            return;
        }
        vp.c cVar2 = (vp.c) getMViewBinding();
        if (cVar2 != null && (relativeLayout2 = cVar2.f73707n) != null) {
            uf.c.k(relativeLayout2);
        }
        this.mHotSubjectEntity = it;
        vp.c cVar3 = (vp.c) getMViewBinding();
        if (cVar3 != null && (magicIndicator = cVar3.f73705l) != null && (navigator = magicIndicator.getNavigator()) != null) {
            navigator.notifyDataSetChanged();
        }
        vp.c cVar4 = (vp.c) getMViewBinding();
        if (cVar4 == null || (viewPager2 = cVar4.f73708o) == null || (adapter = viewPager2.getAdapter()) == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$2(SearchHotFragment searchHotFragment, NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
        Intrinsics.h(nestedScrollView, "<unused var>");
        FragmentActivity activity = searchHotFragment.getActivity();
        if (activity == null || !KeyboardUtils.g(activity)) {
            return;
        }
        vp.c cVar = (vp.c) searchHotFragment.getMViewBinding();
        o.a(cVar != null ? cVar.f73709p : null);
    }

    private final void initViewModel() {
        HashMap mapG;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        SearchViewModel searchViewModel = (SearchViewModel) new v0(fragmentActivityRequireActivity).a(SearchViewModel.class);
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        searchViewModel.l().j(this, new h(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SearchHotFragment.initViewModel$lambda$6$lambda$5(this.f76372a, (HotSubjectEntity) obj);
            }
        }));
        this.mSearchViewModel = searchViewModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$6$lambda$5(final SearchHotFragment searchHotFragment, HotSubjectEntity hotSubjectEntity) {
        View view;
        ProgressBar progressBar;
        vp.c cVar = (vp.c) searchHotFragment.getMViewBinding();
        if (cVar != null && (progressBar = cVar.f73698e) != null) {
            progressBar.setVisibility(8);
        }
        vp.c cVar2 = (vp.c) searchHotFragment.getMViewBinding();
        if (cVar2 != null && (view = cVar2.f73704k) != null) {
            view.setVisibility(0);
        }
        SearchHotAdHelper searchHotAdHelper = searchHotFragment.adHelper;
        if (searchHotAdHelper != null) {
            searchHotAdHelper.y(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SearchHotFragment.initViewModel$lambda$6$lambda$5$lambda$4(this.f76370a, ((Boolean) obj).booleanValue());
                }
            });
        }
        qi.b logViewConfig = searchHotFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        searchHotFragment.initHotWordWithData(hotSubjectEntity);
        searchHotFragment.initRankWithData(hotSubjectEntity);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$6$lambda$5$lambda$4(SearchHotFragment searchHotFragment, boolean z10) {
        vp.c cVar;
        CardView cardView;
        if (z10 && (cVar = (vp.c) searchHotFragment.getMViewBinding()) != null && (cardView = cVar.f73697d) != null) {
            uf.c.k(cardView);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initViewPager() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        ViewPager2 viewPager4;
        ViewPager2 viewPager5;
        ViewPager2 viewPager6;
        MagicIndicator magicIndicator;
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar != null && (magicIndicator = cVar.f73705l) != null) {
            CommonNavigator commonNavigator = new CommonNavigator(requireContext());
            commonNavigator.setAdapter(new d());
            magicIndicator.setNavigator(commonNavigator);
        }
        vp.c cVar2 = (vp.c) getMViewBinding();
        if (cVar2 != null && (viewPager6 = cVar2.f73708o) != null) {
            viewPager6.setAdapter(new e());
        }
        vp.c cVar3 = (vp.c) getMViewBinding();
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (cVar3 != null && (viewPager5 = cVar3.f73708o) != null) {
            viewPager5.setLayerType(2, null);
        }
        vp.c cVar4 = (vp.c) getMViewBinding();
        int i10 = 1;
        if (cVar4 != null && (viewPager4 = cVar4.f73708o) != null) {
            viewPager4.setPageTransformer(new b(0, i10, defaultConstructorMarker));
        }
        vp.c cVar5 = (vp.c) getMViewBinding();
        if (cVar5 != null && (viewPager3 = cVar5.f73708o) != null) {
            viewPager3.setOffscreenPageLimit(1);
        }
        vp.c cVar6 = (vp.c) getMViewBinding();
        if (cVar6 == null || (viewPager2 = cVar6.f73708o) == null) {
            return;
        }
        viewPager2.registerOnPageChangeCallback(new f());
    }

    private final void loadHistoryData() {
        SearchManager.f49934f.a().m(3, new g());
        if (getParentFragment() instanceof SearchSubjectFragment) {
            Fragment parentFragment = getParentFragment();
            Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.search.fragment.SearchSubjectFragment");
            ((SearchSubjectFragment) parentFragment).K0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void showHistoryList() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        String value;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        ConfigBean configBeanC = cm.f.f17019c.a().c("sa_history_lines_double", false);
        if (Intrinsics.c((configBeanC == null || (value = configBeanC.getValue()) == null) ? null : StringsKt.m1(value), Boolean.TRUE)) {
            this.historyExpandLine = 4;
            this.historyCollapseLine = 2;
        }
        com.transsion.search.fragment.hot.adapter.d dVar = this.mSearchHistoryAdapter;
        if (dVar != null) {
            dVar.V1(new Function0() {
                @Override
                public final Object invoke() {
                    return SearchHotFragment.showHistoryList$lambda$13(this.f76387a);
                }
            });
        }
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar != null && (recyclerView4 = cVar.f73700g) != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            LinesFlexBoxLayoutManager linesFlexBoxLayoutManager = new LinesFlexBoxLayoutManager(contextRequireContext);
            linesFlexBoxLayoutManager.c0(0);
            linesFlexBoxLayoutManager.d0(1);
            linesFlexBoxLayoutManager.e0(0);
            linesFlexBoxLayoutManager.q0(this.expand ? this.historyExpandLine : this.historyCollapseLine);
            recyclerView4.setLayoutManager(linesFlexBoxLayoutManager);
        }
        vp.c cVar2 = (vp.c) getMViewBinding();
        if (cVar2 != null && (recyclerView3 = cVar2.f73700g) != null) {
            recyclerView3.setAdapter(this.mSearchHistoryAdapter);
        }
        vp.c cVar3 = (vp.c) getMViewBinding();
        if (cVar3 != null && (recyclerView2 = cVar3.f73700g) != null) {
            recyclerView2.setItemAnimator(null);
        }
        List<String> list = this.mHistoryList;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.transsion.search.fragment.hot.adapter.a(1, (String) it.next()));
        }
        List<Object> listU0 = CollectionsKt.U0(arrayList);
        com.transsion.search.fragment.hot.adapter.d dVar2 = this.mSearchHistoryAdapter;
        if (dVar2 != null) {
            dVar2.q1(listU0);
        }
        vp.c cVar4 = (vp.c) getMViewBinding();
        if (cVar4 == null || (recyclerView = cVar4.f73700g) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                SearchHotFragment.showHistoryList$lambda$16(this.f76371a);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit showHistoryList$lambda$13(SearchHotFragment searchHotFragment) {
        boolean z10 = !searchHotFragment.expand;
        searchHotFragment.expand = z10;
        searchHotFragment.expandHistoryLine(z10);
        vp.c cVar = (vp.c) searchHotFragment.getMViewBinding();
        o.a(cVar != null ? cVar.f73700g : null);
        return Unit.f64096a;
    }

    public static final void showHistoryList$lambda$16(SearchHotFragment searchHotFragment) {
        searchHotFragment.expandHistoryLine(searchHotFragment.expand);
    }

    public final void addHistoryWord(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (this.mHistoryList.contains(keyword)) {
            return;
        }
        SearchManager.f49934f.a().g(keyword);
        this.mHistoryList.add(0, keyword);
        if (this.mHistoryList.size() > 30) {
            List<String> list = this.mHistoryList;
            list.remove(list.size() - 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        NestedScrollView nestedScrollView;
        SearchHotAdContainerView searchHotAdContainerView;
        SearchHotAdHelper searchHotAdHelper;
        Intrinsics.h(view, "view");
        initViewModel();
        initHistory();
        initEveryoneSearch();
        initViewPager();
        this.adHelper = new SearchHotAdHelper(v.a(this));
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar != null && (searchHotAdContainerView = cVar.f73695b) != null && (searchHotAdHelper = this.adHelper) != null) {
            searchHotAdHelper.m(searchHotAdContainerView);
        }
        vp.c cVar2 = (vp.c) getMViewBinding();
        if (cVar2 == null || (nestedScrollView = cVar2.f73709p) == null) {
            return;
        }
        nestedScrollView.setOnScrollChangeListener(new NestedScrollView.e() {
            @Override
            public final void a(NestedScrollView nestedScrollView2, int i10, int i11, int i12, int i13) {
                SearchHotFragment.initView$lambda$2(this.f76386a, nestedScrollView2, i10, i11, i12, i13);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void lazyLoadData() {
        View view;
        ProgressBar progressBar;
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel != null) {
            searchViewModel.k();
        }
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar != null && (progressBar = cVar.f73698e) != null) {
            progressBar.setVisibility(0);
        }
        vp.c cVar2 = (vp.c) getMViewBinding();
        if (cVar2 == null || (view = cVar2.f73704k) == null) {
            return;
        }
        view.setVisibility(4);
    }

    @Override
    public qi.b newLogViewConfig() {
        qi.b bVar = new qi.b(PAGE_NAME, false, 2, null);
        bVar.l(true);
        bVar.g().put("search_id", BaseSearchMainFragment.INSTANCE.a());
        return bVar;
    }

    public final void onConnected() {
        if (this.mHotSubjectEntity == null) {
            lazyLoadData();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        vp.c cVar = (vp.c) getMViewBinding();
        if (cVar != null && (recyclerView = cVar.f73700g) != null) {
            recyclerView.setAdapter(null);
        }
        this.mSearchHistoryAdapter = null;
        SearchHotAdHelper searchHotAdHelper = this.adHelper;
        if (searchHotAdHelper != null) {
            searchHotAdHelper.p();
        }
        this.adHelper = null;
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        loadHistoryData();
    }

    @Override
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onRightButtonClick(TRDialog dialog) {
        String strS;
        RecyclerView recyclerView;
        ConstraintLayout constraintLayout;
        Intrinsics.h(dialog, "dialog");
        if (TextUtils.equals(dialog.getTag(), "clear_tips")) {
            SearchManager.f49934f.a().j();
            this.mHistoryList.clear();
            vp.c cVar = (vp.c) getMViewBinding();
            if (cVar != null && (constraintLayout = cVar.f73699f) != null) {
                constraintLayout.setVisibility(8);
            }
            com.transsion.search.fragment.hot.adapter.d dVar = this.mSearchHistoryAdapter;
            if (dVar != null) {
                dVar.q1(new ArrayList());
            }
            vp.c cVar2 = (vp.c) getMViewBinding();
            RecyclerView.m layoutManager = (cVar2 == null || (recyclerView = cVar2.f73700g) == null) ? null : recyclerView.getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager");
            ((LinesFlexBoxLayoutManager) layoutManager).p0();
            this.expand = false;
            expandHistoryLine(false);
            com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f50263a;
            SearchViewModel searchViewModel = this.mSearchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            aVar.c(strS);
        }
    }

    @Override
    public vp.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        vp.c cVarC = vp.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }
}

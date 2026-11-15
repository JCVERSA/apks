package com.transsion.home.category.fragment;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.util.c;
import com.transsion.home.R$id;
import com.transsion.home.bean.CategoryBean;
import com.transsion.home.category.CategoryActivity;
import com.transsion.home.category.adapter.e;
import com.transsion.home.category.fragment.CategoryFragment;
import com.transsion.home.viewmodel.CategoryViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.CategoryItemBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PlayUrl;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.k;
import ij.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;
import qk.j;
import t6.f;
import yg.l;

@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 Q2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00017B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0019\u0010\u0011\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0002¢\u0006\u0004\b \u0010\u0004J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u001dH\u0016¢\u0006\u0004\b%\u0010\u001fJ!\u0010*\u001a\u00020\t2\u0006\u0010'\u001a\u00020&2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010*\u001a\u00020\tH\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010,\u001a\u00020\tH\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\tH\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\tH\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u00100\u001a\u00020\tH\u0016¢\u0006\u0004\b0\u0010\u0004J\u000f\u00101\u001a\u00020\tH\u0016¢\u0006\u0004\b1\u0010\u0004J\u000f\u00103\u001a\u000202H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\tH\u0016¢\u0006\u0004\b5\u0010\u0004R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010B\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010?R\u0018\u0010F\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u001b\u0010L\u001a\u00020G8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u0018\u0010P\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010O¨\u0006R"}, d2 = {"Lcom/transsion/home/category/fragment/CategoryFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lqk/j;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/CategoryItemBean;", "categoryItemBean", "", RequestParameters.POSITION, "", "z0", "(Lcom/transsion/moviedetailapi/bean/CategoryItemBean;I)V", WebConstants.FIELD_ITEM, "D0", "reload", "Lcom/transsion/home/bean/CategoryBean;", "categoryBean", "O0", "(Lcom/transsion/home/bean/CategoryBean;)V", "loadMore", "loadData", "", "isExpand", "y0", "(Z)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "C0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "M0", "", "getPageName", "()Ljava/lang/String;", "initAd", "Landroid/view/LayoutInflater;", "inflater", "B0", "(Landroid/view/LayoutInflater;)Lqk/j;", "getPageStateLayoutTitle", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initViewData", "(Landroid/view/View;Landroid/os/Bundle;)V", "initViewModel", "loadDefaultData", "initListener", "retryLoadData", "onPause", "onDestroyView", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onDestroy", "Lcom/transsion/home/viewmodel/CategoryViewModel;", "a", "Lcom/transsion/home/viewmodel/CategoryViewModel;", "viewModel", "Lcom/transsion/home/category/adapter/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/category/adapter/e;", "mAdapter", "c", "Ljava/lang/String;", "categoryType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "showType", "Lrk/b;", "e", "Lrk/b;", "mExposureHelper", "Lzk/b;", "f", "Lkotlin/Lazy;", "A0", "()Lzk/b;", "categoryDotHelper", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "g", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "h", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class CategoryFragment extends PageStatusFragment<j> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f43663i = 8;

    private CategoryViewModel viewModel;

    private e mAdapter;

    private String categoryType;

    private String showType;

    private rk.b mExposureHelper;

    private final Lazy categoryDotHelper = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return CategoryFragment.x0();
        }
    });

    private BiddingListManager v3ListManager;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Fragment a(String str, String str2) {
            Bundle bundleA = d.a();
            bundleA.putString("category_type", str);
            if (str2 == null) {
                str2 = "1";
            }
            bundleA.putString("showType", str2);
            CategoryFragment categoryFragment = new CategoryFragment();
            categoryFragment.setArguments(bundleA);
            return categoryFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements rk.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            Subject subject;
            Boolean hasResource;
            Subject subject2;
            Subject subject3;
            List<Object> data;
            e eVar = CategoryFragment.this.mAdapter;
            boolean zBooleanValue = false;
            if (i10 >= ((eVar == null || (data = eVar.getData()) == null) ? 0 : data.size())) {
                return;
            }
            e eVar2 = CategoryFragment.this.mAdapter;
            CategoryItemBean categoryItemBean = eVar2 != null ? (CategoryItemBean) eVar2.f0(i10) : null;
            zk.b bVarA0 = CategoryFragment.this.A0();
            String pageName = CategoryFragment.this.getPageName();
            String subjectId = (categoryItemBean == null || (subject3 = categoryItemBean.getSubject()) == null) ? null : subject3.getSubjectId();
            String ops = (categoryItemBean == null || (subject2 = categoryItemBean.getSubject()) == null) ? null : subject2.getOps();
            Integer numValueOf = Integer.valueOf(i10);
            String itemType = categoryItemBean != null ? categoryItemBean.getItemType() : null;
            if (categoryItemBean != null && (subject = categoryItemBean.getSubject()) != null && (hasResource = subject.getHasResource()) != null) {
                zBooleanValue = hasResource.booleanValue();
            }
            bVarA0.a(pageName, subjectId, ops, numValueOf, itemType, zBooleanValue, CategoryFragment.this.categoryType);
        }
    }

    public final zk.b A0() {
        return (zk.b) this.categoryDotHelper.getValue();
    }

    private final void C0(Subject item) {
        if (item == null) {
            return;
        }
        Navigator.x(TheRouter.c("/playvideo/detail").K("id", item.getSubjectId()).F("season", item.getSeason()).K("ops", a.a(item, this.categoryType)), getContext(), null, 2, null);
    }

    private final void D0(CategoryItemBean item, int position) {
        Integer subjectType;
        PlayUrl playUrl;
        String playUrl2;
        PlayUrl playUrl3;
        String playUrl4;
        Boolean hasResource;
        Subject subject = item.getSubject();
        boolean zBooleanValue = false;
        if (subject == null || !subject.isShortTV()) {
            Subject subject2 = item.getSubject();
            if (subject2 == null || !subject2.isJumpBrowser()) {
                Subject subject3 = item.getSubject();
                if (subject3 == null || !subject3.isJumpWebview()) {
                    Navigator navigatorC = TheRouter.c("/movie/detail");
                    Subject subject4 = item.getSubject();
                    Navigator navigatorF = navigatorC.F("subject_type", (subject4 == null || (subjectType = subject4.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue());
                    Subject subject5 = item.getSubject();
                    Navigator navigatorK = navigatorF.K("id", subject5 != null ? subject5.getSubjectId() : null);
                    Subject subject6 = item.getSubject();
                    Navigator.x(navigatorK.F("season", subject6 != null ? subject6.getSeason() : 0).K("ops", a.a(item.getSubject(), this.categoryType)), getContext(), null, 2, null);
                } else {
                    Subject subject7 = item.getSubject();
                    if (subject7 != null && (playUrl = subject7.getPlayUrl()) != null && (playUrl2 = playUrl.getPlayUrl()) != null) {
                        k.h(playUrl2, null, 1, null);
                    }
                }
            } else {
                Subject subject8 = item.getSubject();
                if (subject8 != null && (playUrl3 = subject8.getPlayUrl()) != null && (playUrl4 = playUrl3.getPlayUrl()) != null) {
                    k.i(playUrl4);
                }
            }
        } else {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            downloadManagerApiA.d0((FragmentActivity) context, getPageName(), (384 & 4) != 0 ? "" : "", a.a(item.getSubject(), this.categoryType), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : item.getSubject(), (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
        }
        zk.b bVarA0 = A0();
        String pageName = getPageName();
        Subject subject9 = item.getSubject();
        String subjectId = subject9 != null ? subject9.getSubjectId() : null;
        Subject subject10 = item.getSubject();
        String ops = subject10 != null ? subject10.getOps() : null;
        Integer numValueOf = Integer.valueOf(position);
        String itemType = item.getItemType();
        Subject subject11 = item.getSubject();
        if (subject11 != null && (hasResource = subject11.getHasResource()) != null) {
            zBooleanValue = hasResource.booleanValue();
        }
        bVarA0.b(pageName, subjectId, ops, numValueOf, itemType, zBooleanValue, this.categoryType);
    }

    public static final Unit E0(CategoryFragment categoryFragment, int i10, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            CategoryItemBean categoryItemBean = new CategoryItemBean(null, null, new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null), 3, null);
            Subject subject = categoryItemBean.getSubject();
            if (subject != null) {
                subject.setNonAdDelegate(current);
            }
            e eVar = categoryFragment.mAdapter;
            if (i10 < ((eVar == null || (data = eVar.getData()) == null) ? 0 : data.size())) {
                e eVar2 = categoryFragment.mAdapter;
                if (eVar2 != null) {
                    eVar2.n(i10, categoryItemBean);
                }
            } else {
                e eVar3 = categoryFragment.mAdapter;
                if (eVar3 != null) {
                    eVar3.p(categoryItemBean);
                }
            }
        }
        return Unit.f64096a;
    }

    public static final void F0(CategoryFragment categoryFragment, View view) {
        FragmentActivity activity = categoryFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final void G0(final CategoryFragment categoryFragment) {
        RecyclerView recyclerView;
        if (l.f76264a.e()) {
            categoryFragment.loadMore();
            return;
        }
        fh.b.f60176a.d(R$string.no_network_toast);
        j mViewBinding = categoryFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f69786e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                CategoryFragment.H0(this.f69182a);
            }
        }, 300L);
    }

    public static final void H0(CategoryFragment categoryFragment) {
        f fVarH0;
        e eVar = categoryFragment.mAdapter;
        if (eVar == null || (fVarH0 = eVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void I0(CategoryFragment categoryFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        if (item instanceof CategoryItemBean) {
            categoryFragment.D0((CategoryItemBean) item, i10);
        }
    }

    public static final void J0(CategoryFragment categoryFragment, BaseQuickAdapter adapter, View view, int i10) {
        List<Object> data;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (c.f42332a.a(view.getId(), 2000L)) {
            return;
        }
        e eVar = categoryFragment.mAdapter;
        CategoryItemBean categoryItemBean = (eVar == null || (data = eVar.getData()) == null) ? null : (CategoryItemBean) CollectionsKt.l0(data, i10);
        if (categoryItemBean == null || view.getId() != R$id.ll_download) {
            return;
        }
        categoryFragment.z0(categoryItemBean, i10);
    }

    public static final void K0(CategoryFragment categoryFragment, j jVar, AppBarLayout appBarLayout, int i10) {
        if (categoryFragment.getContext() == null) {
            return;
        }
        if (Math.abs(i10) >= appBarLayout.getTotalScrollRange()) {
            jVar.f69787f.setBackgroundColor(androidx.core.content.b.getColor(categoryFragment.requireContext(), R$color.bg_01));
            jVar.f69784c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(categoryFragment.requireContext(), R$color.btn_back)));
            AppCompatTextView tvTitle = jVar.f69788g;
            Intrinsics.g(tvTitle, "tvTitle");
            uf.c.k(tvTitle);
            AppCompatTextView tvTitleExpand = jVar.f69789h;
            Intrinsics.g(tvTitleExpand, "tvTitleExpand");
            uf.c.g(tvTitleExpand);
            categoryFragment.y0(true);
            return;
        }
        jVar.f69787f.setBackgroundColor(androidx.core.content.b.getColor(categoryFragment.requireContext(), R$color.transparent));
        jVar.f69784c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(categoryFragment.requireContext(), R$color.common_white)));
        AppCompatTextView tvTitle2 = jVar.f69788g;
        Intrinsics.g(tvTitle2, "tvTitle");
        uf.c.g(tvTitle2);
        AppCompatTextView tvTitleExpand2 = jVar.f69789h;
        Intrinsics.g(tvTitleExpand2, "tvTitleExpand");
        uf.c.k(tvTitleExpand2);
        categoryFragment.y0(false);
    }

    public static final Unit L0(CategoryFragment categoryFragment, BaseDto baseDto) {
        List<Object> data;
        HashMap mapG;
        e eVar;
        f fVarH0;
        Pager pager;
        f fVarH1;
        e eVar2;
        f fVarH2;
        CategoryBean categoryBean;
        List<CategoryItemBean> list;
        wf.a.C0922a.f(wf.a.f74274a, "CategoryFragment", "return code=" + (baseDto != null ? baseDto.getCode() : null) + " size=" + ((baseDto == null || (categoryBean = (CategoryBean) baseDto.getData()) == null || (list = categoryBean.getList()) == null) ? null : Integer.valueOf(list.size())), false, 4, null);
        if (baseDto == null) {
            return Unit.f64096a;
        }
        categoryFragment.showContentView();
        e eVar3 = categoryFragment.mAdapter;
        if (eVar3 != null && (fVarH1 = eVar3.h0()) != null && fVarH1.r() && (eVar2 = categoryFragment.mAdapter) != null && (fVarH2 = eVar2.h0()) != null) {
            fVarH2.s();
        }
        if (Intrinsics.c(baseDto.getCode(), "0")) {
            CategoryBean categoryBean2 = (CategoryBean) baseDto.getData();
            if (((categoryBean2 == null || (pager = categoryBean2.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.FALSE)) && (eVar = categoryFragment.mAdapter) != null && (fVarH0 = eVar.h0()) != null) {
                f.u(fVarH0, false, 1, null);
            }
            categoryFragment.O0((CategoryBean) baseDto.getData());
            qi.b logViewConfig = categoryFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = categoryFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                CategoryBean categoryBean3 = (CategoryBean) baseDto.getData();
                logViewConfig2.n(categoryBean3 != null ? categoryBean3.getOps() : null);
            }
        } else {
            e eVar4 = categoryFragment.mAdapter;
            if ((eVar4 == null || (data = eVar4.getData()) == null || data.size() != 0) ? false : true) {
                PageStatusFragment.showEmptyView$default(categoryFragment, false, 1, null);
            }
        }
        qi.b logViewConfig3 = categoryFragment.getLogViewConfig();
        if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
            mapG.put("category_type", categoryFragment.categoryType);
        }
        return Unit.f64096a;
    }

    private final void M0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return CategoryFragment.N0(this.f69181a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
    }

    public static final Unit N0(CategoryFragment categoryFragment, AddToDownloadEvent value) {
        e eVar;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            e eVar2 = categoryFragment.mAdapter;
            int i10 = -1;
            if (eVar2 != null && (data = eVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    Subject subject = ((CategoryItemBean) it.next()).getSubject();
                    if (Intrinsics.c(subject != null ? subject.getSubjectId() : null, value.getSubjectId())) {
                        i10 = i11;
                        break;
                    }
                    i11++;
                }
            }
            if (i10 >= 0 && (eVar = categoryFragment.mAdapter) != null) {
                eVar.notifyItemChanged(i10);
            }
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
        return Unit.f64096a;
    }

    private final void O0(CategoryBean categoryBean) {
        j mViewBinding;
        List<Object> data;
        String url;
        Subject subject;
        Cover cover;
        String thumbnail;
        Subject subject2;
        Cover cover2;
        List<Object> data2;
        e eVar;
        if (categoryBean == null || (mViewBinding = getMViewBinding()) == null) {
            return;
        }
        mViewBinding.f69788g.setText(categoryBean.getDesc());
        mViewBinding.f69789h.setText(categoryBean.getDesc());
        List<CategoryItemBean> list = categoryBean.getList();
        if (list != null && (eVar = this.mAdapter) != null) {
            eVar.q(list);
        }
        e eVar2 = this.mAdapter;
        if (eVar2 == null || (data = eVar2.getData()) == null || !(!data.isEmpty())) {
            return;
        }
        e eVar3 = this.mAdapter;
        CategoryItemBean categoryItemBean = (eVar3 == null || (data2 = eVar3.getData()) == null) ? null : (CategoryItemBean) data2.get(0);
        ni.f.a aVar = ni.f.f67269a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        ni.f.b bVarM = aVar.m(contextRequireContext);
        String str = "";
        if (categoryItemBean == null || (subject2 = categoryItemBean.getSubject()) == null || (cover2 = subject2.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ni.f.b bVarG = bVarM.g(url);
        if (categoryItemBean != null && (subject = categoryItemBean.getSubject()) != null && (cover = subject.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
            str = thumbnail;
        }
        ni.f.b bVarL = bVarG.l(str);
        AppCompatImageView ivCover = mViewBinding.f69785d;
        Intrinsics.g(ivCover, "ivCover");
        bVarL.d(ivCover);
    }

    public final String getPageName() {
        return "category";
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        j mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f69786e : null);
        biddingListManager.A(v.a(this));
        biddingListManager.G("PlayListScene");
        biddingListManager.z(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return CategoryFragment.E0(this.f69183a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    private final void loadData() {
        CategoryViewModel categoryViewModel = this.viewModel;
        if (categoryViewModel == null) {
            Intrinsics.y("viewModel");
            categoryViewModel = null;
        }
        String str = this.categoryType;
        if (str == null) {
            str = "Nollywood";
        }
        categoryViewModel.i(str);
    }

    private final void loadMore() {
        loadData();
    }

    private final void reload() {
        if (l.f76264a.e()) {
            loadDefaultData();
        } else {
            showLoadingView();
            showNoNetworkViewDelayed();
        }
    }

    public static final zk.b x0() {
        return new zk.b();
    }

    private final void y0(boolean isExpand) {
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            if (activity instanceof CategoryActivity) {
                ((CategoryActivity) activity).b0(isExpand);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0054  */
    /* JADX WARN: Code duplicated, block: B:14:0x005e  */
    /* JADX WARN: Code duplicated, block: B:15:0x0066  */
    /* JADX WARN: Code duplicated, block: B:17:0x006e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0074  */
    /* JADX WARN: Code duplicated, block: B:23:0x0084  */
    /* JADX WARN: Code duplicated, block: B:28:0x0091  */
    /* JADX WARN: Code duplicated, block: B:31:0x009d  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e0  */
    private final void z0(CategoryItemBean categoryItemBean, int position) {
        DownloadManagerApi.a aVar;
        DownloadManagerApi downloadManagerApiA;
        String subjectId;
        String resourceId;
        boolean z10;
        String resourceLink;
        Subject subject;
        String str;
        ResourceDetectors resourceDetector;
        String subjectId2;
        ResourceDetectors resourceDetector2;
        Boolean hasResource;
        Context context = getContext();
        if (context != null) {
            Subject subject2 = categoryItemBean.getSubject();
            boolean zBooleanValue = false;
            if (subject2 != null) {
                Integer subjectType = subject2.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    DownloadManagerApi downloadManagerApiA2 = DownloadManagerApi.f56187j.a();
                    Context context2 = getContext();
                    Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    downloadManagerApiA2.d0((FragmentActivity) context2, "playlist", (384 & 4) != 0 ? "" : "", a.a(subject2, this.categoryType), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : subject2, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                    str = "download_subject";
                    subject = subject2;
                } else if (t.f62121a.b()) {
                    C0(subject2);
                    subject = subject2;
                    str = "play_subject";
                } else {
                    aVar = DownloadManagerApi.f56187j;
                    downloadManagerApiA = aVar.a();
                    if (subject2 != null) {
                        subjectId = subject2.getSubjectId();
                    } else {
                        subjectId = null;
                    }
                    if (subject2 != null || (resourceDetector2 = subject2.getResourceDetector()) == null) {
                        resourceId = null;
                    } else {
                        resourceId = resourceDetector2.getResourceId();
                    }
                    if (subject2 == null && subject2.isSeries()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (DownloadManagerApi.x0(downloadManagerApiA, subjectId, resourceId, z10, false, 8, null)) {
                        if (subject2 == null && (subjectId2 = subject2.getSubjectId()) != null) {
                            DownloadManagerApi.z0(aVar.a(), subjectId2, context, "playlist", null, 8, null);
                        }
                        str = "play_subject";
                        subject = subject2;
                    } else {
                        DownloadManagerApi downloadManagerApiA3 = aVar.a();
                        FragmentActivity fragmentActivityRequireActivity = requireActivity();
                        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
                        String strA = a.a(subject2, this.categoryType);
                        if (subject2 != null || (resourceDetector = subject2.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
                            resourceLink = "";
                        }
                        subject = subject2;
                        downloadManagerApiA3.K(fragmentActivityRequireActivity, subject2, "playlist", (960 & 8) != 0 ? "" : null, strA, resourceLink, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : null, (960 & 512) != 0 ? false : false);
                        str = "download_subject";
                    }
                }
            } else if (t.f62121a.b()) {
                C0(subject2);
                subject = subject2;
                str = "play_subject";
            } else {
                aVar = DownloadManagerApi.f56187j;
                downloadManagerApiA = aVar.a();
                if (subject2 != null) {
                    subjectId = subject2.getSubjectId();
                } else {
                    subjectId = null;
                }
                if (subject2 != null) {
                    resourceId = null;
                } else {
                    resourceId = null;
                }
                if (subject2 == null) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                if (DownloadManagerApi.x0(downloadManagerApiA, subjectId, resourceId, z10, false, 8, null)) {
                    if (subject2 == null) {
                    }
                    str = "play_subject";
                    subject = subject2;
                } else {
                    DownloadManagerApi downloadManagerApiA4 = aVar.a();
                    FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
                    Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
                    String strA2 = a.a(subject2, this.categoryType);
                    if (subject2 != null) {
                        resourceLink = "";
                    } else {
                        resourceLink = "";
                    }
                    subject = subject2;
                    downloadManagerApiA4.K(fragmentActivityRequireActivity2, subject2, "playlist", (960 & 8) != 0 ? "" : null, strA2, resourceLink, (960 & 64) != 0 ? "" : null, (960 & 128) != 0 ? null : null, (960 & 256) != 0 ? null : null, (960 & 512) != 0 ? false : false);
                    str = "download_subject";
                }
            }
            zk.b bVarA0 = A0();
            String subjectId3 = subject != null ? subject.getSubjectId() : null;
            String ops = subject != null ? subject.getOps() : null;
            Integer numValueOf = Integer.valueOf(position);
            String itemType = categoryItemBean.getItemType();
            if (subject != null && (hasResource = subject.getHasResource()) != null) {
                zBooleanValue = hasResource.booleanValue();
            }
            bVarA0.c("playlist", str, subjectId3, ops, numValueOf, itemType, zBooleanValue, this.categoryType);
        }
    }

    @Override
    public j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        j jVarC = j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        this.categoryType = arguments != null ? arguments.getString("category_type") : null;
        Bundle arguments2 = getArguments();
        this.showType = arguments2 != null ? arguments2.getString("showType") : null;
        ArrayList arrayList = new ArrayList();
        final j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f69784c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    CategoryFragment.F0(this.f69175a, view2);
                }
            });
            RecyclerView recyclerView = mViewBinding.f69786e;
            recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
            rk.b bVar = new rk.b(0.6f, new b(), false, 4, null);
            bVar.l(2);
            recyclerView.addOnScrollListener(bVar);
            this.mExposureHelper = bVar;
            e eVar = new e(arrayList, getPageName(), this.mExposureHelper, this.showType);
            eVar.h0().z(true);
            eVar.h0().y(true);
            eVar.h0().D(new r6.f() {
                @Override
                public final void a() {
                    CategoryFragment.G0(this.f69176a);
                }
            });
            eVar.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i10) {
                    CategoryFragment.I0(this.f69177a, baseQuickAdapter, view2, i10);
                }
            });
            eVar.l(R$id.ll_download);
            eVar.s1(new r6.b() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i10) {
                    CategoryFragment.J0(this.f69178a, baseQuickAdapter, view2, i10);
                }
            });
            this.mAdapter = eVar;
            recyclerView.setAdapter(eVar);
            mViewBinding.f69783b.addOnOffsetChangedListener(new AppBarLayout.g() {
                @Override
                public final void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
                    CategoryFragment.K0(this.f69179a, mViewBinding, appBarLayout, i10);
                }
            });
        }
        initAd();
    }

    @Override
    public void initViewModel() {
        CategoryViewModel categoryViewModel = (CategoryViewModel) new v0(this).a(CategoryViewModel.class);
        this.viewModel = categoryViewModel;
        if (categoryViewModel == null) {
            Intrinsics.y("viewModel");
            categoryViewModel = null;
        }
        categoryViewModel.j().j(this, new a.C0600a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return CategoryFragment.L0(this.f69174a, (BaseDto) obj);
            }
        }));
        M0();
    }

    @Override
    public void loadDefaultData() {
        if (l.f76264a.e()) {
            showLoadingView();
            loadData();
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override
    public void onDestroyView() {
        CategoryViewModel categoryViewModel = this.viewModel;
        if (categoryViewModel == null) {
            Intrinsics.y("viewModel");
            categoryViewModel = null;
        }
        categoryViewModel.o(1);
        CategoryViewModel categoryViewModel2 = this.viewModel;
        if (categoryViewModel2 == null) {
            Intrinsics.y("viewModel");
            categoryViewModel2 = null;
        }
        categoryViewModel2.j().q(null);
        super.onDestroyView();
    }

    @Override
    public void onPause() {
        super.onPause();
        rk.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override
    public void retryLoadData() {
        List<Object> data;
        e eVar = this.mAdapter;
        if (eVar != null && (data = eVar.getData()) != null && data.size() == 0) {
            reload();
            return;
        }
        e eVar2 = this.mAdapter;
        if (eVar2 == null || eVar2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        eVar2.h0().w();
    }

    @Override
    public void initViewData() {
        Toolbar toolbar;
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (toolbar = mViewBinding.f69787f) != null) {
            uf.c.e(toolbar);
        }
        pageStateFitStatusBar();
    }
}

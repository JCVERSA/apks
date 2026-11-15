package com.transsion.member.history;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.member.R$string;
import com.transsion.member.bean.Pager;
import com.transsion.member.bean.PointsHistoryData;
import com.transsion.member.bean.PointsHistoryItem;
import com.transsion.member.view.HistoryStateView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0007J\u000f\u0010\u0012\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lcom/transsion/member/history/PointsHistoryFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/member/bean/PointsHistoryItem;", "<init>", "()V", "", "s0", "()Ljava/lang/String;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "initViewData", "G0", "loadMore", "lazyLoadData", "getPageStateLayoutTitle", "initViewModel", "retryLoadData", "Landroid/view/View;", "q0", "()Landroid/view/View;", "Lcom/transsion/member/history/PointsHistoryViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "Q0", "()Lcom/transsion/member/history/PointsHistoryViewModel;", "mViewModel", "c", "Ljava/lang/String;", "mPageNum", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "hasMoreData", "e", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PointsHistoryFragment extends BaseListFragment<PointsHistoryItem> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f45104f = 8;

    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(PointsHistoryViewModel.class), new Function0<x0>() {
        {
            super(0);
        }

        @Override
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() {
        {
            super(0);
        }

        @Override
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private String mPageNum = "1";

    private boolean hasMoreData = true;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PointsHistoryFragment a() {
            return new PointsHistoryFragment();
        }

        private Companion() {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f45108a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45108a = function;
        }

        @Override
        public final Function a() {
            return this.f45108a;
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
            this.f45108a.invoke(obj);
        }
    }

    private final PointsHistoryViewModel Q0() {
        return (PointsHistoryViewModel) this.mViewModel.getValue();
    }

    public static final Unit R0(PointsHistoryFragment pointsHistoryFragment) {
        Navigator.x(TheRouter.c("/rewards/center"), pointsHistoryFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    public static final Unit S0(PointsHistoryFragment pointsHistoryFragment, PointsHistoryData pointsHistoryData) {
        Pager page;
        List<PointsHistoryItem> list;
        if (pointsHistoryData == null || (list = pointsHistoryData.getList()) == null) {
            pointsHistoryFragment.N0();
        } else if (pointsHistoryFragment.A0() || Intrinsics.c(pointsHistoryFragment.mPageNum, "1")) {
            pointsHistoryFragment.I0(false);
            if (list.isEmpty()) {
                BaseListFragment.K0(pointsHistoryFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = pointsHistoryFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(list);
                }
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = pointsHistoryFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(list);
            }
        }
        if (pointsHistoryData != null && (page = pointsHistoryData.getPage()) != null) {
            if (!page.getHasMore() || Intrinsics.c(pointsHistoryFragment.mPageNum, page.getNextPage())) {
                pointsHistoryFragment.hasMoreData = false;
                BaseListFragment.D0(pointsHistoryFragment, false, 1, null);
            } else {
                pointsHistoryFragment.hasMoreData = true;
                pointsHistoryFragment.mPageNum = page.getNextPage();
                pointsHistoryFragment.B0();
            }
        }
        return Unit.f64096a;
    }

    @Override
    public void G0() {
        I0(true);
        this.mPageNum = "1";
        this.hasMoreData = true;
        lazyLoadData();
    }

    @Override
    public String getPageStateLayoutTitle() {
        String string = getString(R$string.points_history_title);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override
    public void initViewData() {
        super.initViewData();
        I0(true);
    }

    @Override
    public void initViewModel() {
        u0();
        Q0().e().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PointsHistoryFragment.S0(this.f45116a, (PointsHistoryData) obj);
            }
        }));
    }

    @Override
    public void lazyLoadData() {
        if (this.hasMoreData) {
            PointsHistoryViewModel pointsHistoryViewModelQ0 = Q0();
            String str = this.mPageNum;
            if (str == null) {
                str = "1";
            }
            pointsHistoryViewModelQ0.d(str);
        }
    }

    @Override
    public void loadMore() {
        String str = this.mPageNum;
        if (str == null || str.length() == 0 || Intrinsics.c(this.mPageNum, "0")) {
            BaseListFragment.D0(this, false, 1, null);
        } else {
            lazyLoadData();
        }
    }

    @Override
    public BaseQuickAdapter m0() {
        return new com.transsion.member.adapter.b(0, 1, null);
    }

    @Override
    public View q0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        HistoryStateView historyStateView = new HistoryStateView(contextRequireContext);
        String string = getString(R$string.points_history_empty);
        Intrinsics.g(string, "getString(...)");
        historyStateView.showData(4, 1, false, "", string);
        String string2 = getString(R$string.points_history_earn);
        Intrinsics.g(string2, "getString(...)");
        historyStateView.setReTryTxt(string2);
        historyStateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return PointsHistoryFragment.R0(this.f45115a);
            }
        });
        return historyStateView;
    }

    @Override
    public void retryLoadData() {
        lazyLoadData();
    }

    @Override
    public String s0() {
        String string = getString(R$string.points_history_title);
        Intrinsics.g(string, "getString(...)");
        return string;
    }
}

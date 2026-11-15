package com.transsnet.downloader.fragment;

import android.content.Context;
import android.view.View;
import androidx.p009lifecycle.Lifecycle;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\u0003J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadedListFragment;", "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;", "<init>", "()V", "", "l1", "n1", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "", "isShowTitleLayout", "Landroid/view/View;", "getEmptyView", "(Z)Landroid/view/View;", "getPageName", CampaignEx.JSON_KEY_AD_K, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadedListFragment extends DownloadedBaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadedListFragment a() {
            return new DownloadedListFragment();
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56826a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56826a = function;
        }

        @Override
        public final Function a() {
            return this.f56826a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f56826a.invoke(obj);
        }
    }

    private final void l1() {
        DownloadViewModel.N(s0(), false, 1, null);
    }

    public static final Unit m1(DownloadedListFragment downloadedListFragment) {
        Navigator.x(TheRouter.c("/home/movieFilter").F("tabId", 2), downloadedListFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    private final void n1() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadedListFragment.o1(this.f57013a, (yw.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = yw.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit o1(DownloadedListFragment downloadedListFragment, yw.a it) {
        Intrinsics.h(it, "it");
        try {
            downloadedListFragment.l1();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f64096a;
    }

    public static final Unit p1(DownloadedListFragment downloadedListFragment, List list) {
        downloadedListFragment.D0(list);
        return Unit.f64096a;
    }

    @Override
    public View getEmptyView(boolean isShowTitleLayout) {
        if (getMEmptyView() == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            String string = stateView.getContext().getString(R$string.download_no_historical_tips);
            Intrinsics.g(string, "getString(...)");
            stateView.showData(4, 6, false, "", string);
            String string2 = stateView.getContext().getString(R$string.download_empty_find_free_source);
            Intrinsics.g(string2, "getString(...)");
            stateView.setReTryTxt(string2);
            stateView.retry(new Function0() {
                @Override
                public final Object invoke() {
                    return DownloadedListFragment.m1(this.f56995a);
                }
            });
            f1(stateView);
        }
        View mEmptyView = getMEmptyView();
        Intrinsics.e(mEmptyView);
        return mEmptyView;
    }

    @Override
    public String getPageName() {
        return DownloadPageType.DOWNLOAD.getPageName();
    }

    @Override
    public String getPageStateLayoutTitle() {
        String string;
        Context context = getContext();
        return (context == null || (string = context.getString(R$string.download_no_historical_tips)) == null) ? "" : string;
    }

    @Override
    public void initViewData() {
        super.initViewData();
        n1();
    }

    @Override
    public void initViewModel() {
        super.initViewModel();
        s0().O().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadedListFragment.p1(this.f57005a, (List) obj);
            }
        }));
    }
}

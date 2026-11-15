package com.transsnet.downloader.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsnet.downloader.dialog.TransferGuideDialog;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.transsnet.downloader.widget.TransferSelectSeriesListView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0016\u0018\u0000 /2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u00052\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001f\u0010 J!\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J!\u0010'\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b'\u0010&J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u0004J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010\u0004¨\u00061"}, d2 = {"Lcom/transsnet/downloader/fragment/TransferMainFragment;", "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;", "Lbx/l0;", "<init>", "()V", "", "initViewModel", "Landroid/view/LayoutInflater;", "inflater", "E0", "(Landroid/view/LayoutInflater;)Lbx/l0;", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "r0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "", RequestParameters.POSITION, "t0", "(I)V", "state", "s0", "Landroidx/fragment/app/Fragment;", "d0", "(I)Landroidx/fragment/app/Fragment;", "", "", "f0", "()Ljava/util/List;", "list", "u0", "(Ljava/util/List;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "", "hidden", "onHiddenChanged", "(Z)V", "onStop", "onDestroy", CampaignEx.JSON_KEY_AD_K, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class TransferMainFragment extends DownloadTabBaseFragment<bx.l0> {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferMainFragment a() {
            TransferMainFragment transferMainFragment = new TransferMainFragment();
            transferMainFragment.setArguments(androidx.core.os.d.a());
            return transferMainFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56887a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56887a = function;
        }

        @Override
        public final Function a() {
            return this.f56887a;
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
            this.f56887a.invoke(obj);
        }
    }

    public static final void F0() {
        TransferGuideDialog.Companion aVar = TransferGuideDialog.INSTANCE;
        if (aVar.a()) {
            return;
        }
        aVar.b().k0(com.blankj.utilcode.util.a.b(), "TransferGuideDialog");
        aVar.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit G0(TransferMainFragment transferMainFragment, String str) {
        TransferBottomToolsView transferBottomToolsView;
        bx.l0 l0Var = (bx.l0) transferMainFragment.getMViewBinding();
        if (l0Var != null && (transferBottomToolsView = l0Var.f16162d) != null) {
            Intrinsics.e(str);
            transferBottomToolsView.changeStatus(str);
        }
        if (Intrinsics.c(str, TransferBottomToolsView.STATUS_DEFAULT)) {
            transferMainFragment.j0().h0().q(0);
        }
        return Unit.f64096a;
    }

    public static final Unit H0(TransferMainFragment transferMainFragment, Integer num) {
        ViewPager2 viewPager2Z0;
        RecyclerView.Adapter adapter;
        ViewPager2 viewPager2Z1 = transferMainFragment.z0();
        if (((viewPager2Z1 == null || (adapter = viewPager2Z1.getAdapter()) == null) ? 0 : adapter.getItemCount()) > num.intValue() && num.intValue() >= 0 && (viewPager2Z0 = transferMainFragment.z0()) != null) {
            Intrinsics.e(num);
            viewPager2Z0.setCurrentItem(num.intValue());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit I0(TransferMainFragment transferMainFragment, Boolean bool) {
        TransferSelectSeriesListView transferSelectSeriesListView;
        bx.l0 l0Var = (bx.l0) transferMainFragment.getMViewBinding();
        if (l0Var != null && (transferSelectSeriesListView = l0Var.f16163e) != null) {
            Intrinsics.e(bool);
            transferSelectSeriesListView.setVisibility(bool.booleanValue() ? 0 : 8);
        }
        return Unit.f64096a;
    }

    private final void initViewModel() {
        j0().a0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferMainFragment.G0(this.f56977a, (String) obj);
            }
        }));
        j0().j0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferMainFragment.H0(this.f56988a, (Integer) obj);
            }
        }));
        j0().c0().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferMainFragment.I0(this.f56997a, (Boolean) obj);
            }
        }));
    }

    @Override
    public bx.l0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.l0 l0VarC = bx.l0.c(inflater);
        Intrinsics.g(l0VarC, "inflate(...)");
        return l0VarC;
    }

    @Override
    public Fragment d0(int position) {
        String str;
        List listK;
        TransferSelectListFragment.Companion aVar = TransferSelectListFragment.INSTANCE;
        DownloadTabBaseFragment.a commonNavigatorAdapter = getCommonNavigatorAdapter();
        if (commonNavigatorAdapter == null || (listK = commonNavigatorAdapter.k()) == null || (str = (String) listK.get(position)) == null) {
            str = "";
        }
        return aVar.a(position, str);
    }

    @Override
    public List f0() {
        return (List) j0().l0().f();
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        initViewModel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        TransferBottomToolsView transferBottomToolsView;
        TransferBottomToolsView transferBottomToolsView2;
        ConstraintLayout root;
        TransferBottomToolsView transferBottomToolsView3;
        TransferBottomToolsView transferBottomToolsView4;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var != null && (transferBottomToolsView4 = l0Var.f16162d) != null) {
            transferBottomToolsView4.setPageStatus(true);
        }
        bx.l0 l0Var2 = (bx.l0) getMViewBinding();
        if (l0Var2 != null && (transferBottomToolsView3 = l0Var2.f16162d) != null) {
            transferBottomToolsView3.setParentFragment(this);
        }
        bx.l0 l0Var3 = (bx.l0) getMViewBinding();
        if (l0Var3 != null && (root = l0Var3.getRoot()) != null) {
            root.post(new Runnable() {
                @Override
                public final void run() {
                    TransferMainFragment.F0();
                }
            });
        }
        KeyEventDispatcher.Component activity = getActivity();
        if (activity instanceof dl.b) {
            bx.l0 l0Var4 = (bx.l0) getMViewBinding();
            ViewGroup.LayoutParams layoutParams = (l0Var4 == null || (transferBottomToolsView2 = l0Var4.f16162d) == null) ? null : transferBottomToolsView2.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.bottomMargin = lj.a.b(((dl.b) activity).getIsBottomTabLargeType() ? 80 : 56);
            bx.l0 l0Var5 = (bx.l0) getMViewBinding();
            if (l0Var5 == null || (transferBottomToolsView = l0Var5.f16162d) == null) {
                return;
            }
            transferBottomToolsView.setLayoutParams(marginLayoutParams);
        }
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onHiddenChanged(boolean hidden) {
        TransferBottomToolsView transferBottomToolsView;
        super.onHiddenChanged(hidden);
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f16162d) == null) {
            return;
        }
        transferBottomToolsView.onPageNotVisible();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onStop() {
        TransferBottomToolsView transferBottomToolsView;
        super.onStop();
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var == null || (transferBottomToolsView = l0Var.f16162d) == null) {
            return;
        }
        transferBottomToolsView.onPageNotVisible();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public MagicIndicator r0() {
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var != null) {
            return l0Var.f16160b;
        }
        return null;
    }

    @Override
    public void s0(int state) {
    }

    @Override
    public void t0(int position) {
        j0().k0().q(Integer.valueOf(position));
        androidx.p009lifecycle.b0 b0VarF0 = j0().f0(position);
        j0().h0().q(Integer.valueOf(DownloadUtil.f57680a.w(b0VarF0 != null ? (List) b0VarF0.f() : null)));
    }

    @Override
    public void u0(List list) {
        j0().l0().q(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ViewPager2 z0() {
        bx.l0 l0Var = (bx.l0) getMViewBinding();
        if (l0Var != null) {
            return l0Var.f16165g;
        }
        return null;
    }
}

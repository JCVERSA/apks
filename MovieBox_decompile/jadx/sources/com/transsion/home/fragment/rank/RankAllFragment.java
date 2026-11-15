package com.transsion.home.fragment.rank;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.a0;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.u;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.home.R$color;
import com.transsion.home.R$id;
import com.transsion.home.R$string;
import com.transsion.home.bean.CategoryType;
import com.transsion.home.bean.RankAllData;
import com.transsion.home.viewmodel.RankAllViewModel;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import o0.x;
import qk.s;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0007\u0018\u0000 >2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J'\u0010'\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000f0$2\b\u0010&\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006@²\u0006\u0010\u0010?\u001a\u0004\u0018\u00010\f8\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/transsion/home/fragment/rank/RankAllFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lqk/s;", "<init>", "()V", "", "C0", "E0", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "v0", "", "getPageName", "()Ljava/lang/String;", "Lcom/transsion/home/bean/CategoryType;", "category", "", RequestParameters.POSITION, "D0", "(Lcom/transsion/home/bean/CategoryType;I)V", "Landroid/view/LayoutInflater;", "inflater", "z0", "(Landroid/view/LayoutInflater;)Lqk/s;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "startLoading", "hideLoading", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "items", "defaultCateGory", "i0", "(Ljava/util/List;Ljava/lang/String;Landroidx/compose/runtime/i;I)V", "Lcom/transsion/home/viewmodel/RankAllViewModel;", "a", "Lcom/transsion/home/viewmodel/RankAllViewModel;", "viewModel", "Lcom/transsion/home/fragment/rank/RankListFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/fragment/rank/RankListFragment;", "listFragment", "", "c", "Z", "hasRenderFirst", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "mErrorView", "e", "I", "tabId", "f", "Ljava/lang/String;", "rankingListId", "g", "currentCategory", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RankAllFragment extends BaseFragment<s> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f44003h = 8;

    private RankAllViewModel viewModel;

    private RankListFragment listFragment;

    private boolean hasRenderFirst;

    private View mErrorView;

    private int tabId;

    private String rankingListId;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RankAllFragment a(String str, Integer num, String str2, String str3) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            bundle.putInt("tabId", num != null ? num.intValue() : 0);
            bundle.putString("defaultCategory", str2);
            bundle.putString("rankingListId", str3);
            RankAllFragment rankAllFragment = new RankAllFragment();
            rankAllFragment.setArguments(bundle);
            return rankAllFragment;
        }

        private Companion() {
        }
    }

    static final class b implements Function3 {

        final CategoryType f44010a;

        final RankAllFragment f44011b;

        final int f44012c;

        final i1 f44013d;

        b(CategoryType categoryType, RankAllFragment rankAllFragment, int i10, i1 i1Var) {
            this.f44010a = categoryType;
            this.f44011b = rankAllFragment;
            this.f44012c = i10;
            this.f44013d = i1Var;
        }

        public static final Unit c(CategoryType categoryType, RankAllFragment rankAllFragment, int i10, i1 i1Var) {
            if (!Intrinsics.c(RankAllFragment.j0(i1Var), categoryType.getType())) {
                RankAllFragment.k0(i1Var, categoryType.getType());
                RankListFragment rankListFragment = rankAllFragment.listFragment;
                if (rankListFragment != null) {
                    rankListFragment.startLoading();
                }
                RankAllViewModel rankAllViewModel = rankAllFragment.viewModel;
                if (rankAllViewModel != null) {
                    rankAllViewModel.k(RankAllFragment.j0(i1Var), rankAllFragment.tabId, rankAllFragment.rankingListId);
                }
                rankAllFragment.D0(categoryType, i10);
            }
            return Unit.f64096a;
        }

        public final void b(androidx.compose.foundation.lazy.b item, androidx.compose.runtime.i iVar, int i10) {
            Intrinsics.h(item, "$this$item");
            if ((i10 & 17) == 16 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1073765077, i10, -1, "com.transsion.home.fragment.rank.RankAllFragment.SetRankCategoryUI.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RankAllFragment.kt:282)");
            }
            boolean zC = Intrinsics.c(RankAllFragment.j0(this.f44013d), this.f44010a.getType());
            int i11 = zC ? R$color.rank_all_list_background : R$color.rank_all_category_background;
            androidx.compose.ui.b.c cVarH = androidx.compose.ui.b.f3778a.h();
            androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f3869a;
            androidx.compose.ui.f fVarB = BackgroundKt.b(SizeKt.p(SizeKt.d(aVar, 0.0f, 1, null), null, false, 3, null), i0.b.a(i11, iVar, 0), null, 2, null);
            float fG = o0.i.g(0);
            FragmentActivity activity = this.f44011b.getActivity();
            androidx.compose.ui.f fVarF = PaddingKt.f(fVarB, fG, o0.i.g((activity == null || !com.transsion.baseui.util.b.a(activity)) ? 16 : 20));
            iVar.P(-1224400529);
            boolean zA = iVar.A(this.f44010a) | iVar.A(this.f44011b) | iVar.c(this.f44012c);
            final CategoryType categoryType = this.f44010a;
            final RankAllFragment rankAllFragment = this.f44011b;
            final int i12 = this.f44012c;
            final i1 i1Var = this.f44013d;
            Object objY = iVar.y();
            if (zA || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Function0() {
                    @Override
                    public final Object invoke() {
                        return RankAllFragment.b.c(categoryType, rankAllFragment, i12, i1Var);
                    }
                };
                iVar.p(objY);
            }
            iVar.K();
            androidx.compose.ui.f fVarD = ClickableKt.d(fVarF, false, null, null, (Function0) objY, 7, null);
            CategoryType categoryType2 = this.f44010a;
            t tVarB = a0.b(androidx.compose.foundation.layout.b.f2527a.c(), cVarH, iVar, 48);
            int iA = androidx.compose.runtime.g.a(iVar, 0);
            androidx.compose.runtime.s sVarN = iVar.n();
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVar, fVarD);
            ComposeUiNode.Companion companion = ComposeUiNode.f4915c1;
            Function0 function0A = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A);
            } else {
                iVar.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVar);
            f3.b(iVarA, tVarB, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            d0 d0Var = d0.f2540a;
            iVar.P(1353739126);
            if (zC) {
                BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.l(aVar, o0.i.g(3)), o0.i.g(16)), i0.b.a(com.tn.lib.widget.R$color.brand, iVar, 0), null, 2, null), iVar, 0);
            }
            iVar.K();
            int i13 = zC ? com.tn.lib.widget.R$color.brand : R$color.rank_all_category_text;
            String name = categoryType2.getName();
            if (name == null) {
                name = "";
            }
            TextKt.a(name, PaddingKt.g(aVar, o0.i.g(12), 0.0f, 2, null), i0.b.a(i13, iVar, 0), x.c(14), null, androidx.compose.ui.text.font.p.f5840b.c(), androidx.compose.ui.text.font.h.f5815b.b(), 0L, null, null, 0L, androidx.compose.ui.text.style.p.f6133a.b(), true, 2, 0, null, null, iVar, 199728, 3504, 116624);
            iVar.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) {
            b((androidx.compose.foundation.lazy.b) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
            return Unit.f64096a;
        }
    }

    static final class c implements Function2 {

        final RankAllData f44015b;

        c(RankAllData rankAllData) {
            this.f44015b = rankAllData;
        }

        /* JADX WARN: Code duplicated, block: B:43:0x0084  */
        /* JADX WARN: Code duplicated, block: B:45:0x0088  */
        public final void a(androidx.compose.runtime.i iVar, int i10) {
            String currentCategoryType;
            List<CategoryType> arrayList;
            List<CategoryType> categoryList;
            if ((i10 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(45154986, i10, -1, "com.transsion.home.fragment.rank.RankAllFragment.initView.<anonymous>.<anonymous> (RankAllFragment.kt:134)");
            }
            Bundle arguments = RankAllFragment.this.getArguments();
            String string = arguments != null ? arguments.getString("defaultCategory") : null;
            if (string == null || string.length() == 0) {
                RankAllData rankAllData = this.f44015b;
                currentCategoryType = rankAllData != null ? rankAllData.getCurrentCategoryType() : null;
            } else {
                currentCategoryType = string;
            }
            if (string != null && string.length() != 0) {
                RankAllData rankAllData2 = this.f44015b;
                if (rankAllData2 == null || (categoryList = rankAllData2.getCategoryList()) == null) {
                    RankAllData rankAllData3 = this.f44015b;
                    currentCategoryType = rankAllData3 != null ? rankAllData3.getCurrentCategoryType() : null;
                } else {
                    List<CategoryType> list = categoryList;
                    if ((list instanceof Collection) && list.isEmpty()) {
                        RankAllData rankAllData4 = this.f44015b;
                        currentCategoryType = rankAllData4 != null ? rankAllData4.getCurrentCategoryType() : null;
                    } else {
                        Iterator<T> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                RankAllData rankAllData5 = this.f44015b;
                                currentCategoryType = rankAllData5 != null ? rankAllData5.getCurrentCategoryType() : null;
                            } else if (Intrinsics.c(((CategoryType) it.next()).getType(), currentCategoryType)) {
                            }
                        }
                    }
                }
            }
            RankAllFragment rankAllFragment = RankAllFragment.this;
            RankAllData rankAllData6 = this.f44015b;
            if (rankAllData6 == null || (arrayList = rankAllData6.getCategoryList()) == null) {
                arrayList = new ArrayList<>();
            }
            rankAllFragment.i0(arrayList, currentCategoryType, iVar, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            a((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
            return Unit.f64096a;
        }
    }

    public static final class d implements yg.m {
        d() {
        }

        @Override
        public void onConnected() {
            yg.m.a.a(this);
        }

        @Override
        public void onDisconnected() {
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            View view;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (RankAllFragment.this.isResumed() && (view = RankAllFragment.this.mErrorView) != null && uf.c.i(view)) {
                View view2 = RankAllFragment.this.mErrorView;
                if (view2 != null) {
                    uf.c.g(view2);
                }
                RankAllFragment.this.lazyLoadData();
            }
        }
    }

    static final class e implements c0, FunctionAdapter {

        private final Function1 f44017a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44017a = function;
        }

        @Override
        public final Function a() {
            return this.f44017a;
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
            this.f44017a.invoke(obj);
        }
    }

    public static final void A0(RankAllFragment rankAllFragment, View view) {
        FragmentActivity activity = rankAllFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final Unit B0(RankAllFragment rankAllFragment, RankAllData rankAllData) {
        ComposeView composeView;
        List<Subject> subjects;
        if (rankAllFragment.hasRenderFirst) {
            RankListFragment rankListFragment = rankAllFragment.listFragment;
            if (rankListFragment != null) {
                rankListFragment.hideLoading();
            }
        } else {
            rankAllFragment.hideLoading();
        }
        if (((rankAllData == null || (subjects = rankAllData.getSubjects()) == null) ? 0 : subjects.size()) <= 0) {
            rankAllFragment.E0();
            return Unit.f64096a;
        }
        if (!rankAllFragment.hasRenderFirst) {
            s mViewBinding = rankAllFragment.getMViewBinding();
            if (mViewBinding != null && (composeView = mViewBinding.f69848b) != null) {
                composeView.setContent(androidx.compose.runtime.internal.b.b(45154986, true, rankAllFragment.new c(rankAllData)));
            }
            rankAllFragment.hasRenderFirst = true;
        }
        RankListFragment rankListFragment2 = rankAllFragment.listFragment;
        if (rankListFragment2 != null) {
            rankListFragment2.k0(rankAllData);
        }
        qi.b logViewConfig = rankAllFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        return Unit.f64096a;
    }

    private final void C0() {
        setNetListener(new d());
    }

    public final void D0(CategoryType category, int position) {
        String type;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("event_type", "category_click");
        if (category == null || (type = category.getType()) == null) {
            type = "";
        }
        linkedHashMap.put("category", type);
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
        qi.h.f69682a.o(getPageName(), linkedHashMap);
    }

    private final void E0() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                RankAllFragment.F0(this.f44031a);
            }
        }, 200L);
    }

    public static final void F0(RankAllFragment rankAllFragment) {
        FrameLayout frameLayout;
        if (rankAllFragment.isDetached() || !rankAllFragment.isAdded() || rankAllFragment.getContext() == null) {
            return;
        }
        View viewV0 = yg.l.f76264a.e() ? rankAllFragment.v0() : rankAllFragment.getNoNetworkView();
        if (rankAllFragment.hasRenderFirst) {
            RankListFragment rankListFragment = rankAllFragment.listFragment;
            if (rankListFragment != null) {
                rankListFragment.j0(viewV0);
            }
        } else {
            s mViewBinding = rankAllFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout = mViewBinding.f69849c) != null) {
                frameLayout.removeAllViews();
                frameLayout.addView(viewV0);
                frameLayout.setVisibility(0);
            }
        }
        rankAllFragment.mErrorView = viewV0;
    }

    private final View getNoNetworkView() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext);
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return RankAllFragment.x0(noNetworkBigView, this);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return RankAllFragment.y0(this.f44034a);
            }
        });
        com.tn.lib.view.o.a(getPageName());
        return noNetworkBigView;
    }

    private final String getPageName() {
        return "rank_all_page";
    }

    public static final String j0(i1 i1Var) {
        return (String) i1Var.getValue();
    }

    public static final void k0(i1 i1Var, String str) {
        i1Var.setValue(str);
    }

    public static final Unit l0(List list, RankAllFragment rankAllFragment, i1 i1Var, u LazyColumn) {
        Intrinsics.h(LazyColumn, "$this$LazyColumn");
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            CategoryType categoryType = (CategoryType) obj;
            androidx.compose.foundation.lazy.t.a(LazyColumn, categoryType.getType() + i10, null, androidx.compose.runtime.internal.b.b(-1073765077, true, new b(categoryType, rankAllFragment, i10, i1Var)), 2, null);
            i10 = i11;
        }
        return Unit.f64096a;
    }

    public static final Unit m0(RankAllFragment rankAllFragment, List list, String str, int i10, androidx.compose.runtime.i iVar, int i11) {
        rankAllFragment.i0(list, str, iVar, v1.a(i10 | 1));
        return Unit.f64096a;
    }

    private final View v0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, 1, false, "", "");
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return RankAllFragment.w0(this.f44035a);
            }
        });
        return stateView;
    }

    public static final Unit w0(RankAllFragment rankAllFragment) {
        rankAllFragment.lazyLoadData();
        return Unit.f64096a;
    }

    public static final Unit x0(NoNetworkBigView noNetworkBigView, RankAllFragment rankAllFragment) {
        uf.c.g(noNetworkBigView);
        rankAllFragment.lazyLoadData();
        com.tn.lib.view.o.b(rankAllFragment.getPageName());
        return Unit.f64096a;
    }

    public static final Unit y0(RankAllFragment rankAllFragment) {
        com.tn.lib.view.o.c(rankAllFragment.getPageName());
        return Unit.f64096a;
    }

    @Override
    public void hideLoading() {
        ConstraintLayout constraintLayout;
        s mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f69850d) == null) {
            return;
        }
        uf.c.h(constraintLayout);
    }

    public final void i0(final List items, final String str, androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        androidx.compose.runtime.i iVar2;
        Intrinsics.h(items, "items");
        androidx.compose.runtime.i iVarG = iVar.g(-1793930920);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.A(items) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= iVarG.O(str) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i11 |= iVarG.A(this) ? 256 : 128;
        }
        if ((i11 & 147) == 146 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1793930920, i11, -1, "com.transsion.home.fragment.rank.RankAllFragment.SetRankCategoryUI (RankAllFragment.kt:276)");
            }
            iVarG.P(1849434622);
            Object objY = iVarG.y();
            androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3427a;
            if (objY == aVar.a()) {
                objY = u2.c(str, null, 2, null);
                iVarG.p(objY);
            }
            final i1 i1Var = (i1) objY;
            iVarG.K();
            androidx.compose.ui.f fVarB = BackgroundKt.b(androidx.compose.ui.f.f3869a, i0.b.a(R$color.rank_all_category_background, iVarG, 0), null, 2, null);
            iVarG.P(-1746271574);
            boolean zA = iVarG.A(items) | iVarG.A(this);
            Object objY2 = iVarG.y();
            if (zA || objY2 == aVar.a()) {
                objY2 = new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RankAllFragment.l0(items, this, i1Var, (u) obj);
                    }
                };
                iVarG.p(objY2);
            }
            iVarG.K();
            iVar2 = iVarG;
            LazyDslKt.a(fVarB, null, null, false, null, null, null, false, (Function1) objY2, iVarG, 0, 254);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return RankAllFragment.m0(this.f44027a, items, str, i10, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        b0 b0VarJ;
        TitleLayout titleLayout;
        Intrinsics.h(view, "view");
        s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f69851e) != null) {
            titleLayout.setLeftOnclick(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    RankAllFragment.A0(this.f44022a, view2);
                }
            });
            String string = getString(R$string.str_ranking);
            Intrinsics.g(string, "getString(...)");
            titleLayout.setTitleText(string);
            zg.h hVar = zg.h.f76787a;
            Context context = titleLayout.getContext();
            Intrinsics.g(context, "getContext(...)");
            titleLayout.setPadding(0, hVar.d(context), 0, 0);
        }
        RankAllViewModel rankAllViewModel = this.viewModel;
        if (rankAllViewModel != null && (b0VarJ = rankAllViewModel.j()) != null) {
            b0VarJ.j(this, new e(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RankAllFragment.B0(this.f44023a, (RankAllData) obj);
                }
            }));
        }
        Fragment fragmentJ0 = getChildFragmentManager().j0(R$id.rank_all_category_item_fragment);
        Intrinsics.f(fragmentJ0, "null cannot be cast to non-null type com.transsion.home.fragment.rank.RankListFragment");
        this.listFragment = (RankListFragment) fragmentJ0;
        C0();
    }

    @Override
    public void lazyLoadData() {
        if (this.hasRenderFirst) {
            RankListFragment rankListFragment = this.listFragment;
            if (rankListFragment != null) {
                rankListFragment.startLoading();
            }
        } else {
            startLoading();
        }
        Bundle arguments = getArguments();
        this.tabId = arguments != null ? arguments.getInt("tabId") : 0;
        Bundle arguments2 = getArguments();
        this.rankingListId = arguments2 != null ? arguments2.getString("rankingListId") : null;
        RankAllViewModel rankAllViewModel = this.viewModel;
        if (rankAllViewModel != null) {
            Bundle arguments3 = getArguments();
            rankAllViewModel.k(arguments3 != null ? arguments3.getString("category") : null, this.tabId, this.rankingListId);
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void startLoading() {
        FrameLayout frameLayout;
        ConstraintLayout constraintLayout;
        s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayout = mViewBinding.f69850d) != null) {
            uf.c.k(constraintLayout);
        }
        s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (frameLayout = mViewBinding2.f69849c) == null) {
            return;
        }
        uf.c.g(frameLayout);
    }

    @Override
    public s getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (RankAllViewModel) new v0(activity).a(RankAllViewModel.class);
        }
        s sVarC = s.c(inflater);
        Intrinsics.g(sVarC, "inflate(...)");
        return sVarC;
    }
}

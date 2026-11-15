package com.transsion.commercialization.aha;

import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.c0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.bean.AhaGameAllGames;
import com.transsion.bean.AhaGameData;
import com.transsion.bean.AhaGameResponse;
import com.transsion.bean.GameLayoutType;
import com.transsion.commercialization.R$string;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import sj.i;
import yg.l;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 ;2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010*\u001a\u0004\b8\u00109¨\u0006<"}, d2 = {"Lcom/transsion/commercialization/aha/AhaGameAllFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lsj/i;", "<init>", "()V", "", "w0", "", "url", "toWeb", "(Ljava/lang/String;)V", "loadMore", "Lcom/transsion/bean/AhaGameResponse;", "ahaGameResponse", "D0", "(Lcom/transsion/bean/AhaGameResponse;)V", "", "gameId", "", "r0", "(Ljava/lang/Integer;)Z", "A0", "Landroid/view/LayoutInflater;", "inflater", "v0", "(Landroid/view/LayoutInflater;)Lsj/i;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "loadDefaultData", "initListener", "retryLoadData", "onPause", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/commercialization/aha/GameRecommendViewModel;", "a", "Lkotlin/Lazy;", "u0", "()Lcom/transsion/commercialization/aha/GameRecommendViewModel;", "mViewModel", "Lcom/transsion/commercialization/aha/adapter/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/commercialization/aha/adapter/a;", "mAdapter", "Lbj/b;", "c", "Lbj/b;", "mExposureHelper", "Lrj/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "t0", "()Lrj/a;", "mGameDotHelper", "e", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AhaGameAllFragment extends PageStatusFragment<i> {

    private com.transsion.commercialization.aha.adapter.a mAdapter;

    private bj.b mExposureHelper;

    private final Lazy mViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return AhaGameAllFragment.C0();
        }
    });

    private final Lazy mGameDotHelper = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return AhaGameAllFragment.B0();
        }
    });

    public static final class b implements bj.a {

        public class a {

            public static final int[] f42567a;

            static {
                int[] iArr = new int[GameLayoutType.values().length];
                try {
                    iArr[GameLayoutType.ITEM_INFO.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[GameLayoutType.PEOPLE_PLAYING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f42567a = iArr;
            }
        }

        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            com.transsion.commercialization.aha.adapter.a aVar = AhaGameAllFragment.this.mAdapter;
            if (i10 < ((aVar == null || (data = aVar.getData()) == null) ? 0 : data.size())) {
                com.transsion.commercialization.aha.adapter.a aVar2 = AhaGameAllFragment.this.mAdapter;
                AhaGameAllGames ahaGameAllGames = aVar2 != null ? (AhaGameAllGames) aVar2.getItem(i10) : null;
                GameLayoutType gameLayoutType = ahaGameAllGames != null ? ahaGameAllGames.getGameLayoutType() : null;
                int i11 = gameLayoutType == null ? -1 : a.f42567a[gameLayoutType.ordinal()];
                if (i11 == 1) {
                    AhaGameAllFragment.this.t0().a(ahaGameAllGames, i10, j10, ahaGameAllGames.getGameLayoutType());
                } else {
                    if (i11 != 2) {
                        return;
                    }
                    AhaGameAllFragment.this.t0().c(ahaGameAllGames, j10);
                }
            }
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f42568a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f42568a = function;
        }

        @Override
        public final Function a() {
            return this.f42568a;
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
            this.f42568a.invoke(obj);
        }
    }

    private final void A0() {
        t6.f fVarH0;
        com.transsion.commercialization.aha.adapter.a aVar;
        t6.f fVarH1;
        com.transsion.commercialization.aha.adapter.a aVar2 = this.mAdapter;
        if (aVar2 == null || (fVarH0 = aVar2.h0()) == null || !fVarH0.r() || (aVar = this.mAdapter) == null || (fVarH1 = aVar.h0()) == null) {
            return;
        }
        fVarH1.s();
    }

    public static final rj.a B0() {
        return new rj.a();
    }

    public static final GameRecommendViewModel C0() {
        return new GameRecommendViewModel();
    }

    private final void D0(AhaGameResponse ahaGameResponse) {
        t6.f fVarH0;
        List<Object> data;
        List<AhaGameAllGames> allGames;
        com.transsion.commercialization.aha.adapter.a aVar;
        t6.f fVarH1;
        List<Object> data2;
        t6.f fVarH2;
        List<Object> data3;
        AhaGameData data4;
        List<AhaGameAllGames> allGames2;
        wf.a.f74274a.c(getClassTag(), "ahaGameResponse = " + ((ahaGameResponse == null || (data4 = ahaGameResponse.getData()) == null || (allGames2 = data4.getAllGames()) == null) ? null : Integer.valueOf(allGames2.size())), true);
        if (ahaGameResponse == null) {
            com.transsion.commercialization.aha.adapter.a aVar2 = this.mAdapter;
            if (aVar2 == null || (data3 = aVar2.getData()) == null || data3.size() != 0) {
                com.transsion.commercialization.aha.adapter.a aVar3 = this.mAdapter;
                if (aVar3 == null || (fVarH2 = aVar3.h0()) == null) {
                    return;
                }
                fVarH2.v();
                return;
            }
            A0();
            if (l.f76264a.e()) {
                PageStatusFragment.showErrorView$default(this, false, 1, null);
                return;
            } else {
                PageStatusFragment.showNoNetworkView$default(this, false, 1, null);
                return;
            }
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        A0();
        AhaGameData data5 = ahaGameResponse.getData();
        List<AhaGameAllGames> allGames3 = data5 != null ? data5.getAllGames() : null;
        if (allGames3 == null || allGames3.isEmpty()) {
            com.transsion.commercialization.aha.adapter.a aVar4 = this.mAdapter;
            if (aVar4 != null && (data = aVar4.getData()) != null && data.size() == 0) {
                showEmptyView(true);
                return;
            }
            com.transsion.commercialization.aha.adapter.a aVar5 = this.mAdapter;
            if (aVar5 == null || (fVarH0 = aVar5.h0()) == null) {
                return;
            }
            t6.f.u(fVarH0, false, 1, null);
            return;
        }
        AhaGameData data6 = ahaGameResponse.getData();
        if (data6 == null || (allGames = data6.getAllGames()) == null) {
            return;
        }
        com.transsion.commercialization.aha.adapter.a aVar6 = this.mAdapter;
        if (aVar6 != null && (data2 = aVar6.getData()) != null && data2.size() == 0) {
            com.transsion.commercialization.aha.adapter.a aVar7 = this.mAdapter;
            if (aVar7 != null) {
                aVar7.p(new AhaGameAllGames(null, null, null, null, null, null, null, null, null, getString(R$string.game_recommend_tip), GameLayoutType.ITEM_TITLE, null, 2559, null));
            }
            com.transsion.commercialization.aha.adapter.a aVar8 = this.mAdapter;
            if (aVar8 != null) {
                GameLayoutType gameLayoutType = GameLayoutType.PEOPLE_PLAYING;
                AhaGameData data7 = ahaGameResponse.getData();
                aVar8.p(new AhaGameAllGames(null, null, null, null, null, null, null, null, null, null, gameLayoutType, data7 != null ? data7.getPeoplePlaying() : null, 1023, null));
            }
            com.transsion.commercialization.aha.adapter.a aVar9 = this.mAdapter;
            if (aVar9 != null) {
                aVar9.p(new AhaGameAllGames(null, null, null, null, null, null, null, null, null, getString(R$string.all_game), GameLayoutType.ITEM_TITLE, null, 2559, null));
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : allGames) {
            if (!r0(((AhaGameAllGames) obj).getId())) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty() && (aVar = this.mAdapter) != null && (fVarH1 = aVar.h0()) != null) {
            t6.f.u(fVarH1, false, 1, null);
        }
        com.transsion.commercialization.aha.adapter.a aVar10 = this.mAdapter;
        if (aVar10 != null) {
            aVar10.q(arrayList);
        }
    }

    private final void loadMore() {
        u0().i();
    }

    private final boolean r0(Integer gameId) {
        List<Object> data;
        if (gameId == null) {
            return true;
        }
        com.transsion.commercialization.aha.adapter.a aVar = this.mAdapter;
        if (aVar == null || (data = aVar.getData()) == null) {
            return false;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(gameId, ((AhaGameAllGames) it.next()).getId())) {
                return true;
            }
        }
        return false;
    }

    public static final void s0(AhaGameAllFragment ahaGameAllFragment, View view) {
        ahaGameAllFragment.requireActivity().finish();
    }

    public final rj.a t0() {
        return (rj.a) this.mGameDotHelper.getValue();
    }

    private final void toWeb(String url) {
        FragmentActivity activity = getActivity();
        AhaGameAllActivity ahaGameAllActivity = activity instanceof AhaGameAllActivity ? (AhaGameAllActivity) activity : null;
        k.p(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", url).K(WebConstants.PAGE_FROM, "game_center").z("fromTask", ahaGameAllActivity != null ? ahaGameAllActivity.fromTask : false));
    }

    private final GameRecommendViewModel u0() {
        return (GameRecommendViewModel) this.mViewModel.getValue();
    }

    private final void w0() {
        RecyclerView recyclerView;
        bj.b bVar = new bj.b(0.6f, new b(), false, 4, null);
        bVar.n(2);
        i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f72309b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.mExposureHelper = bVar;
    }

    public static final void x0(com.transsion.commercialization.aha.adapter.a aVar, AhaGameAllFragment ahaGameAllFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        String link = ((AhaGameAllGames) aVar.getItem(i10)).getLink();
        if (link != null) {
            ahaGameAllFragment.toWeb(link);
        }
        AhaGameAllGames ahaGameAllGames = (AhaGameAllGames) aVar.getItem(i10);
        if (ahaGameAllGames.getGameLayoutType() == GameLayoutType.ITEM_INFO) {
            rj.a aVarT0 = ahaGameAllFragment.t0();
            if (i10 > 2) {
                i10 -= 2;
            }
            aVarT0.b(ahaGameAllGames, i10, ahaGameAllGames.getGameLayoutType());
        }
    }

    public static final void y0(AhaGameAllFragment ahaGameAllFragment) {
        ahaGameAllFragment.loadMore();
    }

    public static final Unit z0(AhaGameAllFragment ahaGameAllFragment, AhaGameResponse ahaGameResponse) {
        ahaGameAllFragment.showContentView();
        ahaGameAllFragment.D0(ahaGameResponse);
        return Unit.f64096a;
    }

    @Override
    public View getLoadingView() {
        jj.c cVarC = jj.c.c(LayoutInflater.from(getContext()));
        cVarC.f63138b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                AhaGameAllFragment.s0(this.f42579a, view);
            }
        });
        ConstraintLayout root = cVarC.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
        i mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            TitleLayout titleLayout = mViewBinding.f72310c;
            String string = getString(com.tn.lib.widget.R$string.game_center);
            Intrinsics.g(string, "getString(...)");
            titleLayout.setTitleText(string);
            RecyclerView recyclerView = mViewBinding.f72309b;
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            recyclerView.addItemDecoration(new tf.h(a0.a(12.0f), 1));
            w0();
            final com.transsion.commercialization.aha.adapter.a aVar = new com.transsion.commercialization.aha.adapter.a(this.mExposureHelper, t0());
            aVar.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    AhaGameAllFragment.x0(aVar, this, baseQuickAdapter, view, i10);
                }
            });
            t6.f fVarH0 = aVar.h0();
            fVarH0.z(true);
            fVarH0.y(true);
            fVarH0.E(1);
            fVarH0.D(new r6.f() {
                @Override
                public final void a() {
                    AhaGameAllFragment.y0(this.f42582a);
                }
            });
            this.mAdapter = aVar;
            recyclerView.setAdapter(aVar);
            com.transsion.commercialization.aha.adapter.a aVar2 = this.mAdapter;
            recyclerView.addOnScrollListener(new nj.a(aVar2 != null ? aVar2.h0() : null));
        }
    }

    @Override
    public void initViewModel() {
        u0().h().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return AhaGameAllFragment.z0(this.f42572a, (AhaGameResponse) obj);
            }
        }));
    }

    @Override
    public void loadDefaultData() {
        u0().i();
        showLoadingView();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("game_center", false, 2, null);
    }

    @Override
    public void onPause() {
        super.onPause();
        bj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override
    public void retryLoadData() {
        t6.f fVarH0;
        List<Object> data;
        com.transsion.commercialization.aha.adapter.a aVar = this.mAdapter;
        if (aVar != null && (data = aVar.getData()) != null && data.size() == 0) {
            loadDefaultData();
            return;
        }
        com.transsion.commercialization.aha.adapter.a aVar2 = this.mAdapter;
        if (aVar2 == null || (fVarH0 = aVar2.h0()) == null) {
            return;
        }
        fVarH0.w();
    }

    @Override
    public i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        i iVarC = i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }
}

package com.transsnet.downloader.ugc.fragment;

import android.app.Application;
import android.os.Bundle;
import android.view.View;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.popup.PopupManager;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
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

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0003J'\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;", "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;", "<init>", "()V", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "", "w1", "(Ljava/util/List;)V", "q1", "", "tabTitle", "p1", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "receiveArguments", "initViewModel", "initListener", "bean", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "S0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "E0", "()Ljava/lang/String;", "l", "Ljava/lang/String;", "tabTitleArg", "m", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCDownloadedListFragment extends UGCStaggeredListBaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    private String tabTitleArg;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCDownloadedListFragment a(String tabTitle) {
            Intrinsics.h(tabTitle, "tabTitle");
            UGCDownloadedListFragment uGCDownloadedListFragment = new UGCDownloadedListFragment();
            uGCDownloadedListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("arg_tab_title", tabTitle)));
            return uGCDownloadedListFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements com.transsnet.downloader.adapter.u0.b {
        b() {
        }

        @Override
        public void a(int i10, int i11) {
            if (i11 == 4) {
                DownloadViewModel.N(UGCDownloadedListFragment.this.x0(), false, 1, null);
            }
        }

        @Override
        public void b(int i10, int i11, int i12, boolean z10) {
            com.transsnet.downloader.adapter.u0.b.a.a(this, i10, i11, i12, z10);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f57506a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57506a = function;
        }

        @Override
        public final Function a() {
            return this.f57506a;
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
            this.f57506a.invoke(obj);
        }
    }

    private final String p1(String tabTitle) {
        Application applicationA = Utils.a();
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_video))) {
            return "video";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_music))) {
            return "music";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_education))) {
            return "education";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_short_tv))) {
            return "short_tv";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_sport))) {
            return "sport";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_room))) {
            return PlaceTypes.ROOM;
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_novel))) {
            return "novel";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_live))) {
            return "live";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_kids))) {
            return "kids";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_recreation))) {
            return "recreation";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_movie))) {
            return "movie";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_tv))) {
            return "tv";
        }
        if (Intrinsics.c(tabTitle, applicationA.getString(R$string.ugc_tab_post))) {
            return "post";
        }
        if (Intrinsics.c(tabTitle, "TAB_ALL")) {
            return IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
        }
        String lowerCase = tabTitle.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return StringsKt.Q(lowerCase, " ", "_", false, 4, null);
    }

    private final void q1() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCDownloadedListFragment.r1(this.f57615a, (yw.a) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = yw.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().r(), false, function1);
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCDownloadedListFragment.s1(this.f57617a, (yw.g) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = yw.g.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().r(), false, function2);
    }

    public static final Unit r1(UGCDownloadedListFragment uGCDownloadedListFragment, yw.a it) {
        Intrinsics.h(it, "it");
        try {
            DownloadViewModel.N(uGCDownloadedListFragment.x0(), false, 1, null);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f64096a;
    }

    public static final Unit s1(UGCDownloadedListFragment uGCDownloadedListFragment, yw.g event) {
        List<Object> data;
        Intrinsics.h(event, "event");
        try {
            ArrayList arrayList = new ArrayList();
            UGCDownloadStaggeredAdapter staggeredAdapter = uGCDownloadedListFragment.getStaggeredAdapter();
            if (staggeredAdapter != null && (data = staggeredAdapter.getData()) != null) {
                int i10 = 0;
                for (Object obj : data) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.u();
                    }
                    com.transsnet.downloader.ugc.adapter.c cVar = (com.transsnet.downloader.ugc.adapter.c) obj;
                    if (cVar instanceof com.transsnet.downloader.ugc.adapter.c.b) {
                        DownloadBean downloadBeanB = ((com.transsnet.downloader.ugc.adapter.c.b) cVar).b();
                        String ugcVideoCollectionId = downloadBeanB.getUgcVideoCollectionId();
                        boolean zC = true;
                        if (ugcVideoCollectionId == null || ugcVideoCollectionId.length() == 0) {
                            zC = Intrinsics.c(downloadBeanB.getUgcVideoId(), event.c());
                        } else if (!Intrinsics.c(downloadBeanB.getUgcVideoCollectionId(), event.a()) || !Intrinsics.c(downloadBeanB.getUgcVideoId(), event.c())) {
                            zC = false;
                        }
                        if (zC) {
                            arrayList.add(Integer.valueOf(i10));
                        }
                    }
                    i10 = i11;
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                uGCDownloadedListFragment.g1(((Number) it.next()).intValue(), event.b());
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f64096a;
    }

    public static final Unit t1(UGCDownloadedListFragment uGCDownloadedListFragment, Map map) {
        List listL;
        Collection collectionValues;
        if (Intrinsics.c(uGCDownloadedListFragment.tabTitleArg, "TAB_ALL")) {
            if (map == null || (collectionValues = map.values()) == null || (listL = CollectionsKt.x(collectionValues)) == null) {
                listL = CollectionsKt.l();
            }
        } else if (map == null || (listL = (List) map.get(uGCDownloadedListFragment.tabTitleArg)) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.size() > 3) {
            listL = listL.subList(0, 3);
        }
        uGCDownloadedListFragment.w1(listL);
        return Unit.f64096a;
    }

    public static final Unit u1(UGCDownloadedListFragment uGCDownloadedListFragment, Map map) {
        Collection collectionValues;
        List listX = null;
        if (Intrinsics.c(uGCDownloadedListFragment.tabTitleArg, "TAB_ALL")) {
            if (map != null && (collectionValues = map.values()) != null) {
                listX = CollectionsKt.x(collectionValues);
            }
        } else if (map != null) {
            listX = (List) map.get(uGCDownloadedListFragment.tabTitleArg);
        }
        uGCDownloadedListFragment.w1(listX);
        return Unit.f64096a;
    }

    public static final Unit v1(UGCDownloadedListFragment uGCDownloadedListFragment) {
        Navigator.x(TheRouter.c("/download/transfer"), uGCDownloadedListFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    private final void w1(List list) {
        ArrayList arrayList = new ArrayList();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            arrayList.add(com.transsnet.downloader.ugc.adapter.c.d.f57397a);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new com.transsnet.downloader.ugc.adapter.c.b((DownloadBean) it.next()));
            }
        }
        a1(arrayList);
        UGCDownloadStaggeredAdapter staggeredAdapter = getStaggeredAdapter();
        if (staggeredAdapter != null) {
            staggeredAdapter.n1(arrayList);
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || !logViewConfig.i()) {
            u0();
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
        }
        b1();
    }

    @Override
    public String E0() {
        String strP1;
        String str = Intrinsics.c(getModeArg(), "ugc_sub") ? "/download/ugc_my_downloaded" : "/download/ugc_downloaded";
        String str2 = this.tabTitleArg;
        if (str2 == null || (strP1 = p1(str2)) == null) {
            strP1 = "";
        }
        if (strP1.length() <= 0) {
            return str;
        }
        return str + "_" + strP1;
    }

    @Override
    public void S0(DownloadBean bean, View view, int position) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(view, "view");
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = bean.getResourceId();
        if (resourceId == null) {
            resourceId = bean.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            bean = downloadBeanQ;
        }
        PopupManager popupManager = new PopupManager(position, bean);
        popupManager.I(view, 1);
        popupManager.B(new Function0() {
            @Override
            public final Object invoke() {
                return UGCDownloadedListFragment.v1(this.f57619a);
            }
        });
        popupManager.A(new b());
    }

    @Override
    public void initListener() {
        super.initListener();
        q1();
    }

    @Override
    public void initViewModel() {
        super.initViewModel();
        String modeArg = getModeArg();
        if (Intrinsics.c(modeArg, "ugc_home")) {
            x0().L().j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCDownloadedListFragment.t1(this.f57611a, (Map) obj);
                }
            }));
        } else if (Intrinsics.c(modeArg, "ugc_sub")) {
            x0().L().j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCDownloadedListFragment.u1(this.f57613a, (Map) obj);
                }
            }));
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.tabTitleArg = arguments.getString("arg_tab_title");
        }
    }

    @Override
    public void receiveArguments() {
        super.receiveArguments();
    }
}

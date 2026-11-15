package com.transsion.home.viewmodel.preload;

import android.app.Application;
import android.content.Context;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.google.gson.Gson;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.BottomTabItem;
import com.transsion.home.bean.HomeTabItem;
import com.transsion.home.bean.HotSubjectEntity;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.home.p004enum.HomeTabType;
import ep.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class PreloadTrendingData {

    public static final a f44531n = new a(null);

    public static final int f44532o = 8;

    private static final Lazy f44533p = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return PreloadTrendingData.P();
        }
    });

    private volatile boolean f44535b;

    private volatile boolean f44536c;

    private AppTab f44544k;

    private List f44545l;

    private int f44534a = 1;

    private final yk.e f44537d = (yk.e) kg.c.f63982e.a().h(yk.e.class);

    private final Lazy f44538e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PreloadTrendingData.w();
        }
    });

    private final Lazy f44539f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PreloadTrendingData.S();
        }
    });

    private final Lazy f44540g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PreloadTrendingData.R();
        }
    });

    private final Lazy f44541h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PreloadTrendingData.v();
        }
    });

    private final Lazy f44542i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PreloadTrendingData.u();
        }
    });

    private final Lazy f44543j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PreloadTrendingData.N();
        }
    });

    private final j0 f44546m = new b(j0.f64923l1);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PreloadTrendingData a() {
            return (PreloadTrendingData) PreloadTrendingData.f44533p.getValue();
        }

        private a() {
        }
    }

    public static final class b extends AbstractCoroutineContextElement implements j0 {
        public b(j0.a aVar) {
            super(aVar);
        }

        @Override
        public void m(CoroutineContext coroutineContext, Throwable th2) {
            wf.a.f74274a.i("PreloadTrending", "coroutineExceptionHandler " + th2.getMessage(), true);
            th2.printStackTrace();
        }
    }

    public final AppTab B() {
        try {
            String strY = Y("app_tab");
            if (strY == null || strY.length() == 0) {
                com.transsion.home.viewmodel.preload.a aVarE = E();
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                strY = aVarE.b(applicationA);
                if (strY == null) {
                    strY = "";
                }
            }
            if (strY.length() > 0) {
                return (AppTab) o.d(strY, AppTab.class);
            }
            return null;
        } catch (Throwable th2) {
            wf.a.f74274a.i("PreloadTrending", "getAppTabCache error: " + th2.getMessage(), true);
            com.transsion.baselib.report.launch.b.f42221a.b().M("app_tab");
            th2.printStackTrace();
            return null;
        }
    }

    public final com.transsion.home.viewmodel.preload.a E() {
        return (com.transsion.home.viewmodel.preload.a) this.f44538e.getValue();
    }

    public final HotSubjectEntity I() {
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("hot_search_words", null);
        if (string != null) {
            return (HotSubjectEntity) o.d(string, HotSubjectEntity.class);
        }
        return null;
    }

    public static final b0 N() {
        return new b0();
    }

    public final void O(AppTab appTab) {
        BottomTabItem bottomTabItem;
        BottomTabItem bottomTabItem2;
        List<BottomTabItem> bottomTabs;
        Object next;
        List<BottomTabItem> bottomTabs2;
        Object next2;
        Object obj = null;
        if (appTab == null || (bottomTabs2 = appTab.getBottomTabs()) == null) {
            bottomTabItem = null;
        } else {
            Iterator<T> it = bottomTabs2.iterator();
            do {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
            } while (!Intrinsics.c(((BottomTabItem) next2).getBtTabCode(), BottomTabType.TAB_CODE_COMMUNITY));
            bottomTabItem = (BottomTabItem) next2;
        }
        if (bottomTabItem != null) {
            wf.a.C0922a.f(wf.a.f74274a, "PreloadTrending", "has bottom room tab", false, 4, null);
            k.f59780a.l(true);
            return;
        }
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            bottomTabItem2 = null;
        } else {
            Iterator<T> it2 = bottomTabs.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.c(((BottomTabItem) next).getBtTabCode(), BottomTabType.TAB_CODE_HOME));
            bottomTabItem2 = (BottomTabItem) next;
        }
        if (bottomTabItem2 == null) {
            wf.a.C0922a.f(wf.a.f74274a, "PreloadTrending", "has no room tab", false, 4, null);
            k.f59780a.l(false);
            return;
        }
        List<HomeTabItem> subTabs = bottomTabItem2.getSubTabs();
        if (subTabs != null) {
            for (Object obj2 : subTabs) {
                HomeTabItem homeTabItem = (HomeTabItem) obj2;
                if (Intrinsics.c(homeTabItem != null ? homeTabItem.getTabCode() : null, "Community")) {
                    obj = obj2;
                    break;
                }
            }
            obj = (HomeTabItem) obj;
        }
        wf.a.C0922a.f(wf.a.f74274a, "PreloadTrending", "has top room tab:" + (obj != null), false, 4, null);
        k.f59780a.l(obj != null);
    }

    public static final PreloadTrendingData P() {
        return new PreloadTrendingData();
    }

    public static final b0 R() {
        return new b0();
    }

    public static final b0 S() {
        return new b0();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object T(String str, Continuation continuation) {
        PreloadTrendingData$preloadMainOperation$1 preloadTrendingData$preloadMainOperation$1;
        List<OperateItem> items;
        List<OperateItem> items2;
        if (continuation instanceof PreloadTrendingData$preloadMainOperation$1) {
            preloadTrendingData$preloadMainOperation$1 = (PreloadTrendingData$preloadMainOperation$1) continuation;
            int i10 = preloadTrendingData$preloadMainOperation$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                preloadTrendingData$preloadMainOperation$1.label = i10 - Integer.MIN_VALUE;
            } else {
                preloadTrendingData$preloadMainOperation$1 = new PreloadTrendingData$preloadMainOperation$1(this, continuation);
            }
        } else {
            preloadTrendingData$preloadMainOperation$1 = new PreloadTrendingData$preloadMainOperation$1(this, continuation);
        }
        PreloadTrendingData$preloadMainOperation$1 preloadTrendingData$preloadMainOperation$2 = preloadTrendingData$preloadMainOperation$1;
        Object objB = preloadTrendingData$preloadMainOperation$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = preloadTrendingData$preloadMainOperation$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objB);
                yk.e eVar = this.f44537d;
                int i12 = this.f44534a;
                preloadTrendingData$preloadMainOperation$2.L$0 = str;
                preloadTrendingData$preloadMainOperation$2.label = 1;
                objB = yk.e.a.b(eVar, null, i12, 0, str, preloadTrendingData$preloadMainOperation$2, 5, null);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) preloadTrendingData$preloadMainOperation$2.L$0;
                ResultKt.b(objB);
            }
            BaseDto baseDto = (BaseDto) objB;
            wf.a.C0922a c0922a = wf.a.f74274a;
            MainOperateData mainOperateData = (MainOperateData) baseDto.getData();
            c0922a.c("PreloadTrending", "get operating data from net size = " + ((mainOperateData == null || (items2 = mainOperateData.getItems()) == null) ? null : Boxing.d(items2.size())), true);
            if (!Intrinsics.c(baseDto.getCode(), "0") || baseDto.getData() == null) {
                K().n(null);
            } else {
                MainOperateData mainOperateData2 = (MainOperateData) baseDto.getData();
                if (mainOperateData2 != null) {
                    mainOperateData2.setSourceFrom("from_net");
                    K().n(mainOperateData2);
                    if (mainOperateData2.getVersion() != null && !Intrinsics.c(mainOperateData2.getVersion(), str) && (items = mainOperateData2.getItems()) != null && !items.isEmpty()) {
                        Z(mainOperateData2);
                    }
                }
                int i13 = this.f44534a;
                this.f44534a = i13 + 1;
                Boxing.d(i13);
            }
        } catch (Exception e10) {
            wf.a.f74274a.i("PreloadTrending", "get Operating List msg=" + e10.getMessage() + " cause=" + e10.getCause(), true);
            K().n(null);
        }
        return Unit.f64096a;
    }

    private final void V(Context context) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$preloadSkuDataCache$1(context, null), 3, null);
    }

    private final void W(Context context) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$preloadVideoCache$1(this, context, null), 3, null);
    }

    private final String Y(String str) {
        try {
            byte[] bArrE = com.transsion.baselib.report.launch.b.f42221a.b().e(str);
            if (bArrE == null) {
                return null;
            }
            if (bArrE.length == 0) {
                return null;
            }
            return new String(bArrE, Charsets.UTF_8);
        } catch (Throwable th2) {
            wf.a.f74274a.i("PreloadTrending", "safeGetMmkvString failed for key: " + str + ", " + th2.getMessage(), true);
            return null;
        }
    }

    private final void Z(MainOperateData mainOperateData) {
        List<OperateItem> items = mainOperateData.getItems();
        if (items == null || !(!items.isEmpty())) {
            return;
        }
        com.transsion.baselib.report.launch.b.f42221a.b().putString("main_operating_data", new Gson().toJson(mainOperateData));
    }

    public final void a0(AppTab appTab) {
        List<BottomTabItem> bottomTabs = appTab != null ? appTab.getBottomTabs() : null;
        if (bottomTabs == null || bottomTabs.isEmpty()) {
            return;
        }
        com.transsion.baselib.report.launch.b.f42221a.b().putString("app_tab", o.j(appTab));
    }

    public static final b0 u() {
        return new b0();
    }

    public static final b0 v() {
        return new b0();
    }

    public static final com.transsion.home.viewmodel.preload.a w() {
        return new com.transsion.home.viewmodel.preload.a();
    }

    public final List x(AppTab appTab) {
        List<BottomTabItem> bottomTabs;
        ArrayList arrayList = new ArrayList();
        for (BottomTabType bottomTabType : BottomTabType.values()) {
            CollectionsKt.B(arrayList, CollectionsKt.e(bottomTabType.getValue()));
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        boolean z10 = bVar != null ? bVar.z() : false;
        if (!z10) {
            wf.a.C0922a.f(wf.a.f74274a, "co_mem", "MainActivity --> getTabEntities() --> 当前没有开启会员功能 --> 不展示会员Tab", false, 4, null);
        }
        if (appTab == null || (bottomTabs = appTab.getBottomTabs()) == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : bottomTabs) {
            BottomTabItem bottomTabItem = (BottomTabItem) obj;
            if (Intrinsics.c(bottomTabItem.getBtTabType(), BottomTabType.PREMIUM.getValue()) ? CollectionsKt.b0(arrayList, bottomTabItem.getBtTabType()) && z10 : CollectionsKt.b0(arrayList, bottomTabItem.getBtTabType())) {
                arrayList2.add(obj);
            }
        }
        return CollectionsKt.U0(arrayList2);
    }

    public final List y(List list) {
        ArrayList arrayList = new ArrayList();
        for (HomeTabType homeTabType : HomeTabType.values()) {
            CollectionsKt.B(arrayList, CollectionsKt.e(homeTabType.getValue()));
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            HomeTabItem homeTabItem = (HomeTabItem) obj;
            if (homeTabItem != null && CollectionsKt.b0(arrayList, homeTabItem.getType())) {
                arrayList2.add(obj);
            }
        }
        return CollectionsKt.U0(arrayList2);
    }

    public final AppTab A(Context context) {
        Intrinsics.h(context, "context");
        try {
            String strB = E().b(context);
            if (strB != null && strB.length() != 0) {
                return (AppTab) o.d(strB, AppTab.class);
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final b0 C() {
        return (b0) this.f44542i.getValue();
    }

    public final b0 D() {
        return (b0) this.f44541h.getValue();
    }

    public final AppTab F() {
        return this.f44544k;
    }

    public final void G() {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$getHotSearch$1(this, null), 3, null);
    }

    public final b0 H() {
        return (b0) this.f44543j.getValue();
    }

    public final b0 J() {
        return (b0) this.f44540g.getValue();
    }

    public final b0 K() {
        return (b0) this.f44539f.getValue();
    }

    public final List L() {
        List list = this.f44545l;
        this.f44545l = null;
        return list;
    }

    public final boolean M() {
        return this.f44536c;
    }

    public final boolean Q(String version) {
        Intrinsics.h(version, "version");
        if (this.f44535b) {
            return false;
        }
        this.f44535b = true;
        kotlinx.coroutines.k.d(o0.a(y0.b()), this.f44546m, null, new PreloadTrendingData$loadOperatingDataFromNet$1(this, version, null), 2, null);
        return true;
    }

    public final void U(Context context) {
        Intrinsics.h(context, "context");
        wf.a.f74274a.c("PreloadTrending", "preloadOperatingCache() called", true);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$preloadOperating$1(this, context, null), 3, null);
        W(context);
        V(context);
    }

    public final boolean X(Context context, String operationVersion) {
        Intrinsics.h(context, "context");
        Intrinsics.h(operationVersion, "operationVersion");
        if (J().f() != null) {
            return Q(operationVersion);
        }
        U(context);
        return true;
    }

    public final void b0(List list) {
        Intrinsics.h(list, "list");
        this.f44545l = list;
    }

    public final void z() {
        this.f44536c = true;
        wf.a.f74274a.c("PreloadTrending", "getAppTab() called", true);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PreloadTrendingData$getAppTab$1(this, null), 3, null);
    }
}

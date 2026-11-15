package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesShowStyle;
import com.transsion.home.bean.HomePreferencesState;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.repository.HomePreferencesRepository;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

public final class HomePreferencesViewModel extends t0 {

    public static final a f44443q = new a(null);

    public static final int f44444r = 8;

    private HomePreferencesState f44452h;

    private boolean f44460p;

    private final Lazy f44445a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HomePreferencesViewModel.n();
        }
    });

    private final Lazy f44446b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HomePreferencesViewModel.I(this.f44530a);
        }
    });

    private final Lazy f44447c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HomePreferencesViewModel.G();
        }
    });

    private final Lazy f44448d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HomePreferencesViewModel.z();
        }
    });

    private final Lazy f44449e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HomePreferencesViewModel.F();
        }
    });

    private final Lazy f44450f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HomePreferencesViewModel.H();
        }
    });

    private final Lazy f44451g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return HomePreferencesViewModel.q();
        }
    });

    private final Map f44453i = new LinkedHashMap();

    private final Set f44454j = new LinkedHashSet();

    private final Set f44455k = new LinkedHashSet();

    private final Set f44456l = new LinkedHashSet();

    private final Set f44457m = new LinkedHashSet();

    private final Map f44458n = new LinkedHashMap();

    private final Map f44459o = new LinkedHashMap();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final androidx.p009lifecycle.b0 F() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 G() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 H() {
        return new androidx.p009lifecycle.b0();
    }

    public static final HomePreferencesRepository I(HomePreferencesViewModel homePreferencesViewModel) {
        Application applicationA = Utils.a();
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Intrinsics.e(applicationA);
        return new HomePreferencesRepository(homePreferencesViewModel.r(), companion.b(applicationA));
    }

    private final void K(HomePreferencesConfig homePreferencesConfig, List list, String str, boolean z10) {
        String labelId = homePreferencesConfig.getLabelId();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!StringsKt.q0((String) obj)) {
                arrayList.add(obj);
            }
        }
        List listH0 = CollectionsKt.H0(CollectionsKt.c0(arrayList));
        if (listH0.isEmpty()) {
            wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesViewModel", "submitPreferences skip: empty selection, labelId=" + labelId + ", scene=" + str, false, 4, null);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List list2 = (List) this.f44458n.get(labelId);
        Long l10 = (Long) this.f44459o.get(labelId);
        long jLongValue = l10 != null ? l10.longValue() : 0L;
        if (!z10) {
            if (list2 != null && list2.size() == listH0.size() && Intrinsics.c(CollectionsKt.W0(list2), CollectionsKt.W0(listH0))) {
                wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesViewModel", "submitPreferences skip: same as last, labelId=" + labelId + ", scene=" + str, false, 4, null);
                return;
            }
            if (jCurrentTimeMillis - jLongValue < 5000) {
                wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesViewModel", "submitPreferences skip: interval < 5000ms, labelId=" + labelId + ", scene=" + str, false, 4, null);
                return;
            }
        }
        this.f44458n.put(labelId, listH0);
        this.f44459o.put(labelId, Long.valueOf(jCurrentTimeMillis));
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$submitPreferencesInternal$1(this, labelId, listH0, z10, homePreferencesConfig, str, null), 2, null);
    }

    public final void N(HomePreferencesState homePreferencesState) {
        Object next;
        if (this.f44460p) {
            return;
        }
        Iterator<T> it = homePreferencesState.getEnterPopConfigs().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) next;
            if (!this.f44455k.contains(homePreferencesConfig.getLabelId()) && !this.f44456l.contains(homePreferencesConfig.getLabelId()) && !this.f44457m.contains(homePreferencesConfig.getLabelId())) {
                break;
            }
        }
        HomePreferencesConfig homePreferencesConfig2 = (HomePreferencesConfig) next;
        if (homePreferencesConfig2 == null) {
            return;
        }
        this.f44460p = true;
        s().n(homePreferencesConfig2);
    }

    private final void O(String str) {
        HomePreferencesState homePreferencesState;
        Object next;
        if (this.f44454j.contains(str) || (homePreferencesState = this.f44452h) == null) {
            return;
        }
        List<HomePreferencesConfig> allConfigs = homePreferencesState.getAllConfigs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : allConfigs) {
            if (StringsKt.H(((HomePreferencesConfig) obj).getTabCode(), str, true)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) next;
            if (Intrinsics.c(homePreferencesConfig.getShowStyle(), HomePreferencesShowStyle.POPUP.getValue()) && !this.f44455k.contains(homePreferencesConfig.getLabelId()) && !this.f44456l.contains(homePreferencesConfig.getLabelId()) && !this.f44457m.contains(homePreferencesConfig.getLabelId())) {
                break;
            }
        }
        HomePreferencesConfig homePreferencesConfig2 = (HomePreferencesConfig) next;
        if (homePreferencesConfig2 != null && Intrinsics.c(homePreferencesConfig2.getShowStyle(), HomePreferencesShowStyle.POPUP.getValue())) {
            this.f44454j.add(str);
            v().n(TuplesKt.a(str, homePreferencesConfig2));
        }
    }

    public static final yk.b n() {
        return (yk.b) kg.c.f63982e.a().h(yk.b.class);
    }

    private final List o(String str, List list, HomePreferencesState homePreferencesState) {
        List<HomePreferencesConfig> allConfigs = homePreferencesState.getAllConfigs();
        ArrayList arrayList = new ArrayList();
        for (Object obj : allConfigs) {
            if (StringsKt.H(((HomePreferencesConfig) obj).getTabCode(), str, true)) {
                arrayList.add(obj);
            }
        }
        ArrayList<HomePreferencesConfig> arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            HomePreferencesConfig homePreferencesConfig = (HomePreferencesConfig) obj2;
            if (Intrinsics.c(homePreferencesConfig.getShowStyle(), HomePreferencesShowStyle.OPT_INSERT.getValue()) && !this.f44455k.contains(homePreferencesConfig.getLabelId()) && !this.f44456l.contains(homePreferencesConfig.getLabelId()) && !this.f44457m.contains(homePreferencesConfig.getLabelId())) {
                arrayList2.add(obj2);
            }
        }
        if (arrayList2.isEmpty()) {
            return CollectionsKt.l();
        }
        ArrayList arrayList3 = new ArrayList();
        for (HomePreferencesConfig homePreferencesConfig2 : arrayList2) {
            Integer pos = homePreferencesConfig2.getPos();
            Integer numValueOf = Integer.valueOf(pos != null ? pos.intValue() : -1);
            if (numValueOf.intValue() < 0) {
                numValueOf = null;
            }
            boolean z10 = false;
            int iL = RangesKt.l(numValueOf != null ? numValueOf.intValue() : list.size(), 0, list.size());
            List<OperateItem> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (OperateItem operateItem : list2) {
                    if (Intrinsics.c(operateItem.getType(), PostItemType.PREFERENCES.getValue())) {
                        HomePreferencesConfig homePreferencesConfig3 = operateItem.getHomePreferencesConfig();
                        if (Intrinsics.c(homePreferencesConfig3 != null ? homePreferencesConfig3.getLabelId() : null, homePreferencesConfig2.getLabelId())) {
                            z10 = true;
                            break;
                        }
                    }
                }
            }
            wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesViewModel", "运营位插入 有配置, tabCode:" + str + ", pos:" + homePreferencesConfig2.getPos() + "， alreadyExists：" + z10, false, 4, null);
            if (!z10) {
                arrayList3.add(new ok.a(iL, homePreferencesConfig2));
            }
        }
        return arrayList3;
    }

    public final void p(String str) {
        List list = (List) this.f44453i.get(str);
        if (list == null) {
            return;
        }
        HomePreferencesState homePreferencesState = this.f44452h;
        if (homePreferencesState == null) {
            u().n(TuplesKt.a(str, CollectionsKt.l()));
            return;
        }
        List listO = o(str, list, homePreferencesState);
        wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesViewModel", "computeInsertForTab, tabCode:" + str + ", size:" + listO.size(), false, 4, null);
        u().n(TuplesKt.a(str, listO));
    }

    public static final androidx.p009lifecycle.b0 q() {
        return new androidx.p009lifecycle.b0();
    }

    private final yk.b r() {
        return (yk.b) this.f44445a.getValue();
    }

    public final HomePreferencesRepository y() {
        return (HomePreferencesRepository) this.f44446b.getValue();
    }

    public static final androidx.p009lifecycle.b0 z() {
        return new androidx.p009lifecycle.b0();
    }

    public final void A() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$loadHomePreferencesConfig$1(this, null), 2, null);
    }

    public final void B(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.f44457m.add(config.getLabelId());
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$markChosen$1(this, config, null), 2, null);
    }

    public final void C(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.f44456l.add(config.getLabelId());
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$markClosed$1(this, config, null), 2, null);
    }

    public final void D(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        String labelId = config.getLabelId();
        if (!this.f44455k.contains(labelId)) {
            this.f44455k.add(labelId);
            kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new HomePreferencesViewModel$markShown$1(this, config, null), 2, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "HomePreferencesViewModel", "markShown skip, already marked, labelId=" + labelId, false, 4, null);
    }

    public final void E(String tabCode, List list) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(list, "list");
        this.f44453i.put(tabCode, list);
        p(tabCode);
    }

    public final void J(String tabCode) {
        Intrinsics.h(tabCode, "tabCode");
        O(tabCode);
    }

    public final void L(HomePreferencesConfig config, List selectOptions) {
        Intrinsics.h(config, "config");
        Intrinsics.h(selectOptions, "selectOptions");
        K(config, selectOptions, "popup_confirm", true);
    }

    public final void M(HomePreferencesConfig config, List selectOptions, String scene) {
        Intrinsics.h(config, "config");
        Intrinsics.h(selectOptions, "selectOptions");
        Intrinsics.h(scene, "scene");
        K(config, selectOptions, scene, false);
    }

    public final androidx.p009lifecycle.b0 s() {
        return (androidx.p009lifecycle.b0) this.f44451g.getValue();
    }

    public final List t(String tabCode, List list) {
        Intrinsics.h(tabCode, "tabCode");
        Intrinsics.h(list, "list");
        HomePreferencesState homePreferencesState = this.f44452h;
        return homePreferencesState == null ? CollectionsKt.l() : o(tabCode, list, homePreferencesState);
    }

    public final androidx.p009lifecycle.b0 u() {
        return (androidx.p009lifecycle.b0) this.f44448d.getValue();
    }

    public final androidx.p009lifecycle.b0 v() {
        return (androidx.p009lifecycle.b0) this.f44449e.getValue();
    }

    public final androidx.p009lifecycle.b0 w() {
        return (androidx.p009lifecycle.b0) this.f44447c.getValue();
    }

    public final androidx.p009lifecycle.b0 x() {
        return (androidx.p009lifecycle.b0) this.f44450f.getValue();
    }
}

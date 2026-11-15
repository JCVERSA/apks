package com.transsion.rewardscenter.task.ad;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.hisavana.common.bean.TAdErrorCode;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

public final class MemberTaskAdHelper extends BaseStageTaskAdHelper {

    public static final a f49036r = new a(null);

    public static final int f49037s = 8;

    private static final Lazy f49038t = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(MemberTaskAdHelper.b0());
        }
    });

    private static final Lazy f49039u = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(MemberTaskAdHelper.a0());
        }
    });

    private final Context f49040g;

    private final n0 f49041h;

    private BiddingSspNativeManager f49042i;

    private Function1 f49043j;

    private BiddingSspNativeManager f49044k;

    private Function1 f49045l;

    private BiddingVideoManager f49046m;

    private Function1 f49047n;

    private final c f49048o;

    private final b f49049p;

    private final MemberTaskAdHelper$rewardAdListener$1 f49050q;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return ((Number) MemberTaskAdHelper.f49039u.getValue()).intValue();
        }

        public final int b() {
            return ((Number) MemberTaskAdHelper.f49038t.getValue()).intValue();
        }

        private a() {
        }
    }

    public static final class b extends oh.a {
        b() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            Function1 function1 = MemberTaskAdHelper.this.f49045l;
            if (function1 != null) {
                function1.invoke(CollectionsKt.l());
            }
        }

        @Override
        public void k(List list) {
            Function1 function1;
            super.k(list);
            if (list != null) {
                MemberTaskAdHelper memberTaskAdHelper = MemberTaskAdHelper.this;
                List listW = memberTaskAdHelper.W("MemberTaskRegularNativeScene", list, Boolean.FALSE);
                ArrayList arrayList = new ArrayList(CollectionsKt.v(listW, 10));
                Iterator it = listW.iterator();
                while (it.hasNext()) {
                    arrayList.add(x((BiddingIntermediateMaterialBean) it.next()));
                }
                boolean z10 = memberTaskAdHelper.u() <= 0;
                boolean z11 = memberTaskAdHelper.t() <= 0;
                if (z10) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : arrayList) {
                        if (!((v.a) obj).k()) {
                            arrayList2.add(obj);
                        }
                    }
                    arrayList = arrayList2;
                }
                if (z11) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj2 : arrayList) {
                        if (((v.a) obj2).k()) {
                            arrayList3.add(obj2);
                        }
                    }
                    arrayList = arrayList3;
                }
                if (arrayList.isEmpty() || (function1 = memberTaskAdHelper.f49045l) == null) {
                    return;
                }
                function1.invoke(arrayList);
            }
        }

        public final v.a x(BiddingIntermediateMaterialBean bean) {
            Intrinsics.h(bean, "bean");
            return new v.a(bean, null, null, null, null, MemberTaskAdHelper.this.g(bean), MemberTaskAdHelper.this.i(bean), false, 0L, TTAdConstant.VIDEO_URL_CODE, null);
        }
    }

    public static final class c extends oh.a {
        c() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            Function1 function1 = MemberTaskAdHelper.this.f49043j;
            if (function1 != null) {
                function1.invoke(CollectionsKt.l());
            }
        }

        @Override
        public void k(List list) {
            super.k(list);
            if (list != null) {
                MemberTaskAdHelper memberTaskAdHelper = MemberTaskAdHelper.this;
                List listW = memberTaskAdHelper.W("MemberTaskStageNativeScene", list, Boolean.TRUE);
                Function1 function1 = memberTaskAdHelper.f49043j;
                if (function1 != null) {
                    List list2 = listW;
                    ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(x((BiddingIntermediateMaterialBean) it.next()));
                    }
                    function1.invoke(arrayList);
                }
            }
        }

        public final v.c x(BiddingIntermediateMaterialBean bean) {
            Intrinsics.h(bean, "bean");
            return new v.c(bean, null, null, null, null, MemberTaskAdHelper.this.g(bean), false, 0L, 0L, 478, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.transsion.rewardscenter.task.ad.MemberTaskAdHelper$rewardAdListener$1] */
    public MemberTaskAdHelper(Context context, n0 n0Var) {
        super(context, n0Var);
        Intrinsics.h(context, "context");
        this.f49040g = context;
        this.f49041h = n0Var;
        this.f49048o = new c();
        this.f49049p = new b();
        this.f49050q = new oh.a() {
            @Override
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                String string = this.f49053d.f49040g.getString(R$string.common_failed);
                Intrinsics.g(string, "getString(...)");
                com.transsion.rewardscenter.utils.p.a(false, string);
                Function1 function1 = this.f49053d.f49047n;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
            }

            @Override
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                n0 n0Var2 = this.f49053d.f49041h;
                if (n0Var2 != null) {
                    kotlinx.coroutines.k.d(n0Var2, null, null, new MemberTaskAdHelper$rewardAdListener$1$onBiddingLoad$1(this.f49053d, biddingIntermediateMaterialBean, null), 3, null);
                }
            }

            @Override
            public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.o(biddingIntermediateMaterialBean);
                if (biddingIntermediateMaterialBean != null) {
                    MemberTaskAdHelper memberTaskAdHelper = this.f49053d;
                    BaseStageTaskAdHelper.A(memberTaskAdHelper, new v.b(null, 1, null), null, 2, null);
                    Function1 function1 = memberTaskAdHelper.f49047n;
                    if (function1 != null) {
                        function1.invoke(Boolean.TRUE);
                    }
                }
            }
        };
    }

    private final void T() {
        BiddingSspNativeManager biddingSspNativeManager = this.f49044k;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.K0(null);
        }
        BiddingSspNativeManager biddingSspNativeManager2 = this.f49044k;
        if (biddingSspNativeManager2 != null) {
            biddingSspNativeManager2.U();
        }
        this.f49044k = null;
    }

    private final void U() {
        BiddingVideoManager biddingVideoManager = this.f49046m;
        if (biddingVideoManager != null) {
            biddingVideoManager.K0(null);
        }
        BiddingVideoManager biddingVideoManager2 = this.f49046m;
        if (biddingVideoManager2 != null) {
            biddingVideoManager2.U();
        }
        this.f49046m = null;
    }

    private final void V() {
        BiddingSspNativeManager biddingSspNativeManager = this.f49042i;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.K0(null);
        }
        BiddingSspNativeManager biddingSspNativeManager2 = this.f49042i;
        if (biddingSspNativeManager2 != null) {
            biddingSspNativeManager2.U();
        }
        this.f49042i = null;
    }

    public final List W(String str, List list, Boolean bool) {
        Iterator it = list.iterator();
        while (true) {
            String str2 = "Regular";
            if (!it.hasNext()) {
                break;
            }
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) it.next();
            wf.a.C0922a c0922a = wf.a.f74274a;
            if (Intrinsics.c(bool, Boolean.TRUE)) {
                str2 = "Stage";
            }
            wf.a.C0922a.f(c0922a, "StageTaskAd", "MemberTaskAdHelper ----> " + str2 + " loaded item, packageName: " + g(biddingIntermediateMaterialBean), false, 4, null);
        }
        List listI0 = CollectionsKt.I0(list, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                Double ecpm = ((BiddingIntermediateMaterialBean) t11).getEcpm();
                Double dValueOf = Double.valueOf(ecpm != null ? ecpm.doubleValue() : 0.0d);
                Double ecpm2 = ((BiddingIntermediateMaterialBean) t10).getEcpm();
                return ComparisonsKt.d(dValueOf, Double.valueOf(ecpm2 != null ? ecpm2.doubleValue() : 0.0d));
            }
        });
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI0) {
            if (hashSet.add(g((BiddingIntermediateMaterialBean) obj))) {
                arrayList.add(obj);
            }
        }
        ArrayList<BiddingIntermediateMaterialBean> arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!u.f49121a.m(str, g((BiddingIntermediateMaterialBean) obj2))) {
                arrayList2.add(obj2);
            }
        }
        for (BiddingIntermediateMaterialBean biddingIntermediateMaterialBean2 : arrayList2) {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String str3 = Intrinsics.c(bool, Boolean.TRUE) ? "Stage" : "Regular";
            wf.a.C0922a.f(c0922a2, "StageTaskAd", "MemberTaskAdHelper ----> " + str3 + " filtered item, packageName: " + g(biddingIntermediateMaterialBean2), false, 4, null);
        }
        return arrayList2;
    }

    public static final int a0() {
        return com.transsion.ad.scene.a.f41152a.g("MemberTaskRegularNativeScene");
    }

    public static final int b0() {
        return com.transsion.ad.scene.a.f41152a.g("MemberTaskStageNativeScene");
    }

    public final void Q(v.a data) {
        Intrinsics.h(data, "data");
        if (data.f()) {
            return;
        }
        data.n(true);
        wf.a.C0922a.f(wf.a.f74274a, "StageTaskAd", "MemberTaskAdHelper ----> bindRegularNativeAd", false, 4, null);
        if (this.f49044k == null) {
            R();
        }
        data.p(new NativeWrapperAdView(this.f49040g, null, 2, null));
        data.l(new d0(this.f49040g));
        data.q(new w(this.f49040g));
        NativeWrapperAdView nativeWrapperAdViewH = data.h();
        if (nativeWrapperAdViewH != null) {
            nativeWrapperAdViewH.bindSspNativeView(this.f49044k, data.d(), data.j(), data.c());
        }
    }

    public final void R() {
        BiddingSspNativeManager biddingSspNativeManager = new BiddingSspNativeManager();
        this.f49044k = biddingSspNativeManager;
        biddingSspNativeManager.L0("MemberTaskRegularNativeScene");
        biddingSspNativeManager.K0(this.f49049p);
    }

    public final void S() {
        BiddingSspNativeManager biddingSspNativeManager = new BiddingSspNativeManager();
        this.f49042i = biddingSspNativeManager;
        biddingSspNativeManager.L0("MemberTaskStageNativeScene");
        biddingSspNativeManager.K0(this.f49048o);
    }

    public final void X(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f49045l = callback;
        if (u() > 0 || t() > 0) {
            T();
            R();
            n0 n0Var = this.f49041h;
            if (n0Var != null) {
                kotlinx.coroutines.k.d(n0Var, y0.b(), null, new MemberTaskAdHelper$loadRegularAd$1(this, null), 2, null);
            }
        }
    }

    public final void Y(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f49047n = callback;
        U();
        n0 n0Var = this.f49041h;
        if (n0Var != null) {
            kotlinx.coroutines.k.d(n0Var, y0.b(), null, new MemberTaskAdHelper$loadRewardAd$1(this, null), 2, null);
        }
    }

    public final void Z(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f49043j = callback;
        if (v() <= 0) {
            return;
        }
        V();
        n0 n0Var = this.f49041h;
        if (n0Var != null) {
            kotlinx.coroutines.k.d(n0Var, y0.b(), null, new MemberTaskAdHelper$loadStageAd$1(this, null), 2, null);
        }
    }

    @Override
    public void c(v.c data) {
        Intrinsics.h(data, "data");
        if (data.f()) {
            return;
        }
        data.n(true);
        if (this.f49042i == null) {
            S();
        }
        data.p(new NativeWrapperAdView(this.f49040g, null, 2, null));
        data.l(new d0(this.f49040g));
        data.r(new w(this.f49040g));
        NativeWrapperAdView nativeWrapperAdViewH = data.h();
        if (nativeWrapperAdViewH != null) {
            nativeWrapperAdViewH.bindSspNativeView(this.f49042i, data.d(), data.k(), data.c());
        }
    }

    @Override
    public void d() {
        super.d();
        BiddingSspNativeManager biddingSspNativeManager = this.f49042i;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.K0(null);
        }
        this.f49042i = null;
        BiddingSspNativeManager biddingSspNativeManager2 = this.f49044k;
        if (biddingSspNativeManager2 != null) {
            biddingSspNativeManager2.K0(null);
        }
        this.f49044k = null;
        U();
        this.f49043j = null;
        this.f49045l = null;
        this.f49047n = null;
    }
}

package com.transsion.shorttv.viewmodel;

import android.app.Application;
import android.content.Context;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.google.gson.Gson;
import com.transsion.shorttv.bean.AppointSubject;
import com.transsion.shorttv.bean.BannerBean;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.CustomData;
import com.transsion.shorttv.bean.ImmVideoRequestEntity;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.OperatingResp;
import com.transsion.shorttv.bean.PlayListItem;
import com.transsion.shorttv.bean.RankingListData;
import com.transsion.shorttv.bean.RankingListItem;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Video;
import com.transsion.shorttv.constants.BannerType;
import com.transsion.shorttv.db.ShortTvAdUnlockDao;
import com.transsion.shorttv.db.ShortTvDatabase;
import com.transsion.shorttv.db.ShortTvFavoriteDao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class ShortTvViewModel extends t0 {

    public static final a f51666d0 = new a(null);
    private final HashMap A;
    private final Set B;
    private final b0 C;
    private final b0 D;
    private final LiveData E;
    private final b0 F;
    private final LiveData G;
    private final b0 H;
    private final LiveData I;
    private final b0 J;
    private final LiveData K;
    private final b0 L;
    private LiveData M;
    private final Lazy N;
    private final Lazy O;
    private final Lazy P;
    private final vr.a Q;
    private final Lazy R;
    private final Lazy S;
    private final Lazy T;
    private final Lazy U;
    private final Lazy V;
    private final Lazy W;
    private final Lazy X;
    private final Lazy Y;
    private final Lazy Z;

    private final HashMap f51668a0;

    private t1 f51670b0;

    private final HashMap f51672c0;

    private final b0 f51676g;

    private final LiveData f51677h;

    private String f51678i;

    private boolean f51679j;

    private volatile boolean f51680k;

    private final b0 f51681l;

    private final LiveData f51682m;

    private final b0 f51683n;

    private final b0 f51684o;

    private final LiveData f51685p;

    private final b0 f51686q;

    private final LiveData f51687r;

    private final b0 f51688s;

    private final LiveData f51689t;

    private List f51690u;

    private ConcurrentHashMap f51691v;

    private final b0 f51692w;

    private final b0 f51693x;

    private final b0 f51694y;

    private final b0 f51695z;

    private final sr.a f51667a = (sr.a) kg.c.f63982e.a().h(sr.a.class);

    private AtomicBoolean f51669b = new AtomicBoolean(false);

    private AtomicBoolean f51671c = new AtomicBoolean(false);

    private final b0 f51673d = new b0();

    private final b0 f51674e = new b0();

    private final b0 f51675f = new b0();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public ShortTvViewModel() {
        b0 b0Var = new b0();
        this.f51676g = b0Var;
        this.f51677h = b0Var;
        b0 b0Var2 = new b0();
        this.f51681l = b0Var2;
        this.f51682m = b0Var2;
        this.f51683n = new b0();
        b0 b0Var3 = new b0();
        this.f51684o = b0Var3;
        this.f51685p = b0Var3;
        b0 b0Var4 = new b0();
        this.f51686q = b0Var4;
        this.f51687r = b0Var4;
        b0 b0Var5 = new b0();
        this.f51688s = b0Var5;
        this.f51689t = b0Var5;
        this.f51690u = new ArrayList();
        this.f51691v = new ConcurrentHashMap();
        this.f51692w = new b0();
        this.f51693x = new b0();
        this.f51694y = new b0();
        this.f51695z = new b0();
        this.A = new HashMap();
        this.B = new LinkedHashSet();
        this.C = new b0();
        b0 b0Var6 = new b0();
        this.D = b0Var6;
        this.E = b0Var6;
        b0 b0Var7 = new b0();
        this.F = b0Var7;
        this.G = b0Var7;
        b0 b0Var8 = new b0();
        this.H = b0Var8;
        this.I = b0Var8;
        b0 b0Var9 = new b0();
        this.J = b0Var9;
        this.K = b0Var9;
        b0 b0Var10 = new b0();
        this.L = b0Var10;
        this.M = b0Var10;
        this.N = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.V0();
            }
        });
        this.O = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.Q(this.f51708a);
            }
        });
        this.P = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.J(this.f51709a);
            }
        });
        this.Q = pq.c.f69249a.c();
        this.R = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.h1(this.f51710a);
            }
        });
        this.S = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.k1(this.f51711a);
            }
        });
        this.T = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.j1(this.f51712a);
            }
        });
        this.U = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.o1(this.f51713a);
            }
        });
        this.V = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.l1(this.f51714a);
            }
        });
        this.W = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.p1(this.f51704a);
            }
        });
        this.X = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.n1(this.f51705a);
            }
        });
        this.Y = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                ShortTvViewModel.g(this.f51706a);
                return null;
            }
        });
        this.Z = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvViewModel.m1(this.f51707a);
            }
        });
        this.f51668a0 = new HashMap();
        this.f51672c0 = new HashMap();
    }

    public final Object I0(String str, Subject subject, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new ShortTvViewModel$getTrailerItem$2(subject, str, null), continuation);
    }

    public static final ShortTvAdUnlockDao J(ShortTvViewModel shortTvViewModel) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ShortTvDatabase.Companion bVar = ShortTvDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            objM453constructorimpl = Result.m453constructorimpl(bVar.b(applicationA).j0());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "ShortTvViewModel", "adUnlockDao init failed: " + thM456exceptionOrNullimpl, false, 4, null);
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = null;
        }
        return (ShortTvAdUnlockDao) objM453constructorimpl;
    }

    public final boolean L0(List list) {
        int size = this.f51690u.size();
        List list2 = this.f51690u;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((ShortTVItem) it.next()).getEp()));
        }
        Set setV0 = CollectionsKt.V0(arrayList);
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (!setV0.contains(Integer.valueOf(((ShortTVItem) obj).getEp()))) {
                    arrayList2.add(obj);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                this.f51690u.add((ShortTVItem) it2.next());
            }
        }
        return this.f51690u.size() > size;
    }

    public final void M0(OperatingResp operatingResp) {
        List<OperateItem> items;
        List<RankingListItem> items2;
        List<BannerData> items3;
        List<BannerData> banners;
        if (operatingResp == null || (items = operatingResp.getItems()) == null) {
            return;
        }
        for (OperateItem operateItem : items) {
            operateItem.setOps(operatingResp.getOps());
            BannerBean banner = operateItem.getBanner();
            if (banner != null && (banners = banner.getBanners()) != null) {
                for (BannerData bannerData : banners) {
                    if (bannerData != null) {
                        bannerData.setOps(operatingResp.getOps());
                    }
                }
            }
            List<AppointSubject> subjects = operateItem.getSubjects();
            if (subjects != null) {
                Iterator<T> it = subjects.iterator();
                while (it.hasNext()) {
                    ((AppointSubject) it.next()).setOps(operatingResp.getOps());
                }
            }
            CustomData customData = operateItem.getCustomData();
            if (customData != null && (items3 = customData.getItems()) != null) {
                Iterator<T> it2 = items3.iterator();
                while (it2.hasNext()) {
                    ((BannerData) it2.next()).setOps(operatingResp.getOps());
                }
            }
            List<Subject> rankings = operateItem.getRankings();
            if (rankings != null) {
                Iterator<T> it3 = rankings.iterator();
                while (it3.hasNext()) {
                    ((Subject) it3.next()).setOps(operatingResp.getOps());
                }
            }
            RankingListData rankingListData = operateItem.getRankingListData();
            if (rankingListData != null && (items2 = rankingListData.getItems()) != null) {
                for (RankingListItem rankingListItem : items2) {
                    rankingListItem.setOps(operatingResp.getOps());
                    List<Subject> subjects2 = rankingListItem.getSubjects();
                    if (subjects2 != null) {
                        Iterator<T> it4 = subjects2.iterator();
                        while (it4.hasNext()) {
                            ((Subject) it4.next()).setOps(operatingResp.getOps());
                        }
                    }
                }
            }
            PlayListItem playListData = operateItem.getPlayListData();
            if (playListData != null) {
                playListData.setOps(operatingResp.getOps());
            }
        }
    }

    public static final ShortTvFavoriteDao Q(ShortTvViewModel shortTvViewModel) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ShortTvDatabase.Companion bVar = ShortTvDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            objM453constructorimpl = Result.m453constructorimpl(bVar.b(applicationA).k0());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "ShortTvViewModel", "favoriteDao init failed: " + thM456exceptionOrNullimpl, false, 4, null);
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = null;
        }
        return (ShortTvFavoriteDao) objM453constructorimpl;
    }

    private final void R(OperatingResp operatingResp) {
        ArrayList arrayList;
        List<BannerData> banners;
        List listU0;
        List<OperateItem> items = operatingResp.getItems();
        if (items != null) {
            for (OperateItem operateItem : items) {
                if (Intrinsics.c(operateItem.getType(), ShortTvItemType.BANNER.getValue())) {
                    BannerBean banner = operateItem.getBanner();
                    if (banner == null || (banners = banner.getBanners()) == null || (listU0 = CollectionsKt.U0(banners)) == null) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                        for (Object obj : listU0) {
                            BannerData bannerData = (BannerData) obj;
                            if (bannerData == null || bannerData.getType() != BannerType.GUIDE.ordinal()) {
                                if (bannerData == null || bannerData.getType() != BannerType.AD.ordinal()) {
                                    arrayList.add(obj);
                                }
                            }
                        }
                    }
                    BannerBean banner2 = operateItem.getBanner();
                    if (banner2 != null) {
                        banner2.setBanners(arrayList);
                    }
                }
            }
        }
    }

    public final ShortTvAdUnlockDao U() {
        return (ShortTvAdUnlockDao) this.P.getValue();
    }

    public static final tr.a V0() {
        return new tr.a();
    }

    public final void X0(String str, List list) {
        b0 b0Var;
        List list2;
        ShortTVItem shortTVItem;
        ShortTVItem shortTVItem2;
        ShortTVItem shortTVItem3;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "ShortTvViewModel", "--------putEpisodeMap subjectId" + str + "----ep:" + ((list == null || (shortTVItem3 = (ShortTVItem) CollectionsKt.k0(list)) == null) ? null : Integer.valueOf(shortTVItem3.getEp())) + "-" + ((list == null || (shortTVItem2 = (ShortTVItem) CollectionsKt.v0(list)) == null) ? null : Integer.valueOf(shortTVItem2.getEp())), false, 4, null);
        List list3 = list;
        if (list3 == null || list3.isEmpty()) {
            return;
        }
        if (this.f51691v.contains(str)) {
            b0Var = (b0) this.f51691v.get(str);
        } else {
            b0 b0Var2 = new b0();
            b0Var2.q(new ArrayList());
            this.f51691v.put(str, b0Var2);
            b0Var = b0Var2;
        }
        List arrayList = b0Var != null ? (List) b0Var.f() : null;
        if (arrayList == null) {
            arrayList = new ArrayList();
            if (b0Var != null) {
                b0Var.q(arrayList);
            }
        }
        int ep2 = (b0Var == null || (list2 = (List) b0Var.f()) == null || (shortTVItem = (ShortTVItem) CollectionsKt.k0(list2)) == null) ? 0 : shortTVItem.getEp();
        ShortTVItem shortTVItem4 = (ShortTVItem) CollectionsKt.k0(list);
        int ep3 = shortTVItem4 != null ? shortTVItem4.getEp() : 0;
        Boolean bool = (Boolean) this.f51693x.f();
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        wf.a.C0922a.f(c0922a, "ShortTvViewModel", "putEpisodeMap isNeedPlayCurEp" + zBooleanValue + ",playingEp: " + this.f51692w.f() + " ", false, 4, null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ShortTVItem shortTVItem5 = (ShortTVItem) it.next();
            if (zBooleanValue) {
                int ep4 = shortTVItem5.getEp();
                Integer num = (Integer) this.f51692w.f();
                if (num != null && ep4 == num.intValue()) {
                    wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "AudioTrack change----play  ep:" + shortTVItem5.getEp(), false, 4, null);
                    this.f51693x.q(Boolean.FALSE);
                    this.f51694y.q(shortTVItem5);
                    break;
                }
            }
        }
        if (ep2 > ep3) {
            arrayList.addAll(0, list);
        } else {
            arrayList.addAll(list);
        }
    }

    public final ShortTvFavoriteDao b0() {
        return (ShortTvFavoriteDao) this.O.getValue();
    }

    public final void c1(OperatingResp operatingResp) {
        List<OperateItem> items = operatingResp.getItems();
        if (items == null || !(!items.isEmpty())) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        List<BannerData> banners = operatingResp.getBanners();
        wf.a.C0922a.v(c0922a, "ShortTvViewModel", "Cache--保存运营位缓存 banner:" + (banners != null ? Integer.valueOf(banners.size()) : null), false, 4, null);
        R(operatingResp);
        com.transsion.shorttv.utils.h.f51644a.d().putString("short_tv_operating_data", new Gson().toJson(operatingResp));
    }

    public static ur.e g(ShortTvViewModel shortTvViewModel) {
        i1(shortTvViewModel);
        return null;
    }

    public static final ur.d h1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    private static final ur.e i1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar == null) {
            return null;
        }
        aVar.j();
        return null;
    }

    public static final ur.f j1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.e();
        }
        return null;
    }

    public final tr.a k0() {
        return (tr.a) this.N.getValue();
    }

    public static final ur.g k1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.f();
        }
        return null;
    }

    public static final ur.h l1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    public static final ur.i m1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.l();
        }
        return null;
    }

    public static final ur.k n1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    public static final ur.a o1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.i();
        }
        return null;
    }

    public static final ur.l p1(ShortTvViewModel shortTvViewModel) {
        vr.a aVar = shortTvViewModel.Q;
        if (aVar != null) {
            return aVar.c();
        }
        return null;
    }

    public static void q0(ShortTvViewModel shortTvViewModel, String str, int i10, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str2 = null;
        }
        shortTvViewModel.p0(str, i10, z10, str2);
    }

    public final void r1(String str, ShortTVFavInfo shortTVFavInfo) {
        if (shortTVFavInfo == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$updateFavorite$1(this, shortTVFavInfo, str, null), 3, null);
    }

    public final ur.h A0() {
        return (ur.h) this.V.getValue();
    }

    public final ur.i B0() {
        return (ur.i) this.Z.getValue();
    }

    public final ur.k C0() {
        return (ur.k) this.X.getValue();
    }

    public final ur.a D0() {
        return (ur.a) this.U.getValue();
    }

    public final ur.l E0() {
        return (ur.l) this.W.getValue();
    }

    public final LiveData F0() {
        return this.f51687r;
    }

    public final LiveData G0() {
        return this.I;
    }

    public final LiveData H0() {
        return this.f51677h;
    }

    public final LiveData J0() {
        return this.M;
    }

    public final void K(int i10, long j10) {
        if (i10 <= 0 || this.B.contains(Integer.valueOf(i10))) {
            return;
        }
        this.A.put(Integer.valueOf(i10), Long.valueOf(j10));
    }

    public final b0 K0() {
        return this.f51674e;
    }

    public final void L(int i10) {
        this.B.remove(Integer.valueOf(i10));
    }

    public final void M(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        Set setKeySet = this.f51672c0.keySet();
        Intrinsics.g(setKeySet, "<get-keys>(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            String str = (String) obj;
            Intrinsics.e(str);
            if (StringsKt.W(str, subjectId, false, 2, null)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f51672c0.remove((String) it.next());
        }
    }

    public final void N() {
        this.F.q(null);
    }

    public final boolean N0() {
        return this.f51680k;
    }

    public final void O() {
        this.J.q(null);
    }

    public final boolean O0() {
        return this.f51679j;
    }

    public final void P(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        String subjectId;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$favorite$1(this, subject, subjectId, shortTVFavInfo.getHasFavorite(), shortTVFavInfo, null), 3, null);
    }

    public final void P0(Context context) {
        Intrinsics.h(context, "context");
        wf.a.C0922a.r(wf.a.f74274a, "ShortTvViewModel", new String[]{"Cache---开始处理缓存"}, false, 4, null);
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvViewModel$loadCache$1(this, context, null), 2, null);
    }

    public final void Q0(Set eps) {
        Subject subject;
        Set<Integer> adUnlockedEps;
        Intrinsics.h(eps, "eps");
        if (eps.isEmpty() || (subject = (Subject) this.f51676g.f()) == null || (adUnlockedEps = subject.getAdUnlockedEps()) == null) {
            return;
        }
        adUnlockedEps.addAll(eps);
    }

    public final void R0(int i10) {
        Subject subject = (Subject) this.f51676g.f();
        if (subject != null) {
            subject.setPaid(i10);
        }
    }

    public final int S(int i10, ShortTvInnerPlayBean shortTvInnerPlayBean, Subject subject, int i11, boolean z10) {
        int iIntValue;
        int ep2;
        pq.c cVar = pq.c.f69249a;
        boolean zB = cVar.b().b();
        if (i10 >= 0) {
            if (i10 != 0 || zB) {
                return i10;
            }
            return 1;
        }
        Integer numValueOf = (shortTvInnerPlayBean == null || ((ep2 = shortTvInnerPlayBean.getEp()) == 0 && !zB)) ? null : Integer.valueOf(ep2);
        if (numValueOf != null) {
            iIntValue = numValueOf.intValue();
        } else {
            iIntValue = ((subject != null ? subject.getTrailer() : null) == null || !cVar.b().b()) ? 1 : 0;
        }
        if (i11 >= 0) {
            return (!z10 || numValueOf == null || numValueOf.intValue() == i11) ? i11 : iIntValue;
        }
        return iIntValue;
    }

    public final void S0() {
        this.f51681l.q(Unit.f64096a);
    }

    public final void T(String subjectId, int i10) {
        Intrinsics.h(subjectId, "subjectId");
        this.f51668a0.remove(subjectId + i10);
        M(subjectId);
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvViewModel$forceRefreshSubjectInfo$1(this, subjectId, null), 2, null);
    }

    public final void T0() {
        this.f51695z.q(this.f51692w.f());
    }

    public final void U0(String subjectId, int i10, pn.f fVar) {
        List<ShortTVItem> list;
        List<Video> addressList;
        Object next;
        Map mapB;
        Intrinsics.h(subjectId, "subjectId");
        b0 b0Var = (b0) this.f51691v.get(subjectId);
        if (b0Var == null || (list = (List) b0Var.f()) == null) {
            return;
        }
        for (ShortTVItem shortTVItem : list) {
            boolean zContainsKey = false;
            int i11 = com.transsion.shorttv.utils.h.f51644a.d().getInt("k_short_tv_resolution", 0);
            Media video = shortTVItem.getVideo();
            if (video != null && (addressList = video.getAddressList()) != null) {
                Iterator<T> it = addressList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((Video) next).getResolution(), String.valueOf(i11)));
                Video video2 = (Video) next;
                if (video2 != null) {
                    if (fVar != null && (mapB = fVar.b()) != null) {
                        zContainsKey = mapB.containsKey(video2.getUrl());
                    }
                    if (!zContainsKey) {
                        int ep2 = (shortTVItem.getEp() - i10) + 1;
                        int ep3 = shortTVItem.getEp();
                        int i12 = ep2 > 0 ? (ep3 - i10) + 1 : ep3 + i10;
                        if (fVar != null) {
                            String url = video2.getUrl();
                            String url2 = video2.getUrl();
                            if (url2 == null) {
                                url2 = "";
                            }
                            fVar.addDataSource(new gn.e(url, url2, i12, null, null, 24, null));
                        }
                    }
                }
            }
        }
    }

    public final b0 V() {
        return this.f51694y;
    }

    public final long W(int i10) {
        Long l10 = (Long) this.A.get(Integer.valueOf(i10));
        if (l10 != null) {
            return l10.longValue();
        }
        return 0L;
    }

    public final void W0(String resolution, int i10, pn.f fVar) {
        String subjectId;
        b0 b0Var;
        List<ShortTVItem> list;
        List<Video> addressList;
        Object next;
        Map mapB;
        Intrinsics.h(resolution, "resolution");
        Subject subject = (Subject) this.f51677h.f();
        if (subject == null || (subjectId = subject.getSubjectId()) == null || (b0Var = (b0) this.f51691v.get(subjectId)) == null || (list = (List) b0Var.f()) == null) {
            return;
        }
        for (ShortTVItem shortTVItem : list) {
            Media video = shortTVItem.getVideo();
            if (video != null && (addressList = video.getAddressList()) != null) {
                Iterator<T> it = addressList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((Video) next).getResolution(), resolution));
                Video video2 = (Video) next;
                if (video2 != null) {
                    if (!((fVar == null || (mapB = fVar.b()) == null) ? false : mapB.containsKey(video2.getUrl()))) {
                        int ep2 = (shortTVItem.getEp() - i10) + 1;
                        int ep3 = shortTVItem.getEp();
                        int i11 = ep2 > 0 ? (ep3 - i10) + 1 : ep3 + i10;
                        if (fVar != null) {
                            String url = video2.getUrl();
                            String url2 = video2.getUrl();
                            if (url2 == null) {
                                url2 = "";
                            }
                            fVar.addDataSource(new gn.e(url, url2, i11, null, null, 24, null));
                        }
                    }
                }
            }
        }
    }

    public final b0 X() {
        return this.f51693x;
    }

    public final String Y() {
        return this.f51678i;
    }

    public final void Y0() {
        t1 t1Var = this.f51670b0;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f51670b0 = null;
        this.f51679j = true;
        this.f51678i = null;
        this.f51680k = false;
        this.f51669b.set(false);
        this.f51671c.set(false);
        this.f51676g.q(null);
        this.f51684o.q(null);
        this.f51686q.q(null);
        this.f51688s.q(null);
        b0 b0Var = this.D;
        Boolean bool = Boolean.FALSE;
        b0Var.q(bool);
        this.F.q(null);
        this.H.q(bool);
        this.J.q(null);
        this.L.q(bool);
        this.C.q(bool);
        this.f51693x.q(bool);
        this.f51690u.clear();
        this.f51691v.clear();
        this.f51668a0.clear();
        this.f51672c0.clear();
        this.A.clear();
        this.B.clear();
    }

    public final LiveData Z() {
        return this.f51685p;
    }

    public final void Z0(int i10) {
        this.A.remove(Integer.valueOf(i10));
        this.B.add(Integer.valueOf(i10));
    }

    public final b0 a0() {
        String subjectId;
        Subject subject = (Subject) this.f51677h.f();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            return null;
        }
        return (b0) this.f51691v.get(subjectId);
    }

    public final void a1(String subjectId) {
        Set<Integer> adUnlockedEps;
        Intrinsics.h(subjectId, "subjectId");
        wf.a.C0922a c0922a = wf.a.f74274a;
        Subject subject = (Subject) this.f51677h.f();
        wf.a.C0922a.r(c0922a, "ShortTvViewModel", new String[]{"will saveAdUnlockedEps, eps: " + (subject != null ? subject.getAdUnlockedEps() : null)}, false, 4, null);
        Subject subject2 = (Subject) this.f51677h.f();
        if (subject2 == null || (adUnlockedEps = subject2.getAdUnlockedEps()) == null || adUnlockedEps.isEmpty()) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$saveAdUnlockedEps$1(subjectId, adUnlockedEps, this, null), 3, null);
    }

    public final void b1(Subject subject, ShortTVItem shortTVItem, long j10) {
        if (subject == null || shortTVItem == null || dr.b.f59061a.c(subject, shortTVItem)) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvViewModel$saveHistory$1(this, subject, shortTVItem, j10, null), 2, null);
    }

    public final b0 c0() {
        return this.f51675f;
    }

    public final LiveData d0() {
        return this.E;
    }

    public final void d1(int i10) {
        List listL = (List) this.f51687r.f();
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        Iterator it = listL.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            nr.k kVar = (nr.k) it.next();
            if ((kVar instanceof nr.e) && ((nr.e) kVar).c() == i10) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            Integer num = (Integer) this.f51692w.f();
            if (num != null && i10 == num.intValue()) {
                return;
            }
            this.f51692w.q(Integer.valueOf(i10));
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "scrollToEp：" + i10 + " 当前不存在该集", false, 4, null);
    }

    public final LiveData e0() {
        return this.G;
    }

    public final void e1(boolean z10) {
        this.f51680k = z10;
    }

    public final LiveData f0() {
        return this.K;
    }

    public final void f1(String str) {
        this.f51678i = str;
    }

    public final b0 g0() {
        return this.f51695z;
    }

    public final void g1(boolean z10) {
        this.f51679j = z10;
    }

    public final void h0(int i10) {
        if (!yg.l.f76264a.e()) {
            this.f51673d.q(null);
        } else {
            com.transsion.shorttv.utils.h.f51644a.d().getString("key_short_tv_operation_version", "");
            kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$getOperatingList$1(this, i10, null), 3, null);
        }
    }

    public final b0 i0() {
        return this.f51673d;
    }

    public final b0 j0() {
        return this.f51692w;
    }

    public final b0 l0() {
        return this.f51683n;
    }

    public final LiveData m0() {
        return this.f51682m;
    }

    public final void n0(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        if (subjectId.length() == 0) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$getShortTVDubInfo$1(this, subjectId, null), 3, null);
    }

    public final void o0() {
        q0(this, "1", 8, false, null, 8, null);
    }

    public final void p0(String nextPage, int i10, boolean z10, String str) {
        Intrinsics.h(nextPage, "nextPage");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$getShortTVFavoriteList$1(this, nextPage, i10, z10, str, null), 3, null);
    }

    public final void q1(boolean z10) {
        this.H.q(Boolean.valueOf(z10));
    }

    public final void r0(String nextPage, int i10, boolean z10) {
        Intrinsics.h(nextPage, "nextPage");
        ImmVideoRequestEntity immVideoRequestEntity = new ImmVideoRequestEntity();
        immVideoRequestEntity.setPage(nextPage);
        immVideoRequestEntity.setPerPage(i10);
        immVideoRequestEntity.setSessionId(jg.b.f63119a.h());
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$getShortTVTrending$1(immVideoRequestEntity, this, z10, null), 3, null);
    }

    public final ur.d s0() {
        return (ur.d) this.R.getValue();
    }

    public final void s1(Subject subject, nr.e eVar, long j10) {
        String id2;
        Media video;
        Video videoAddress;
        if (subject == null || eVar == null) {
            return;
        }
        String strE = eVar.e();
        ShortTVItem shortTVItemD = eVar.d();
        if (shortTVItemD == null || (id2 = shortTVItemD.getId()) == null) {
            id2 = "";
        }
        String str = id2;
        int iC = eVar.c();
        ShortTVItem shortTVItemD2 = eVar.d();
        int se2 = shortTVItemD2 != null ? shortTVItemD2.getSe() : 1;
        int totalEpisode = subject.getTotalEpisode();
        String title = subject.getTitle();
        String description = subject.getDescription();
        Cover cover = subject.getCover();
        String url = cover != null ? cover.getUrl() : null;
        Cover cover2 = subject.getCover();
        String thumbnail = cover2 != null ? cover2.getThumbnail() : null;
        ShortTVItem shortTVItemD3 = eVar.d();
        String videoId = shortTVItemD3 != null ? shortTVItemD3.getVideoId() : null;
        ShortTVItem shortTVItemD4 = eVar.d();
        ShortTvInnerPlayBean shortTvInnerPlayBean = new ShortTvInnerPlayBean(strE, str, iC, se2, totalEpisode, j10, title, description, url, thumbnail, videoId, (shortTVItemD4 == null || (video = shortTVItemD4.getVideo()) == null || (videoAddress = video.getVideoAddress()) == null) ? null : videoAddress.getUrl(), System.currentTimeMillis(), null, 8192, null);
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "updateLiveHistory:" + shortTvInnerPlayBean, false, 4, null);
        this.J.q(shortTvInnerPlayBean);
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvViewModel$updateLiveHistory$1(this, subject, eVar, j10, null), 2, null);
    }

    public final LiveData t0() {
        return this.f51689t;
    }

    public final ConcurrentHashMap u0() {
        return this.f51691v;
    }

    public final void v0(String str, Subject subject, int i10, boolean z10) {
        String subjectId = str;
        Integer num = (Integer) this.f51668a0.get(subjectId + i10);
        if (num != null && num.intValue() == 2) {
            wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "getShortTvEpisodes 已经显示全部数据", false, 4, null);
            return;
        }
        t1 t1Var = this.f51670b0;
        if (t1Var == null || !t1Var.isActive()) {
            if (subjectId == null) {
                subjectId = subject != null ? subject.getSubjectId() : null;
                if (subjectId == null) {
                    return;
                }
            }
            String str2 = subjectId;
            Subject subject2 = (Subject) this.f51676g.f();
            this.f51670b0 = kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$getShortTvEpisodes$1(num, this, str2, subject2 != null ? subject2.getSubjectId() : null, subject, i10, z10, null), 3, null);
        }
    }

    public final void w0(String subjectId, int i10) {
        Intrinsics.h(subjectId, "subjectId");
        int i11 = i10 - 1;
        int i12 = ((i11 / 20) * 20) + 1;
        Integer num = (Integer) this.f51672c0.get(subjectId + i10);
        if (num == null || num.intValue() != 0) {
            if (num != null && num.intValue() == 1) {
                wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "getShortTvEpisodes start：" + i12 + "  loading", false, 4, null);
                return;
            }
            this.f51672c0.put(subjectId + i10, 1);
            kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$getShortTvEpisodesInfo$2(i12, this, subjectId, i10, null), 3, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvViewModel", "getShortTvEpisodes start：" + i12 + " data not null", false, 4, null);
        List list = (List) this.f51687r.f();
        nr.k kVar = list != null ? (nr.k) CollectionsKt.l0(list, i11) : null;
        if (kVar instanceof nr.e) {
            dr.b bVar = dr.b.f59061a;
            LiveData liveData = this.f51677h;
            nr.e eVar = (nr.e) kVar;
            if (bVar.c(liveData != null ? (Subject) liveData.f() : null, eVar.d()) || !nr.l.b(eVar)) {
                return;
            }
            kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvViewModel$getShortTvEpisodesInfo$1(i12, i10, this, subjectId, null), 3, null);
        }
    }

    public final ur.e x0() {
        android.support.v4.media.session.c.a(this.Y.getValue());
        return null;
    }

    public final ur.f y0() {
        return (ur.f) this.T.getValue();
    }

    public final ur.g z0() {
        return (ur.g) this.S.getValue();
    }
}

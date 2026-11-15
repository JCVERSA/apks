package com.transsion.home.adapter.suboperate.provider;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewTreeObserver;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.baseui.recycler.InterceptView;
import com.transsion.baseui.widget.OperateScrollableHost;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.suboperate.adapter.SubBannerChildPagerAdapter;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadDialogShowEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

public final class i extends BaseItemProvider implements androidx.p009lifecycle.f {

    private final int f43414e;

    private final BaseHomeSubFragment f43415f;

    private final Set f43416g;

    private Handler f43417h;

    private ViewPager2 f43418i;

    private ViewPager2 f43419j;

    private InterceptView f43420k;

    private int f43421l;

    private long f43422m;

    private boolean f43423n;

    private com.transsion.home.adapter.suboperate.adapter.v f43424o;

    private SubBannerChildPagerAdapter f43425p;

    private com.transsion.home.adapter.suboperate.adapter.v f43426q;

    private final Runnable f43427r;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        final OperateItem f43428a;

        final i f43429b;

        a(OperateItem operateItem, i iVar) {
            this.f43428a = operateItem;
            this.f43429b = iVar;
        }

        @Override
        public void onPageSelected(int i10) {
            BannerBean banner = this.f43428a.getBanner();
            if (banner != null ? Intrinsics.c(banner.getAutoPlay(), Boolean.TRUE) : false) {
                Handler handler = this.f43429b.f43417h;
                if (handler != null) {
                    handler.removeCallbacks(this.f43429b.f43427r);
                }
                Handler handler2 = this.f43429b.f43417h;
                if (handler2 != null) {
                    handler2.postDelayed(this.f43429b.f43427r, this.f43429b.f43422m);
                }
            }
            boolean z10 = this.f43429b.f43421l != -1;
            this.f43429b.f43421l = i10;
            this.f43429b.a0(i10, z10);
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            int iQ = i.this.Q();
            if (iQ != -1) {
                i.this.W(iQ);
            }
        }
    }

    public static final class c implements ViewTreeObserver.OnPreDrawListener {

        final BaseViewHolder f43431a;

        c(BaseViewHolder baseViewHolder) {
            this.f43431a = baseViewHolder;
        }

        @Override
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = this.f43431a.itemView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.TRENDING_END, 0L, 2, null));
            return true;
        }
    }

    public i(int i10, BaseHomeSubFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f43414e = i10;
        this.f43415f = fragment;
        this.f43416g = new LinkedHashSet();
        this.f43421l = -1;
        this.f43422m = 5000L;
        U();
        this.f43427r = new Runnable() {
            @Override
            public final void run() {
                i.Z(this.f43403a);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [T, java.util.List] */
    private final List L(List list, final Function1 function1) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = list;
        boolean zM = BannerADDataHelper.f43481a.m();
        List list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            BannerData bannerData = (BannerData) next;
            if ((bannerData != null ? bannerData.getBiddingAdData() : null) != null) {
                arrayList.add(next);
            }
        }
        List listU0 = CollectionsKt.U0(arrayList);
        if (zM || listU0.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list2) {
                BannerData bannerData2 = (BannerData) obj;
                if ((bannerData2 != null ? bannerData2.getBiddingAdData() : null) == null) {
                    arrayList2.add(obj);
                }
            }
            ?? U0 = CollectionsKt.U0(arrayList2);
            objectRef.element = U0;
            if (((List) U0).isEmpty()) {
                return (List) objectRef.element;
            }
            BannerADDataHelper.f43481a.k(new Function2() {
                @Override
                public final Object invoke(Object obj2, Object obj3) {
                    return i.M(objectRef, function1, (BiddingIntermediateMaterialBean) obj2, ((Integer) obj3).intValue());
                }
            });
        }
        return (List) objectRef.element;
    }

    public static final Unit M(Ref.ObjectRef objectRef, Function1 function1, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, int i10) {
        if (biddingIntermediateMaterialBean == null) {
            return Unit.f64096a;
        }
        if (((List) objectRef.element).size() > i10) {
            ((List) objectRef.element).add(i10, new BannerData(null, null, null, false, null, null, null, null, 0, null, null, biddingIntermediateMaterialBean, 2047, null));
        } else {
            ((List) objectRef.element).add(new BannerData(null, null, null, false, null, null, null, null, 0, null, null, biddingIntermediateMaterialBean, 2047, null));
        }
        function1.invoke(objectRef.element);
        return Unit.f64096a;
    }

    private final void N() {
        Handler handler = this.f43417h;
        if (handler != null) {
            handler.postDelayed(this.f43427r, this.f43422m);
        }
    }

    public static final Unit P(i iVar, List data) {
        Intrinsics.h(data, "data");
        iVar.b0(data);
        return Unit.f64096a;
    }

    public final int Q() {
        ViewPager2 viewPager2 = this.f43419j;
        if (viewPager2 == null) {
            Intrinsics.y("cardPager");
            viewPager2 = null;
        }
        return viewPager2.getCurrentItem();
    }

    private final int R(int i10) {
        return 1073741823 - (1073741823 % i10);
    }

    private final void S(List list, OperateItem operateItem) {
        ViewPager2 viewPager2 = this.f43419j;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.y("cardPager");
            viewPager2 = null;
        }
        viewPager2.setPageTransformer(new CompositePageTransformer());
        ViewPager2 viewPager4 = this.f43419j;
        if (viewPager4 == null) {
            Intrinsics.y("cardPager");
            viewPager4 = null;
        }
        viewPager4.setOffscreenPageLimit(3);
        this.f43425p = new SubBannerChildPagerAdapter(list, this.f43414e, operateItem);
        ViewPager2 viewPager5 = this.f43419j;
        if (viewPager5 == null) {
            Intrinsics.y("cardPager");
            viewPager5 = null;
        }
        viewPager5.setAdapter(this.f43425p);
        ViewPager2 viewPager6 = this.f43419j;
        if (viewPager6 == null) {
            Intrinsics.y("cardPager");
        } else {
            viewPager3 = viewPager6;
        }
        viewPager3.registerOnPageChangeCallback(new b());
    }

    private final void U() {
        BaseHomeSubFragment baseHomeSubFragment = this.f43415f;
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return i.V(this.f43406a, (DownloadDialogShowEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = DownloadDialogShowEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(baseHomeSubFragment, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
    }

    public static final Unit V(i iVar, DownloadDialogShowEvent value) {
        Intrinsics.h(value, "value");
        if (iVar.f43423n) {
            if (value.getShow()) {
                Handler handler = iVar.f43417h;
                if (handler != null) {
                    handler.removeCallbacks(iVar.f43427r);
                }
            } else {
                Handler handler2 = iVar.f43417h;
                if (handler2 != null) {
                    handler2.postDelayed(iVar.f43427r, iVar.f43422m);
                }
            }
        }
        return Unit.f64096a;
    }

    public final void W(int i10) {
        ViewPager2 viewPager2 = this.f43418i;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.y("viewPager2");
            viewPager2 = null;
        }
        if (i10 != viewPager2.getCurrentItem()) {
            ViewPager2 viewPager4 = this.f43418i;
            if (viewPager4 == null) {
                Intrinsics.y("viewPager2");
            } else {
                viewPager3 = viewPager4;
            }
            viewPager3.setCurrentItem(i10, true);
        }
    }

    private final void X() {
        List arrayList;
        List listG;
        if (this.f43415f.isAdded() && this.f43415f.isVisible()) {
            ViewPager2 viewPager2 = this.f43418i;
            if (viewPager2 == null) {
                Intrinsics.y("viewPager2");
                viewPager2 = null;
            }
            if (viewPager2.isShown()) {
                com.transsion.home.adapter.suboperate.adapter.v vVar = this.f43426q;
                if (vVar == null || (listG = vVar.g()) == null || (arrayList = CollectionsKt.U0(listG)) == null) {
                    arrayList = new ArrayList();
                }
                L(arrayList, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return i.Y(this.f43404a, (List) obj);
                    }
                });
            }
        }
    }

    public static final Unit Y(i iVar, List data) {
        Intrinsics.h(data, "data");
        iVar.b0(data);
        return Unit.f64096a;
    }

    public static final void Z(i iVar) {
        if (!iVar.f43415f.isVisible()) {
            if (iVar.f43415f.isAdded()) {
                iVar.N();
                return;
            }
            return;
        }
        ViewPager2 viewPager2 = iVar.f43418i;
        if (viewPager2 == null) {
            Intrinsics.y("viewPager2");
            viewPager2 = null;
        }
        ViewPager2 viewPager3 = iVar.f43418i;
        if (viewPager3 == null) {
            Intrinsics.y("viewPager2");
            viewPager3 = null;
        }
        int currentItem = viewPager3.getCurrentItem() + 1;
        ViewPager2 viewPager4 = iVar.f43418i;
        if (viewPager4 == null) {
            Intrinsics.y("viewPager2");
            viewPager4 = null;
        }
        RecyclerView.Adapter adapter = viewPager4.getAdapter();
        Integer numValueOf = adapter != null ? Integer.valueOf(adapter.getItemCount()) : null;
        Intrinsics.e(numValueOf);
        viewPager2.setCurrentItem(currentItem % numValueOf.intValue());
    }

    public final void a0(int i10, boolean z10) {
        if (i10 != Q()) {
            ViewPager2 viewPager2 = this.f43419j;
            if (viewPager2 == null) {
                Intrinsics.y("cardPager");
                viewPager2 = null;
            }
            viewPager2.setCurrentItem(i10, z10);
        }
    }

    private final void b0(List list) {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.home.adapter.suboperate.adapter.v vVar = this.f43426q;
            if (vVar != null) {
                vVar.i(list);
            }
            com.transsion.home.adapter.suboperate.adapter.v vVar2 = this.f43426q;
            if (vVar2 != null) {
                vVar2.notifyDataSetChanged();
            }
            SubBannerChildPagerAdapter subBannerChildPagerAdapter = this.f43425p;
            if (subBannerChildPagerAdapter != null) {
                subBannerChildPagerAdapter.h(list);
            }
            SubBannerChildPagerAdapter subBannerChildPagerAdapter2 = this.f43425p;
            if (subBannerChildPagerAdapter2 != null) {
                subBannerChildPagerAdapter2.notifyDataSetChanged();
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        List arrayList;
        String interval;
        Integer numV;
        List<BannerData> banners;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f43418i = (ViewPager2) helper.itemView.findViewById(R$id.sub_operation_view_pager);
        this.f43419j = (ViewPager2) helper.getView(R$id.cardPager);
        InterceptView interceptView = (InterceptView) helper.getView(R$id.interestLayout);
        this.f43420k = interceptView;
        ViewPager2 viewPager2 = null;
        if (interceptView == null) {
            Intrinsics.y("interestLayout");
            interceptView = null;
        }
        ViewPager2 viewPager3 = this.f43419j;
        if (viewPager3 == null) {
            Intrinsics.y("cardPager");
            viewPager3 = null;
        }
        interceptView.setPostView(viewPager3);
        ((OperateScrollableHost) helper.getView(R$id.sub_operation_view_scroll_helper)).interceptAllEvent(true);
        ((OperateScrollableHost) helper.getView(R$id.sub_operation_card_helper)).interceptAllEvent(true);
        BannerBean banner = item.getBanner();
        if (banner == null || (banners = banner.getBanners()) == null || (arrayList = CollectionsKt.U0(banners)) == null) {
            arrayList = new ArrayList();
        }
        List<BannerData> listL = L(arrayList, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return i.P(this.f43401a, (List) obj);
            }
        });
        BannerBean banner2 = item.getBanner();
        if (banner2 != null) {
            banner2.setBanners(listL);
        }
        if (listL.isEmpty()) {
            return;
        }
        com.transsion.home.adapter.suboperate.adapter.v vVar = this.f43426q;
        if (vVar == null) {
            this.f43426q = new com.transsion.home.adapter.suboperate.adapter.v(listL, this.f43414e, this, item);
        } else if (vVar != null) {
            vVar.i(listL);
        }
        this.f43424o = this.f43426q;
        ViewPager2 viewPager4 = this.f43418i;
        if (viewPager4 == null) {
            Intrinsics.y("viewPager2");
            viewPager4 = null;
        }
        viewPager4.setAdapter(this.f43424o);
        S(listL, item);
        Handler handler = this.f43417h;
        if (handler != null) {
            handler.removeCallbacks(this.f43427r);
        }
        this.f43417h = new Handler(Looper.getMainLooper());
        ViewPager2 viewPager5 = this.f43418i;
        if (viewPager5 == null) {
            Intrinsics.y("viewPager2");
            viewPager5 = null;
        }
        viewPager5.registerOnPageChangeCallback(new a(item, this));
        BannerBean banner3 = item.getBanner();
        long jIntValue = ((long) ((banner3 == null || (interval = banner3.getInterval()) == null || (numV = StringsKt.v(interval)) == null) ? 0 : numV.intValue())) * 1000;
        if (jIntValue <= 0) {
            jIntValue = this.f43422m;
        }
        this.f43422m = jIntValue;
        int iR = this.f43421l;
        if (iR < 0) {
            iR = R(listL.size());
        }
        ViewPager2 viewPager6 = this.f43418i;
        if (viewPager6 == null) {
            Intrinsics.y("viewPager2");
            viewPager6 = null;
        }
        viewPager6.setCurrentItem(iR, false);
        ViewPager2 viewPager7 = this.f43419j;
        if (viewPager7 == null) {
            Intrinsics.y("cardPager");
        } else {
            viewPager2 = viewPager7;
        }
        viewPager2.setCurrentItem(iR, false);
    }

    public final boolean T(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f43416g.add(str);
    }

    @Override
    public int l() {
        return PostItemType.BANNER.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_banner;
    }

    @Override
    public void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override
    public void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override
    public void onPause(androidx.p009lifecycle.u owner) {
        Handler handler;
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.c(this, owner);
        if (!this.f43423n || (handler = this.f43417h) == null) {
            return;
        }
        handler.removeCallbacks(this.f43427r);
    }

    @Override
    public void onResume(androidx.p009lifecycle.u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        if (this.f43423n) {
            Handler handler = this.f43417h;
            if (handler != null) {
                handler.postDelayed(this.f43427r, this.f43422m);
            }
            X();
        }
    }

    @Override
    public void onStart(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override
    public void onStop(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.f(this, uVar);
    }

    @Override
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        this.f43423n = true;
        Handler handler = this.f43417h;
        if (handler != null) {
            handler.postDelayed(this.f43427r, this.f43422m);
        }
        holder.itemView.getViewTreeObserver().addOnPreDrawListener(new c(holder));
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f43423n = false;
        Handler handler = this.f43417h;
        if (handler != null) {
            handler.removeCallbacks(this.f43427r);
        }
    }
}

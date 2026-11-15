package com.transsion.shorttv.ui.widget;

import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class ShortTvPagerChangeControl extends gr.a implements androidx.p009lifecycle.r, a1 {

    public static final a f51486o = new a(null);

    private final Fragment f51487a;

    private final BaseProviderMultiAdapter f51488b;

    private final com.transsion.player.orplayer.f f51489c;

    private final ORPlayerView f51490d;

    private PagerLayoutManager f51491e;

    private boolean f51492f;

    private int f51493g;

    private Integer f51494h;

    private boolean f51495i;

    private boolean f51496j;

    private View f51497k;

    private boolean f51498l;

    private final Handler f51499m;

    private Runnable f51500n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f51501a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51501a = iArr;
        }
    }

    public ShortTvPagerChangeControl(Fragment fragment, BaseProviderMultiAdapter baseProviderMultiAdapter, com.transsion.player.orplayer.f fVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f51487a = fragment;
        this.f51488b = baseProviderMultiAdapter;
        this.f51489c = fVar;
        this.f51490d = oRPlayerView;
        this.f51491e = pagerLayoutManager;
        this.f51492f = true;
        this.f51495i = true;
        this.f51499m = new Handler(Looper.getMainLooper());
        fragment.getLifecycle().a(this);
    }

    private final void i() {
        t6.f fVarH0;
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f51488b;
        if (((baseProviderMultiAdapter == null || (fVarH0 = baseProviderMultiAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && yg.l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, "ShortTvControl", "current is fail, try load more", false, 4, null);
            this.f51488b.h0().w();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void q(int i10, View view) {
        this.f51497k = view;
        boolean z10 = view instanceof ShortTvVideoItemView;
        ShortTvVideoItemView shortTvVideoItemView = z10 ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.setCountdownController(this);
        }
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvControl", "on page select position = " + i10, false, 4, null);
        if (i10 < 0) {
            return;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f51488b;
        nr.k kVar = baseProviderMultiAdapter != null ? (nr.k) baseProviderMultiAdapter.f0(i10) : null;
        this.f51493g = i10;
        if (!(kVar instanceof nr.e)) {
            com.transsion.player.orplayer.f fVar = this.f51489c;
            if (fVar != null) {
                fVar.pause();
                return;
            }
            return;
        }
        if (view instanceof d) {
            ShortTvVideoItemView shortTvVideoItemView2 = z10 ? (ShortTvVideoItemView) view : null;
            if (shortTvVideoItemView2 != null) {
                shortTvVideoItemView2.setFirstPlayInSession(this.f51492f);
            }
            this.f51492f = false;
            ((d) view).onPageSelected(this.f51489c, this.f51490d, (nr.e) kVar);
        }
    }

    @Override
    public void a(int i10) {
        b();
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i10;
        View view = this.f51497k;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.updateUnlockCountdownText$shortTvLib_release(Integer.valueOf(i10));
        }
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                intRef.element--;
                View view2 = this.f51497k;
                ShortTvVideoItemView shortTvVideoItemView2 = view2 instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view2 : null;
                int i11 = intRef.element;
                if (i11 > 0) {
                    if (shortTvVideoItemView2 != null) {
                        shortTvVideoItemView2.updateUnlockCountdownText$shortTvLib_release(Integer.valueOf(i11));
                    }
                    this.f51499m.postDelayed(this, 1000L);
                } else {
                    this.b();
                    if (shortTvVideoItemView2 != null) {
                        shortTvVideoItemView2.watchAdToUnlock$shortTvLib_release(true);
                    }
                }
            }
        };
        this.f51500n = runnable;
        Handler handler = this.f51499m;
        Intrinsics.e(runnable);
        handler.postDelayed(runnable, 1000L);
    }

    @Override
    public void b() {
        View view = this.f51497k;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.updateUnlockCountdownText$shortTvLib_release(null);
        }
        Runnable runnable = this.f51500n;
        if (runnable != null) {
            this.f51499m.removeCallbacks(runnable);
        }
        this.f51500n = null;
    }

    @Override
    public void c(int i10, boolean z10, View view) {
        wf.a.C0922a.r(wf.a.f74274a, "ShortTvControl", new String[]{"onEachPageSelected, position = " + i10}, false, 4, null);
    }

    @Override
    public void d(View view) {
        if (this.f51498l) {
            this.f51498l = false;
            return;
        }
        PagerLayoutManager pagerLayoutManager = this.f51491e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            wf.a.C0922a.v(wf.a.f74274a, "ShortTvControl", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f51493g, false, 4, null);
            if (this.f51493g == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f51493g = iFindFirstVisibleItemPosition;
            }
            q(this.f51493g, view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void e(boolean z10, int i10, View view) {
        RecyclerView recyclerView;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.v(c0922a, "ShortTvControl", "onPageRelease, position = " + i10 + ", ----- currentPosition = " + this.f51493g, false, 4, null);
        if (i10 == this.f51493g) {
            BaseProviderMultiAdapter baseProviderMultiAdapter = this.f51488b;
            if (baseProviderMultiAdapter != null && (recyclerView = baseProviderMultiAdapter.getRecyclerView()) != null && recyclerView.getScrollState() == 1) {
                wf.a.C0922a.v(c0922a, "ShortTvControl", "onPageRelease, 连续滑动，暂停", false, 4, null);
                com.transsion.player.orplayer.f fVar = this.f51489c;
                if (fVar != null) {
                    fVar.pause();
                }
            }
            if (view instanceof d) {
                ((d) view).onPageRelease(i10);
            }
        }
    }

    @Override
    public void f(int i10, boolean z10, View view) {
        i();
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvControl", "onPageSelected, position = " + i10 + ", ----- currentPosition = " + this.f51493g, false, 4, null);
        if (this.f51493g != i10 || this.f51496j) {
            b();
            this.f51496j = false;
            Integer numValueOf = Integer.valueOf(this.f51493g);
            this.f51494h = numValueOf;
            if (numValueOf.intValue() < 0) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                BaseProviderMultiAdapter baseProviderMultiAdapter = this.f51488b;
                nr.k kVar = baseProviderMultiAdapter != null ? (nr.k) baseProviderMultiAdapter.getItem(iIntValue) : null;
                if (kVar != null) {
                    nr.e eVar = kVar instanceof nr.e ? (nr.e) kVar : null;
                    if (eVar != null) {
                        ShortTvPlayerOverlayAdManager.f50707a.e(eVar.a());
                    }
                }
            }
            this.f51493g = i10;
            q(i10, view);
        }
    }

    public final View j() {
        return this.f51497k;
    }

    public final int k() {
        return this.f51493g;
    }

    public final long l() {
        KeyEvent.Callback callback = this.f51497k;
        d dVar = callback instanceof d ? (d) callback : null;
        if (dVar != null) {
            return dVar.getProgress();
        }
        return 0L;
    }

    public final void m() {
        KeyEvent.Callback callback = this.f51497k;
        d dVar = callback instanceof d ? (d) callback : null;
        if (dVar != null) {
            dVar.onAudioTrackChange();
        }
    }

    public final void n() {
        KeyEvent.Callback callback = this.f51497k;
        d dVar = callback instanceof d ? (d) callback : null;
        if (dVar != null) {
            dVar.onGetDubsInfo();
        }
    }

    public final void o() {
        if (this.f51495i) {
            this.f51495i = false;
        }
    }

    @Override
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (b.f51501a[event.ordinal()] != 3) {
            return;
        }
        b();
        this.f51497k = null;
        this.f51487a.getLifecycle().d(this);
    }

    public final void p() {
        View view = this.f51497k;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.onNetConnect();
        }
    }

    public final void r(boolean z10) {
        this.f51498l = z10;
    }

    public final void s(int i10) {
        this.f51493g = i10;
    }

    public final void t(ShortTvVideoItemView view, int i10, nr.e item) {
        Intrinsics.h(view, "view");
        Intrinsics.h(item, "item");
        view.updateShortTvInfo(this.f51489c, this.f51490d, item);
    }
}

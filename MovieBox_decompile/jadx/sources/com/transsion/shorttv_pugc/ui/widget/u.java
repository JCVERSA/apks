package com.transsion.shorttv_pugc.ui.widget;

import android.view.KeyEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.pager.PagerLayoutManager;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class u extends ks.a implements androidx.p009lifecycle.r {

    public static final a f52406l = new a(null);

    private final Fragment f52407a;

    private final BaseProviderMultiAdapter f52408b;

    private final com.transsion.player.orplayer.f f52409c;

    private final ORPlayerView f52410d;

    private PagerLayoutManager f52411e;

    private int f52412f;

    private int f52413g;

    private boolean f52414h;

    private View f52415i;

    private boolean f52416j;

    private boolean f52417k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f52418a;

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
            f52418a = iArr;
        }
    }

    public u(Fragment fragment, BaseProviderMultiAdapter baseProviderMultiAdapter, com.transsion.player.orplayer.f fVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f52407a = fragment;
        this.f52408b = baseProviderMultiAdapter;
        this.f52409c = fVar;
        this.f52410d = oRPlayerView;
        this.f52411e = pagerLayoutManager;
        this.f52414h = true;
        fragment.getLifecycle().a(this);
    }

    private final void e() {
        t6.f fVarH0;
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f52408b;
        if (((baseProviderMultiAdapter == null || (fVarH0 = baseProviderMultiAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && yg.l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, "ShortTvControl", "current is fail, try load more", false, 4, null);
            this.f52408b.h0().w();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void j(int i10, View view) {
        List<Object> data;
        this.f52415i = view;
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvControl", "ep = " + i10, false, 4, null);
        if (i10 < 0) {
            return;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f52408b;
        ShorttvModel.UGCVideo uGCVideo = null;
        Object obj = null;
        uGCVideo = null;
        if (baseProviderMultiAdapter != null && (data = baseProviderMultiAdapter.getData()) != null) {
            for (Object obj2 : data) {
                if (((ShorttvModel.UGCVideo) obj2).getEp() == ShortTvExtKt.l(i10)) {
                    obj = obj2;
                    break;
                }
            }
            uGCVideo = (ShorttvModel.UGCVideo) obj;
        }
        this.f52412f = i10;
        if (view instanceof com.transsion.shorttv_pugc.ui.widget.a) {
            ((com.transsion.shorttv_pugc.ui.widget.a) view).onPageSelected(this.f52409c, this.f52410d, uGCVideo);
        }
    }

    @Override
    public void a(int i10, boolean z10, View view) {
        wf.a.C0922a.r(wf.a.f74274a, "ShortTvControl", new String[]{"onEachPageSelected, position = " + i10}, false, 4, null);
    }

    @Override
    public void b(View view) {
        if (this.f52416j) {
            this.f52416j = false;
            return;
        }
        PagerLayoutManager pagerLayoutManager = this.f52411e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            wf.a.C0922a.v(wf.a.f74274a, "ShortTvControl", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f52412f, false, 4, null);
            if (this.f52412f == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f52412f = iFindFirstVisibleItemPosition;
            }
            j(this.f52412f, view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void c(boolean z10, int i10, View view) {
        RecyclerView recyclerView;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.v(c0922a, "ShortTvControl", "onPageRelease, position = " + i10 + ", ----- currentPosition = " + this.f52412f, false, 4, null);
        if (i10 == this.f52412f) {
            BaseProviderMultiAdapter baseProviderMultiAdapter = this.f52408b;
            if (baseProviderMultiAdapter != null && (recyclerView = baseProviderMultiAdapter.getRecyclerView()) != null && recyclerView.getScrollState() == 1) {
                wf.a.C0922a.v(c0922a, "ShortTvControl", "onPageRelease, 连续滑动，暂停", false, 4, null);
                com.transsion.player.orplayer.f fVar = this.f52409c;
                if (fVar != null) {
                    fVar.pause();
                }
            }
            if (view instanceof com.transsion.shorttv_pugc.ui.widget.a) {
                ((com.transsion.shorttv_pugc.ui.widget.a) view).onPageRelease(i10);
            }
        }
    }

    @Override
    public void d(int i10, boolean z10, View view) {
        e();
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvControl", "onPageSelected, position = " + i10 + ", ----- currentPosition = " + this.f52412f, false, 4, null);
        int i11 = this.f52412f;
        if (i11 == i10 && this.f52417k) {
            return;
        }
        this.f52417k = true;
        this.f52413g = i11;
        this.f52412f = i10;
        j(i10, view);
    }

    public final View f() {
        return this.f52415i;
    }

    public final int g() {
        return this.f52412f;
    }

    public final long h() {
        KeyEvent.Callback callback = this.f52415i;
        com.transsion.shorttv_pugc.ui.widget.a aVar = callback instanceof com.transsion.shorttv_pugc.ui.widget.a ? (com.transsion.shorttv_pugc.ui.widget.a) callback : null;
        if (aVar != null) {
            return aVar.getProgress();
        }
        return 0L;
    }

    public final void i() {
        View view = this.f52415i;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.onNetConnect();
        }
    }

    public final void k(boolean z10) {
        this.f52416j = z10;
    }

    @Override
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (b.f52418a[event.ordinal()] != 3) {
            return;
        }
        this.f52415i = null;
        this.f52407a.getLifecycle().d(this);
    }
}

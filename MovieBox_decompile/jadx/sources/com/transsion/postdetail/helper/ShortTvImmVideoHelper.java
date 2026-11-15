package com.transsion.postdetail.helper;

import android.content.Context;
import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.a0;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.postdetail.R$layout;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class ShortTvImmVideoHelper {

    public static final a f46849k = new a(null);

    private static final Lazy f46850l = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvImmVideoHelper.r();
        }
    });

    private int f46852b;

    private boolean f46855e;

    private boolean f46856f;

    private List f46859i;

    private boolean f46860j;

    private final List f46851a = new ArrayList();

    private final Map f46853c = new LinkedHashMap();

    private final Lazy f46854d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvImmVideoHelper.B();
        }
    });

    private List f46857g = new ArrayList();

    private List f46858h = new ArrayList();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvImmVideoHelper a() {
            return (ShortTvImmVideoHelper) ShortTvImmVideoHelper.f46850l.getValue();
        }

        private a() {
        }
    }

    public ShortTvImmVideoHelper() {
        this.f46855e = true;
        this.f46856f = true;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        this.f46855e = bVar.b().getBoolean("k_imm_video_guide", true);
        this.f46856f = bVar.b().getBoolean("k_short_tv_guide", true);
    }

    public static final b0 B() {
        return new b0();
    }

    public static final void q(FragmentActivity fragmentActivity, ShortTvImmVideoHelper shortTvImmVideoHelper) {
        View decorView;
        WindowInsets rootWindowInsets;
        if (fragmentActivity.isFinishing()) {
            return;
        }
        Window window = fragmentActivity.getWindow();
        Insets mandatorySystemGestureInsets = (window == null || (decorView = window.getDecorView()) == null || (rootWindowInsets = decorView.getRootWindowInsets()) == null) ? null : rootWindowInsets.getMandatorySystemGestureInsets();
        if (mandatorySystemGestureInsets == null || mandatorySystemGestureInsets.bottom > a0.a(40.0f)) {
            wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "is open navigation bar 2", false, 4, null);
            return;
        }
        int i10 = mandatorySystemGestureInsets.bottom;
        shortTvImmVideoHelper.f46852b = i10;
        wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "on get navigation gesture height = " + i10, false, 4, null);
    }

    public static final ShortTvImmVideoHelper r() {
        return new ShortTvImmVideoHelper();
    }

    public final void u(Video video) {
        String url;
        if (video == null || (url = video.getUrl()) == null) {
            return;
        }
        ORPlayerPreloadManager.f46433i.a().j(url, 3000L);
    }

    public static final void w(ShortTvImmVideoHelper shortTvImmVideoHelper, View view, int i10, ViewGroup viewGroup) {
        Intrinsics.h(view, "view");
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvImmVideoPlayer", "for you preloadItemViews completion, " + view, false, 4, null);
        if (shortTvImmVideoHelper.f46860j) {
            return;
        }
        shortTvImmVideoHelper.f46857g.add(view);
    }

    public static final void x(ShortTvImmVideoHelper shortTvImmVideoHelper, View view, int i10, ViewGroup viewGroup) {
        Intrinsics.h(view, "view");
        wf.a.C0922a.f(wf.a.f74274a, "ShortTvImmVideoPlayer", "detail preloadItemViews completion, " + view, false, 4, null);
        if (shortTvImmVideoHelper.f46860j) {
            return;
        }
        shortTvImmVideoHelper.f46858h.add(view);
    }

    public final void A() {
        wf.a.C0922a.v(wf.a.f74274a, "ImmVideoPlayer", "-- setVideoGuideShown", false, 4, null);
        this.f46855e = false;
        com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("k_imm_video_guide", false);
    }

    public final void j() {
        this.f46851a.clear();
    }

    public final List k() {
        return this.f46851a;
    }

    public final List l() {
        return this.f46857g;
    }

    public final int m() {
        return this.f46852b;
    }

    public final b0 n() {
        return (b0) this.f46854d.getValue();
    }

    public final Map o() {
        return this.f46853c;
    }

    public final void p(final FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            this.f46852b = 0;
            return;
        }
        if (com.blankj.utilcode.util.d.a() > 50) {
            wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "is open navigation bar", false, 4, null);
            this.f46852b = 0;
            return;
        }
        Window window = activity.getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.post(new Runnable() {
                @Override
                public final void run() {
                    ShortTvImmVideoHelper.q(activity, this);
                }
            });
        }
    }

    public final boolean s() {
        return this.f46855e;
    }

    public final void t() {
        List list = (List) n().f();
        if ((list != null ? list.size() : 0) > 0) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new ShortTvImmVideoHelper$loadCache$1(this, null), 3, null);
    }

    public final void v(Context context) {
        Intrinsics.h(context, "context");
        this.f46860j = false;
        for (int i10 = 0; i10 < 2; i10++) {
            new AsyncLayoutInflater(context).a(R$layout.item_short_tv_immersion_video, null, new AsyncLayoutInflater.d() {
                @Override
                public final void a(View view, int i11, ViewGroup viewGroup) {
                    ShortTvImmVideoHelper.w(this.f46866a, view, i11, viewGroup);
                }
            });
        }
        for (int i11 = 0; i11 < 2; i11++) {
            new AsyncLayoutInflater(context).a(com.transsion.shorttv.R$layout.short_tv_item_video, null, new AsyncLayoutInflater.d() {
                @Override
                public final void a(View view, int i12, ViewGroup viewGroup) {
                    ShortTvImmVideoHelper.x(this.f46867a, view, i12, viewGroup);
                }
            });
        }
    }

    public final void y() {
        this.f46860j = true;
        this.f46857g.clear();
        this.f46858h.clear();
    }

    public final void z(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty() || Intrinsics.c(list, n().f())) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new ShortTvImmVideoHelper$saveCache$1(list, this, null), 3, null);
    }
}

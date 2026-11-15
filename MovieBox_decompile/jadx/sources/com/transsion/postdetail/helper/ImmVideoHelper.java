package com.transsion.postdetail.helper;

import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.a0;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
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

public final class ImmVideoHelper {

    public static final a f46840h = new a(null);

    private static final Lazy f46841i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ImmVideoHelper.m();
        }
    });

    private int f46843b;

    private boolean f46846e;

    private boolean f46847f;

    private boolean f46848g;

    private final List f46842a = new ArrayList();

    private final Map f46844c = new LinkedHashMap();

    private final Lazy f46845d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ImmVideoHelper.v();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ImmVideoHelper a() {
            return (ImmVideoHelper) ImmVideoHelper.f46841i.getValue();
        }

        private a() {
        }
    }

    public ImmVideoHelper() {
        this.f46846e = true;
        this.f46847f = true;
        this.f46848g = true;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        this.f46846e = bVar.b().getBoolean("k_imm_video_guide", true);
        this.f46848g = bVar.b().getBoolean("k_short_tv_guide", true);
        this.f46847f = bVar.b().getBoolean("k_imm_video_guide_from_trending", true);
    }

    public static final void l(FragmentActivity fragmentActivity, ImmVideoHelper immVideoHelper) {
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
        immVideoHelper.f46843b = i10;
        wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "on get navigation gesture height = " + i10, false, 4, null);
    }

    public static final ImmVideoHelper m() {
        return new ImmVideoHelper();
    }

    public final void q(List list) {
        String url;
        if (list == null || !(!list.isEmpty()) || (url = ((Video) list.get(0)).getUrl()) == null) {
            return;
        }
        ORPlayerPreloadManager.f46433i.a().j(url, 3000L);
    }

    public static final b0 v() {
        return new b0();
    }

    public final void f() {
        this.f46842a.clear();
    }

    public final List g() {
        return this.f46842a;
    }

    public final int h() {
        return this.f46843b;
    }

    public final b0 i() {
        return (b0) this.f46845d.getValue();
    }

    public final Map j() {
        return this.f46844c;
    }

    public final void k(final FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            this.f46843b = 0;
            return;
        }
        if (com.blankj.utilcode.util.d.a() > 50) {
            wf.a.C0922a.f(wf.a.f74274a, "ImmVideoHelper", "is open navigation bar", false, 4, null);
            this.f46843b = 0;
            return;
        }
        Window window = activity.getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.post(new Runnable() {
                @Override
                public final void run() {
                    ImmVideoHelper.l(activity, this);
                }
            });
        }
    }

    public final boolean n() {
        return this.f46846e;
    }

    public final boolean o() {
        return this.f46847f;
    }

    public final void p() {
        k.d(o0.a(y0.b()), null, null, new ImmVideoHelper$loadCache$1(this, null), 3, null);
    }

    public final void r(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new ImmVideoHelper$saveCache$1(list, this, null), 3, null);
    }

    public final void s(PostSubjectItem data) {
        List<Video> video;
        Intrinsics.h(data, "data");
        Media media = data.getMedia();
        if (media == null || (video = media.getVideo()) == null || !(!video.isEmpty())) {
            return;
        }
        f();
        this.f46842a.add(PostSubjectItem.INSTANCE.a(data));
    }

    public final void t() {
        wf.a.C0922a.v(wf.a.f74274a, "ImmVideoPlayer", "-- setVideoGuideShown", false, 4, null);
        this.f46846e = false;
        com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("k_imm_video_guide", false);
    }

    public final void u() {
        wf.a.C0922a.v(wf.a.f74274a, "ImmVideoPlayer", "-- setVideoGuideShownFromTrending", false, 4, null);
        this.f46847f = false;
        com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("k_imm_video_guide_from_trending", false);
    }
}

package com.transsion.shorttv.ui.widget;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final a f51554f = new a(null);

    private final View f51555a;

    private final b f51556b;

    private final Handler f51557c;

    private final Runnable f51558d;

    private final Runnable f51559e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {
        ur.d a();

        String b();

        boolean c();

        void d();
    }

    public c(View bubbleView, b conditionProvider) {
        Intrinsics.h(bubbleView, "bubbleView");
        Intrinsics.h(conditionProvider, "conditionProvider");
        this.f51555a = bubbleView;
        this.f51556b = conditionProvider;
        this.f51557c = new Handler(Looper.getMainLooper());
        this.f51558d = new Runnable() {
            @Override
            public final void run() {
                c.k(this.f51550a);
            }
        };
        this.f51559e = new Runnable() {
            @Override
            public final void run() {
                c.g(this.f51552a);
            }
        };
    }

    private final long e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        } catch (Exception e10) {
            wf.a.C0922a.l(wf.a.f74274a, "DownloadGuideBubble", "getAvailableStorageBytes error: " + e10.getMessage(), false, 4, null);
            return 0L;
        }
    }

    public static final void g(c cVar) {
        cVar.f();
    }

    private final void j() {
        this.f51556b.d();
        wf.a.C0922a.f(wf.a.f74274a, "DownloadGuideBubble", "showBubble: UI restored, showing bubble", false, 4, null);
        cr.b.e(this.f51555a);
        this.f51557c.removeCallbacks(this.f51559e);
        this.f51557c.postDelayed(this.f51559e, 6000L);
    }

    public static final void k(c cVar) {
        cVar.l();
    }

    private final void l() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "DownloadGuideBubble", "tryShowBubble: checking conditions...", false, 4, null);
        if (!this.f51556b.c()) {
            wf.a.C0922a.f(c0922a, "DownloadGuideBubble", "tryShowBubble: SKIP - not buffering", false, 4, null);
            return;
        }
        com.transsion.shorttv.utils.h hVar = com.transsion.shorttv.utils.h.f51644a;
        if (!hVar.c()) {
            wf.a.C0922a.f(c0922a, "DownloadGuideBubble", "tryShowBubble: SKIP - fatigue control (shown within 3 days)", false, 4, null);
            return;
        }
        long jE = e();
        if (jE < 524288000) {
            long j10 = 1024;
            wf.a.C0922a.f(c0922a, "DownloadGuideBubble", "tryShowBubble: SKIP - storage insufficient (" + ((jE / j10) / j10) + "MB < 500MB)", false, 4, null);
            return;
        }
        String strB = this.f51556b.b();
        ur.d dVarA = this.f51556b.a();
        if ((dVarA != null ? dVarA.f(strB) : null) == null) {
            wf.a.C0922a.f(c0922a, "DownloadGuideBubble", "tryShowBubble: ALL conditions met, showing bubble!", false, 4, null);
            hVar.f();
            j();
        } else {
            wf.a.C0922a.f(c0922a, "DownloadGuideBubble", "tryShowBubble: SKIP - video already in download list (resourceId=" + strB + ")", false, 4, null);
        }
    }

    public final void c() {
        this.f51557c.removeCallbacksAndMessages(null);
        wf.a.C0922a.f(wf.a.f74274a, "DownloadGuideBubble", "destroy: all callbacks cleared", false, 4, null);
    }

    public final void d() {
        this.f51557c.removeCallbacks(this.f51558d);
        f();
        wf.a.C0922a.f(wf.a.f74274a, "DownloadGuideBubble", "dismiss: timer cancelled + bubble hidden", false, 4, null);
    }

    public final void f() {
        this.f51557c.removeCallbacks(this.f51559e);
        if (this.f51555a.getVisibility() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, "DownloadGuideBubble", "hide: bubble hidden", false, 4, null);
        }
        cr.b.b(this.f51555a);
    }

    public final void h() {
        this.f51557c.removeCallbacks(this.f51558d);
        wf.a.C0922a.f(wf.a.f74274a, "DownloadGuideBubble", "onBufferingEnd: timer cancelled", false, 4, null);
    }

    public final void i() {
        this.f51557c.removeCallbacks(this.f51558d);
        this.f51557c.postDelayed(this.f51558d, 5000L);
        wf.a.C0922a.f(wf.a.f74274a, "DownloadGuideBubble", "onBufferingStart: timer started (5000ms)", false, 4, null);
    }
}

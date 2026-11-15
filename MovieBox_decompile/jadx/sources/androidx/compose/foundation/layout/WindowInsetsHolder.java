package androidx.compose.foundation.layout;

import android.view.View;
import android.view.WindowInsets;
import androidx.compose.ui.R$id;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class WindowInsetsHolder {
    private static boolean A;

    public static final Companion f2484x = new Companion(null);

    public static final int f2485y = 8;

    private static final WeakHashMap f2486z = new WeakHashMap();

    private final a f2487a;

    private final a f2488b;

    private final a f2489c;

    private final a f2490d;

    private final a f2491e;

    private final a f2492f;

    private final a f2493g;

    private final a f2494h;

    private final a f2495i;

    private final g0 f2496j;

    private final h0 f2497k;

    private final h0 f2498l;

    private final h0 f2499m;

    private final g0 f2500n;

    private final g0 f2501o;

    private final g0 f2502p;

    private final g0 f2503q;

    private final g0 f2504r;

    private final g0 f2505s;

    private final g0 f2506t;

    private final boolean f2507u;

    private int f2508v;

    private final InsetsListener f2509w;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final WindowInsetsHolder d(View view) {
            WindowInsetsHolder windowInsetsHolder;
            synchronized (WindowInsetsHolder.f2486z) {
                try {
                    WeakHashMap weakHashMap = WindowInsetsHolder.f2486z;
                    Object obj = weakHashMap.get(view);
                    Object obj2 = obj;
                    if (obj == null) {
                        WindowInsetsHolder windowInsetsHolder2 = new WindowInsetsHolder(null, view, false ? 1 : 0);
                        weakHashMap.put(view, windowInsetsHolder2);
                        obj2 = windowInsetsHolder2;
                    }
                    windowInsetsHolder = (WindowInsetsHolder) obj2;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return windowInsetsHolder;
        }

        public final a e(WindowInsetsCompat windowInsetsCompat, int i10, String str) {
            a aVar = new a(i10, str);
            if (windowInsetsCompat != null) {
                aVar.h(windowInsetsCompat, i10);
            }
            return aVar;
        }

        public final g0 f(WindowInsetsCompat windowInsetsCompat, int i10, String str) {
            z0.c insetsIgnoringVisibility;
            if (windowInsetsCompat == null || (insetsIgnoringVisibility = windowInsetsCompat.getInsetsIgnoringVisibility(i10)) == null) {
                insetsIgnoringVisibility = z0.c.f76464e;
            }
            return j0.a(insetsIgnoringVisibility, str);
        }

        public final WindowInsetsHolder c(androidx.compose.runtime.i iVar, int i10) {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1366542614, i10, -1, "androidx.compose.foundation.layout.WindowInsetsHolder.Companion.current (WindowInsets.android.kt:626)");
            }
            final View view = (View) iVar.l(AndroidCompositionLocals_androidKt.j());
            final WindowInsetsHolder windowInsetsHolderD = d(view);
            boolean zA = iVar.A(windowInsetsHolderD) | iVar.A(view);
            Object objY = iVar.y();
            if (zA || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                    public static final class a implements androidx.compose.runtime.c0 {

                        final WindowInsetsHolder f2510a;

                        final View f2511b;

                        public a(WindowInsetsHolder windowInsetsHolder, View view) {
                            this.f2510a = windowInsetsHolder;
                            this.f2511b = view;
                        }

                        @Override
                        public void dispose() {
                            this.f2510a.b(this.f2511b);
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                        windowInsetsHolderD.p(view);
                        return new a(windowInsetsHolderD, view);
                    }
                };
                iVar.p(objY);
            }
            androidx.compose.runtime.g0.a(windowInsetsHolderD, (Function1) objY, iVar, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            return windowInsetsHolderD;
        }

        private Companion() {
        }
    }

    public WindowInsetsHolder(WindowInsetsCompat windowInsetsCompat, View view, DefaultConstructorMarker defaultConstructorMarker) {
        this(windowInsetsCompat, view);
    }

    public static void r(WindowInsetsHolder windowInsetsHolder, WindowInsetsCompat windowInsetsCompat, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        windowInsetsHolder.q(windowInsetsCompat, i10);
    }

    public final void b(View view) {
        int i10 = this.f2508v - 1;
        this.f2508v = i10;
        if (i10 == 0) {
            ViewCompat.setOnApplyWindowInsetsListener(view, null);
            ViewCompat.setWindowInsetsAnimationCallback(view, null);
            view.removeOnAttachStateChangeListener(this.f2509w);
        }
    }

    public final a c() {
        return this.f2487a;
    }

    public final boolean d() {
        return this.f2507u;
    }

    public final a e() {
        return this.f2488b;
    }

    public final a f() {
        return this.f2489c;
    }

    public final a g() {
        return this.f2490d;
    }

    public final a h() {
        return this.f2491e;
    }

    public final h0 i() {
        return this.f2499m;
    }

    public final h0 j() {
        return this.f2497k;
    }

    public final h0 k() {
        return this.f2498l;
    }

    public final a l() {
        return this.f2492f;
    }

    public final a m() {
        return this.f2493g;
    }

    public final a n() {
        return this.f2494h;
    }

    public final g0 o() {
        return this.f2496j;
    }

    public final void p(View view) {
        if (this.f2508v == 0) {
            ViewCompat.setOnApplyWindowInsetsListener(view, this.f2509w);
            if (view.isAttachedToWindow()) {
                view.requestApplyInsets();
            }
            view.addOnAttachStateChangeListener(this.f2509w);
            ViewCompat.setWindowInsetsAnimationCallback(view, this.f2509w);
        }
        this.f2508v++;
    }

    public final void q(WindowInsetsCompat windowInsetsCompat, int i10) {
        if (A) {
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            Intrinsics.e(windowInsets);
            windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets);
        }
        this.f2487a.h(windowInsetsCompat, i10);
        this.f2489c.h(windowInsetsCompat, i10);
        this.f2488b.h(windowInsetsCompat, i10);
        this.f2491e.h(windowInsetsCompat, i10);
        this.f2492f.h(windowInsetsCompat, i10);
        this.f2493g.h(windowInsetsCompat, i10);
        this.f2494h.h(windowInsetsCompat, i10);
        this.f2495i.h(windowInsetsCompat, i10);
        this.f2490d.h(windowInsetsCompat, i10);
        if (i10 == 0) {
            this.f2500n.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.captionBar())));
            this.f2501o.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.navigationBars())));
            this.f2502p.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.statusBars())));
            this.f2503q.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.systemBars())));
            this.f2504r.f(j0.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.tappableElement())));
            DisplayCutoutCompat displayCutout = windowInsetsCompat.getDisplayCutout();
            if (displayCutout != null) {
                this.f2496j.f(j0.b(displayCutout.getWaterfallInsets()));
            }
        }
        androidx.compose.runtime.snapshots.j.f3695e.n();
    }

    public final void s(WindowInsetsCompat windowInsetsCompat) {
        this.f2506t.f(j0.b(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime())));
    }

    public final void t(WindowInsetsCompat windowInsetsCompat) {
        this.f2505s.f(j0.b(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime())));
    }

    private WindowInsetsHolder(WindowInsetsCompat windowInsetsCompat, View view) {
        DisplayCutoutCompat displayCutout;
        z0.c waterfallInsets;
        Companion companion = f2484x;
        this.f2487a = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.captionBar(), "captionBar");
        a aVarE = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.displayCutout(), "displayCutout");
        this.f2488b = aVarE;
        a aVarE2 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.ime(), "ime");
        this.f2489c = aVarE2;
        a aVarE3 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.mandatorySystemGestures(), "mandatorySystemGestures");
        this.f2490d = aVarE3;
        this.f2491e = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.navigationBars(), "navigationBars");
        this.f2492f = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.statusBars(), "statusBars");
        a aVarE4 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.systemBars(), "systemBars");
        this.f2493g = aVarE4;
        a aVarE5 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.systemGestures(), "systemGestures");
        this.f2494h = aVarE5;
        a aVarE6 = companion.e(windowInsetsCompat, WindowInsetsCompat.Type.tappableElement(), "tappableElement");
        this.f2495i = aVarE6;
        g0 g0VarA = j0.a((windowInsetsCompat == null || (displayCutout = windowInsetsCompat.getDisplayCutout()) == null || (waterfallInsets = displayCutout.getWaterfallInsets()) == null) ? z0.c.f76464e : waterfallInsets, "waterfall");
        this.f2496j = g0VarA;
        h0 h0VarC = i0.c(i0.c(aVarE4, aVarE2), aVarE);
        this.f2497k = h0VarC;
        h0 h0VarC2 = i0.c(i0.c(i0.c(aVarE6, aVarE3), aVarE5), g0VarA);
        this.f2498l = h0VarC2;
        this.f2499m = i0.c(h0VarC, h0VarC2);
        this.f2500n = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.captionBar(), "captionBarIgnoringVisibility");
        this.f2501o = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.navigationBars(), "navigationBarsIgnoringVisibility");
        this.f2502p = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.statusBars(), "statusBarsIgnoringVisibility");
        this.f2503q = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.systemBars(), "systemBarsIgnoringVisibility");
        this.f2504r = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.tappableElement(), "tappableElementIgnoringVisibility");
        this.f2505s = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.ime(), "imeAnimationTarget");
        this.f2506t = companion.f(windowInsetsCompat, WindowInsetsCompat.Type.ime(), "imeAnimationSource");
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        Object tag = view2 != null ? view2.getTag(R$id.consume_window_insets_tag) : null;
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        this.f2507u = bool != null ? bool.booleanValue() : true;
        this.f2509w = new InsetsListener(this);
    }
}

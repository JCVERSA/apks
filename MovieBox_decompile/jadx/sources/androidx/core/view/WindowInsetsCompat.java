package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

public class WindowInsetsCompat {
    public static final WindowInsetsCompat CONSUMED;
    private static final String TAG = "WindowInsetsCompat";
    private final l mImpl;

    public static final class Side {
        public static final int BOTTOM = 8;
        public static final int LEFT = 1;
        public static final int RIGHT = 4;
        public static final int TOP = 2;

        @Retention(RetentionPolicy.SOURCE)
        public @interface InsetsSide {
        }

        private Side() {
        }

        public static int all() {
            return 15;
        }
    }

    public static final class Type {
        static final int CAPTION_BAR = 4;
        static final int DISPLAY_CUTOUT = 128;
        static final int FIRST = 1;
        static final int IME = 8;
        static final int LAST = 512;
        static final int MANDATORY_SYSTEM_GESTURES = 32;
        static final int NAVIGATION_BARS = 2;
        static final int SIZE = 10;
        static final int STATUS_BARS = 1;
        static final int SYSTEM_GESTURES = 16;
        static final int SYSTEM_OVERLAYS = 512;
        static final int TAPPABLE_ELEMENT = 64;
        static final int WINDOW_DECOR = 256;

        @Retention(RetentionPolicy.SOURCE)
        public @interface InsetsType {
        }

        private Type() {
        }

        @SuppressLint({"WrongConstant"})
        static int all() {
            return -1;
        }

        public static int captionBar() {
            return 4;
        }

        public static int displayCutout() {
            return 128;
        }

        public static int ime() {
            return 8;
        }

        static int indexOf(int i10) {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 2) {
                return 1;
            }
            if (i10 == 4) {
                return 2;
            }
            if (i10 == 8) {
                return 3;
            }
            if (i10 == 16) {
                return 4;
            }
            if (i10 == 32) {
                return 5;
            }
            if (i10 == 64) {
                return 6;
            }
            if (i10 == 128) {
                return 7;
            }
            if (i10 == 256) {
                return 8;
            }
            if (i10 == 512) {
                return 9;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i10);
        }

        public static int mandatorySystemGestures() {
            return 32;
        }

        public static int navigationBars() {
            return 2;
        }

        public static int statusBars() {
            return 1;
        }

        public static int systemBars() {
            return 519;
        }

        public static int systemGestures() {
            return 16;
        }

        public static int systemOverlays() {
            return 512;
        }

        public static int tappableElement() {
            return 64;
        }
    }

    private static class c extends b {
        c() {
        }

        @Override
        void d(int i10, z0.c cVar) {
            this.f8036c.setInsets(m.a(i10), cVar.g());
        }

        @Override
        void e(int i10, z0.c cVar) {
            this.f8036c.setInsetsIgnoringVisibility(m.a(i10), cVar.g());
        }

        @Override
        void k(int i10, boolean z10) {
            this.f8036c.setVisible(m.a(i10), z10);
        }

        c(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    private static class d extends c {
        d() {
        }

        @Override
        void d(int i10, z0.c cVar) {
            this.f8036c.setInsets(n.a(i10), cVar.g());
        }

        @Override
        void e(int i10, z0.c cVar) {
            this.f8036c.setInsetsIgnoringVisibility(n.a(i10), cVar.g());
        }

        @Override
        void k(int i10, boolean z10) {
            this.f8036c.setVisible(n.a(i10), z10);
        }

        d(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    private static class e {

        private final WindowInsetsCompat f8037a;

        z0.c[] f8038b;

        e() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }

        protected final void a() {
            z0.c[] cVarArr = this.f8038b;
            if (cVarArr != null) {
                z0.c insets = cVarArr[Type.indexOf(1)];
                z0.c insets2 = this.f8038b[Type.indexOf(2)];
                if (insets2 == null) {
                    insets2 = this.f8037a.getInsets(2);
                }
                if (insets == null) {
                    insets = this.f8037a.getInsets(1);
                }
                i(z0.c.a(insets, insets2));
                z0.c cVar = this.f8038b[Type.indexOf(16)];
                if (cVar != null) {
                    h(cVar);
                }
                z0.c cVar2 = this.f8038b[Type.indexOf(32)];
                if (cVar2 != null) {
                    f(cVar2);
                }
                z0.c cVar3 = this.f8038b[Type.indexOf(64)];
                if (cVar3 != null) {
                    j(cVar3);
                }
            }
        }

        abstract WindowInsetsCompat b();

        void d(int i10, z0.c cVar) {
            if (this.f8038b == null) {
                this.f8038b = new z0.c[10];
            }
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    this.f8038b[Type.indexOf(i11)] = cVar;
                }
            }
        }

        void e(int i10, z0.c cVar) {
            if (i10 == 8) {
                throw new IllegalArgumentException("Ignoring visibility inset not available for IME");
            }
        }

        abstract void g(z0.c cVar);

        abstract void i(z0.c cVar);

        e(WindowInsetsCompat windowInsetsCompat) {
            this.f8037a = windowInsetsCompat;
        }

        void c(DisplayCutoutCompat displayCutoutCompat) {
        }

        void f(z0.c cVar) {
        }

        void h(z0.c cVar) {
        }

        void j(z0.c cVar) {
        }

        void k(int i10, boolean z10) {
        }
    }

    private static class h extends g {
        h(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override
        WindowInsetsCompat a() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8044c.consumeDisplayCutout());
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Objects.equals(this.f8044c, hVar.f8044c) && Objects.equals(this.f8048g, hVar.f8048g) && f.C(this.f8049h, hVar.f8049h);
        }

        @Override
        DisplayCutoutCompat f() {
            return DisplayCutoutCompat.wrap(this.f8044c.getDisplayCutout());
        }

        @Override
        public int hashCode() {
            return this.f8044c.hashCode();
        }

        h(WindowInsetsCompat windowInsetsCompat, h hVar) {
            super(windowInsetsCompat, hVar);
        }
    }

    private static class j extends i {

        static final WindowInsetsCompat f8054r = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        j(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override
        public z0.c g(int i10) {
            return z0.c.f(this.f8044c.getInsets(m.a(i10)));
        }

        @Override
        public z0.c h(int i10) {
            return z0.c.f(this.f8044c.getInsetsIgnoringVisibility(m.a(i10)));
        }

        @Override
        public boolean q(int i10) {
            return this.f8044c.isVisible(m.a(i10));
        }

        j(WindowInsetsCompat windowInsetsCompat, j jVar) {
            super(windowInsetsCompat, jVar);
        }

        @Override
        final void d(View view) {
        }
    }

    private static class k extends j {

        static final WindowInsetsCompat f8055s = WindowInsetsCompat.toWindowInsetsCompat(WindowInsets.CONSUMED);

        k(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override
        public z0.c g(int i10) {
            return z0.c.f(this.f8044c.getInsets(n.a(i10)));
        }

        @Override
        public z0.c h(int i10) {
            return z0.c.f(this.f8044c.getInsetsIgnoringVisibility(n.a(i10)));
        }

        @Override
        public boolean q(int i10) {
            return this.f8044c.isVisible(n.a(i10));
        }

        k(WindowInsetsCompat windowInsetsCompat, k kVar) {
            super(windowInsetsCompat, kVar);
        }
    }

    private static final class m {
        static int a(int i10) {
            int iStatusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i11 |= iStatusBars;
                }
            }
            return i11;
        }
    }

    private static final class n {
        static int a(int i10) {
            int iStatusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 512; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    } else if (i12 == 512) {
                        iStatusBars = WindowInsets.Type.systemOverlays();
                    }
                    i11 |= iStatusBars;
                }
            }
            return i11;
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            CONSUMED = k.f8055s;
        } else if (i10 >= 30) {
            CONSUMED = j.f8054r;
        } else {
            CONSUMED = l.f8056b;
        }
    }

    private WindowInsetsCompat(WindowInsets windowInsets) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            this.mImpl = new k(this, windowInsets);
            return;
        }
        if (i10 >= 30) {
            this.mImpl = new j(this, windowInsets);
            return;
        }
        if (i10 >= 29) {
            this.mImpl = new i(this, windowInsets);
        } else if (i10 >= 28) {
            this.mImpl = new h(this, windowInsets);
        } else {
            this.mImpl = new g(this, windowInsets);
        }
    }

    static z0.c insetInsets(z0.c cVar, int i10, int i11, int i12, int i13) {
        int iMax = Math.max(0, cVar.f76465a - i10);
        int iMax2 = Math.max(0, cVar.f76466b - i11);
        int iMax3 = Math.max(0, cVar.f76467c - i12);
        int iMax4 = Math.max(0, cVar.f76468d - i13);
        return (iMax == i10 && iMax2 == i11 && iMax3 == i12 && iMax4 == i13) ? cVar : z0.c.c(iMax, iMax2, iMax3, iMax4);
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets) {
        return toWindowInsetsCompat(windowInsets, null);
    }

    @Deprecated
    public WindowInsetsCompat consumeDisplayCutout() {
        return this.mImpl.a();
    }

    @Deprecated
    public WindowInsetsCompat consumeStableInsets() {
        return this.mImpl.b();
    }

    @Deprecated
    public WindowInsetsCompat consumeSystemWindowInsets() {
        return this.mImpl.c();
    }

    void copyRootViewBounds(View view) {
        this.mImpl.d(view);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return androidx.core.util.d.a(this.mImpl, ((WindowInsetsCompat) obj).mImpl);
        }
        return false;
    }

    public DisplayCutoutCompat getDisplayCutout() {
        return this.mImpl.f();
    }

    public z0.c getInsets(int i10) {
        return this.mImpl.g(i10);
    }

    public z0.c getInsetsIgnoringVisibility(int i10) {
        return this.mImpl.h(i10);
    }

    @Deprecated
    public z0.c getMandatorySystemGestureInsets() {
        return this.mImpl.i();
    }

    @Deprecated
    public int getStableInsetBottom() {
        return this.mImpl.j().f76468d;
    }

    @Deprecated
    public int getStableInsetLeft() {
        return this.mImpl.j().f76465a;
    }

    @Deprecated
    public int getStableInsetRight() {
        return this.mImpl.j().f76467c;
    }

    @Deprecated
    public int getStableInsetTop() {
        return this.mImpl.j().f76466b;
    }

    @Deprecated
    public z0.c getStableInsets() {
        return this.mImpl.j();
    }

    @Deprecated
    public z0.c getSystemGestureInsets() {
        return this.mImpl.k();
    }

    @Deprecated
    public int getSystemWindowInsetBottom() {
        return this.mImpl.l().f76468d;
    }

    @Deprecated
    public int getSystemWindowInsetLeft() {
        return this.mImpl.l().f76465a;
    }

    @Deprecated
    public int getSystemWindowInsetRight() {
        return this.mImpl.l().f76467c;
    }

    @Deprecated
    public int getSystemWindowInsetTop() {
        return this.mImpl.l().f76466b;
    }

    @Deprecated
    public z0.c getSystemWindowInsets() {
        return this.mImpl.l();
    }

    @Deprecated
    public z0.c getTappableElementInsets() {
        return this.mImpl.m();
    }

    public boolean hasInsets() {
        z0.c insets = getInsets(Type.all());
        z0.c cVar = z0.c.f76464e;
        return (insets.equals(cVar) && getInsetsIgnoringVisibility(Type.all() ^ Type.ime()).equals(cVar) && getDisplayCutout() == null) ? false : true;
    }

    @Deprecated
    public boolean hasStableInsets() {
        return !this.mImpl.j().equals(z0.c.f76464e);
    }

    @Deprecated
    public boolean hasSystemWindowInsets() {
        return !this.mImpl.l().equals(z0.c.f76464e);
    }

    public int hashCode() {
        l lVar = this.mImpl;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public WindowInsetsCompat inset(z0.c cVar) {
        return inset(cVar.f76465a, cVar.f76466b, cVar.f76467c, cVar.f76468d);
    }

    public boolean isConsumed() {
        return this.mImpl.o();
    }

    public boolean isRound() {
        return this.mImpl.p();
    }

    public boolean isVisible(int i10) {
        return this.mImpl.q(i10);
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(int i10, int i11, int i12, int i13) {
        return new Builder(this).setSystemWindowInsets(z0.c.c(i10, i11, i12, i13)).build();
    }

    void setOverriddenInsets(z0.c[] cVarArr) {
        this.mImpl.r(cVarArr);
    }

    void setRootViewData(z0.c cVar) {
        this.mImpl.s(cVar);
    }

    void setRootWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        this.mImpl.t(windowInsetsCompat);
    }

    void setStableInsets(z0.c cVar) {
        this.mImpl.u(cVar);
    }

    void setSystemUiVisibility(int i10) {
        this.mImpl.v(i10);
    }

    public WindowInsets toWindowInsets() {
        l lVar = this.mImpl;
        if (lVar instanceof f) {
            return ((f) lVar).f8044c;
        }
        return null;
    }

    private static class a extends e {

        private static Field f8030e = null;

        private static boolean f8031f = false;

        private static Constructor f8032g = null;

        private static boolean f8033h = false;

        private WindowInsets f8034c;

        private z0.c f8035d;

        a() {
            this.f8034c = l();
        }

        private static WindowInsets l() {
            if (!f8031f) {
                try {
                    f8030e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f8031f = true;
            }
            Field field = f8030e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!f8033h) {
                try {
                    f8032g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                f8033h = true;
            }
            Constructor constructor = f8032g;
            if (constructor != null) {
                try {
                    return (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f8034c);
            windowInsetsCompat.setOverriddenInsets(this.f8038b);
            windowInsetsCompat.setStableInsets(this.f8035d);
            return windowInsetsCompat;
        }

        @Override
        void g(z0.c cVar) {
            this.f8035d = cVar;
        }

        @Override
        void i(z0.c cVar) {
            WindowInsets windowInsets = this.f8034c;
            if (windowInsets != null) {
                this.f8034c = windowInsets.replaceSystemWindowInsets(cVar.f76465a, cVar.f76466b, cVar.f76467c, cVar.f76468d);
            }
        }

        a(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            this.f8034c = windowInsetsCompat.toWindowInsets();
        }
    }

    private static class b extends e {

        final WindowInsets.Builder f8036c;

        b() {
            this.f8036c = e1.c.a();
        }

        @Override
        WindowInsetsCompat b() {
            a();
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(this.f8036c.build());
            windowInsetsCompat.setOverriddenInsets(this.f8038b);
            return windowInsetsCompat;
        }

        @Override
        void c(DisplayCutoutCompat displayCutoutCompat) {
            this.f8036c.setDisplayCutout(displayCutoutCompat != null ? displayCutoutCompat.unwrap() : null);
        }

        @Override
        void f(z0.c cVar) {
            this.f8036c.setMandatorySystemGestureInsets(cVar.g());
        }

        @Override
        void g(z0.c cVar) {
            this.f8036c.setStableInsets(cVar.g());
        }

        @Override
        void h(z0.c cVar) {
            this.f8036c.setSystemGestureInsets(cVar.g());
        }

        @Override
        void i(z0.c cVar) {
            this.f8036c.setSystemWindowInsets(cVar.g());
        }

        @Override
        void j(z0.c cVar) {
            this.f8036c.setTappableElementInsets(cVar.g());
        }

        b(WindowInsetsCompat windowInsetsCompat) {
            WindowInsets.Builder builderA;
            super(windowInsetsCompat);
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                builderA = v1.a(windowInsets);
            } else {
                builderA = e1.c.a();
            }
            this.f8036c = builderA;
        }
    }

    private static class g extends f {

        private z0.c f8050n;

        g(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f8050n = null;
        }

        @Override
        WindowInsetsCompat b() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8044c.consumeStableInsets());
        }

        @Override
        WindowInsetsCompat c() {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8044c.consumeSystemWindowInsets());
        }

        @Override
        final z0.c j() {
            if (this.f8050n == null) {
                this.f8050n = z0.c.c(this.f8044c.getStableInsetLeft(), this.f8044c.getStableInsetTop(), this.f8044c.getStableInsetRight(), this.f8044c.getStableInsetBottom());
            }
            return this.f8050n;
        }

        @Override
        boolean o() {
            return this.f8044c.isConsumed();
        }

        @Override
        public void u(z0.c cVar) {
            this.f8050n = cVar;
        }

        g(WindowInsetsCompat windowInsetsCompat, g gVar) {
            super(windowInsetsCompat, gVar);
            this.f8050n = null;
            this.f8050n = gVar.f8050n;
        }
    }

    public static WindowInsetsCompat toWindowInsetsCompat(WindowInsets windowInsets, View view) {
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat((WindowInsets) androidx.core.util.i.g(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            windowInsetsCompat.setRootWindowInsets(ViewCompat.getRootWindowInsets(view));
            windowInsetsCompat.copyRootViewBounds(view.getRootView());
            windowInsetsCompat.setSystemUiVisibility(view.getWindowSystemUiVisibility());
        }
        return windowInsetsCompat;
    }

    public WindowInsetsCompat inset(int i10, int i11, int i12, int i13) {
        return this.mImpl.n(i10, i11, i12, i13);
    }

    private static class f extends l {

        private static boolean f8039i = false;

        private static Method f8040j;

        private static Class f8041k;

        private static Field f8042l;

        private static Field f8043m;

        final WindowInsets f8044c;

        private z0.c[] f8045d;

        private z0.c f8046e;

        private WindowInsetsCompat f8047f;

        z0.c f8048g;

        int f8049h;

        f(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.f8046e = null;
            this.f8044c = windowInsets;
        }

        @SuppressLint({"PrivateApi"})
        private static void B() {
            try {
                f8040j = View.class.getDeclaredMethod("getViewRootImpl", null);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f8041k = cls;
                f8042l = cls.getDeclaredField("mVisibleInsets");
                f8043m = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f8042l.setAccessible(true);
                f8043m.setAccessible(true);
            } catch (ReflectiveOperationException e10) {
                Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e10.getMessage(), e10);
            }
            f8039i = true;
        }

        static boolean C(int i10, int i11) {
            return (i10 & 6) == (i11 & 6);
        }

        @SuppressLint({"WrongConstant"})
        private z0.c w(int i10, boolean z10) {
            z0.c cVarA = z0.c.f76464e;
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    cVarA = z0.c.a(cVarA, x(i11, z10));
                }
            }
            return cVarA;
        }

        private z0.c y() {
            WindowInsetsCompat windowInsetsCompat = this.f8047f;
            return windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : z0.c.f76464e;
        }

        private z0.c z(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f8039i) {
                B();
            }
            Method method = f8040j;
            if (method != null && f8041k != null && f8042l != null) {
                try {
                    Object objInvoke = method.invoke(view, null);
                    if (objInvoke == null) {
                        Log.w(WindowInsetsCompat.TAG, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) f8042l.get(f8043m.get(objInvoke));
                    if (rect != null) {
                        return z0.c.d(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e10) {
                    Log.e(WindowInsetsCompat.TAG, "Failed to get visible insets. (Reflection error). " + e10.getMessage(), e10);
                }
            }
            return null;
        }

        protected boolean A(int i10) {
            if (i10 != 1 && i10 != 2) {
                if (i10 == 4) {
                    return false;
                }
                if (i10 != 8 && i10 != 128) {
                    return true;
                }
            }
            return !x(i10, false).equals(z0.c.f76464e);
        }

        @Override
        void d(View view) {
            z0.c cVarZ = z(view);
            if (cVarZ == null) {
                cVarZ = z0.c.f76464e;
            }
            s(cVarZ);
        }

        @Override
        void e(WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.setRootWindowInsets(this.f8047f);
            windowInsetsCompat.setRootViewData(this.f8048g);
            windowInsetsCompat.setSystemUiVisibility(this.f8049h);
        }

        @Override
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            f fVar = (f) obj;
            return Objects.equals(this.f8048g, fVar.f8048g) && C(this.f8049h, fVar.f8049h);
        }

        @Override
        public z0.c g(int i10) {
            return w(i10, false);
        }

        @Override
        public z0.c h(int i10) {
            return w(i10, true);
        }

        @Override
        final z0.c l() {
            if (this.f8046e == null) {
                this.f8046e = z0.c.c(this.f8044c.getSystemWindowInsetLeft(), this.f8044c.getSystemWindowInsetTop(), this.f8044c.getSystemWindowInsetRight(), this.f8044c.getSystemWindowInsetBottom());
            }
            return this.f8046e;
        }

        @Override
        WindowInsetsCompat n(int i10, int i11, int i12, int i13) {
            Builder builder = new Builder(WindowInsetsCompat.toWindowInsetsCompat(this.f8044c));
            builder.setSystemWindowInsets(WindowInsetsCompat.insetInsets(l(), i10, i11, i12, i13));
            builder.setStableInsets(WindowInsetsCompat.insetInsets(j(), i10, i11, i12, i13));
            return builder.build();
        }

        @Override
        boolean p() {
            return this.f8044c.isRound();
        }

        @Override
        @SuppressLint({"WrongConstant"})
        boolean q(int i10) {
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) != 0 && !A(i11)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public void r(z0.c[] cVarArr) {
            this.f8045d = cVarArr;
        }

        @Override
        void s(z0.c cVar) {
            this.f8048g = cVar;
        }

        @Override
        void t(WindowInsetsCompat windowInsetsCompat) {
            this.f8047f = windowInsetsCompat;
        }

        @Override
        void v(int i10) {
            this.f8049h = i10;
        }

        protected z0.c x(int i10, boolean z10) {
            z0.c stableInsets;
            int i11;
            if (i10 == 1) {
                if (z10) {
                    return z0.c.c(0, Math.max(y().f76466b, l().f76466b), 0, 0);
                }
                return (this.f8049h & 4) != 0 ? z0.c.f76464e : z0.c.c(0, l().f76466b, 0, 0);
            }
            if (i10 == 2) {
                if (z10) {
                    z0.c cVarY = y();
                    z0.c cVarJ = j();
                    return z0.c.c(Math.max(cVarY.f76465a, cVarJ.f76465a), 0, Math.max(cVarY.f76467c, cVarJ.f76467c), Math.max(cVarY.f76468d, cVarJ.f76468d));
                }
                if ((this.f8049h & 2) != 0) {
                    return z0.c.f76464e;
                }
                z0.c cVarL = l();
                WindowInsetsCompat windowInsetsCompat = this.f8047f;
                stableInsets = windowInsetsCompat != null ? windowInsetsCompat.getStableInsets() : null;
                int iMin = cVarL.f76468d;
                if (stableInsets != null) {
                    iMin = Math.min(iMin, stableInsets.f76468d);
                }
                return z0.c.c(cVarL.f76465a, 0, cVarL.f76467c, iMin);
            }
            if (i10 != 8) {
                if (i10 == 16) {
                    return k();
                }
                if (i10 == 32) {
                    return i();
                }
                if (i10 == 64) {
                    return m();
                }
                if (i10 != 128) {
                    return z0.c.f76464e;
                }
                WindowInsetsCompat windowInsetsCompat2 = this.f8047f;
                DisplayCutoutCompat displayCutout = windowInsetsCompat2 != null ? windowInsetsCompat2.getDisplayCutout() : f();
                return displayCutout != null ? z0.c.c(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom()) : z0.c.f76464e;
            }
            z0.c[] cVarArr = this.f8045d;
            stableInsets = cVarArr != null ? cVarArr[Type.indexOf(8)] : null;
            if (stableInsets != null) {
                return stableInsets;
            }
            z0.c cVarL2 = l();
            z0.c cVarY2 = y();
            int i12 = cVarL2.f76468d;
            if (i12 > cVarY2.f76468d) {
                return z0.c.c(0, 0, 0, i12);
            }
            z0.c cVar = this.f8048g;
            return (cVar == null || cVar.equals(z0.c.f76464e) || (i11 = this.f8048g.f76468d) <= cVarY2.f76468d) ? z0.c.f76464e : z0.c.c(0, 0, 0, i11);
        }

        f(WindowInsetsCompat windowInsetsCompat, f fVar) {
            this(windowInsetsCompat, new WindowInsets(fVar.f8044c));
        }
    }

    private static class i extends h {

        private z0.c f8051o;

        private z0.c f8052p;

        private z0.c f8053q;

        i(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.f8051o = null;
            this.f8052p = null;
            this.f8053q = null;
        }

        @Override
        z0.c i() {
            if (this.f8052p == null) {
                this.f8052p = z0.c.f(this.f8044c.getMandatorySystemGestureInsets());
            }
            return this.f8052p;
        }

        @Override
        z0.c k() {
            if (this.f8051o == null) {
                this.f8051o = z0.c.f(this.f8044c.getSystemGestureInsets());
            }
            return this.f8051o;
        }

        @Override
        z0.c m() {
            if (this.f8053q == null) {
                this.f8053q = z0.c.f(this.f8044c.getTappableElementInsets());
            }
            return this.f8053q;
        }

        @Override
        WindowInsetsCompat n(int i10, int i11, int i12, int i13) {
            return WindowInsetsCompat.toWindowInsetsCompat(this.f8044c.inset(i10, i11, i12, i13));
        }

        i(WindowInsetsCompat windowInsetsCompat, i iVar) {
            super(windowInsetsCompat, iVar);
            this.f8051o = null;
            this.f8052p = null;
            this.f8053q = null;
        }

        @Override
        public void u(z0.c cVar) {
        }
    }

    @Deprecated
    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return new Builder(this).setSystemWindowInsets(z0.c.d(rect)).build();
    }

    public static final class Builder {
        private final e mImpl;

        public Builder() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 34) {
                this.mImpl = new d();
                return;
            }
            if (i10 >= 30) {
                this.mImpl = new c();
            } else if (i10 >= 29) {
                this.mImpl = new b();
            } else {
                this.mImpl = new a();
            }
        }

        public WindowInsetsCompat build() {
            return this.mImpl.b();
        }

        public Builder setDisplayCutout(DisplayCutoutCompat displayCutoutCompat) {
            this.mImpl.c(displayCutoutCompat);
            return this;
        }

        public Builder setInsets(int i10, z0.c cVar) {
            this.mImpl.d(i10, cVar);
            return this;
        }

        public Builder setInsetsIgnoringVisibility(int i10, z0.c cVar) {
            this.mImpl.e(i10, cVar);
            return this;
        }

        @Deprecated
        public Builder setMandatorySystemGestureInsets(z0.c cVar) {
            this.mImpl.f(cVar);
            return this;
        }

        @Deprecated
        public Builder setStableInsets(z0.c cVar) {
            this.mImpl.g(cVar);
            return this;
        }

        @Deprecated
        public Builder setSystemGestureInsets(z0.c cVar) {
            this.mImpl.h(cVar);
            return this;
        }

        @Deprecated
        public Builder setSystemWindowInsets(z0.c cVar) {
            this.mImpl.i(cVar);
            return this;
        }

        @Deprecated
        public Builder setTappableElementInsets(z0.c cVar) {
            this.mImpl.j(cVar);
            return this;
        }

        public Builder setVisible(int i10, boolean z10) {
            this.mImpl.k(i10, z10);
            return this;
        }

        public Builder(WindowInsetsCompat windowInsetsCompat) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 34) {
                this.mImpl = new d(windowInsetsCompat);
                return;
            }
            if (i10 >= 30) {
                this.mImpl = new c(windowInsetsCompat);
            } else if (i10 >= 29) {
                this.mImpl = new b(windowInsetsCompat);
            } else {
                this.mImpl = new a(windowInsetsCompat);
            }
        }
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat != null) {
            l lVar = windowInsetsCompat.mImpl;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 34 && (lVar instanceof k)) {
                this.mImpl = new k(this, (k) lVar);
            } else if (i10 >= 30 && (lVar instanceof j)) {
                this.mImpl = new j(this, (j) lVar);
            } else if (i10 >= 29 && (lVar instanceof i)) {
                this.mImpl = new i(this, (i) lVar);
            } else if (i10 >= 28 && (lVar instanceof h)) {
                this.mImpl = new h(this, (h) lVar);
            } else if (lVar instanceof g) {
                this.mImpl = new g(this, (g) lVar);
            } else if (lVar instanceof f) {
                this.mImpl = new f(this, (f) lVar);
            } else {
                this.mImpl = new l(this);
            }
            lVar.e(this);
            return;
        }
        this.mImpl = new l(this);
    }

    private static class l {

        static final WindowInsetsCompat f8056b = new Builder().build().consumeDisplayCutout().consumeStableInsets().consumeSystemWindowInsets();

        final WindowInsetsCompat f8057a;

        l(WindowInsetsCompat windowInsetsCompat) {
            this.f8057a = windowInsetsCompat;
        }

        WindowInsetsCompat a() {
            return this.f8057a;
        }

        WindowInsetsCompat b() {
            return this.f8057a;
        }

        WindowInsetsCompat c() {
            return this.f8057a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return p() == lVar.p() && o() == lVar.o() && androidx.core.util.d.a(l(), lVar.l()) && androidx.core.util.d.a(j(), lVar.j()) && androidx.core.util.d.a(f(), lVar.f());
        }

        DisplayCutoutCompat f() {
            return null;
        }

        z0.c g(int i10) {
            return z0.c.f76464e;
        }

        z0.c h(int i10) {
            if ((i10 & 8) == 0) {
                return z0.c.f76464e;
            }
            throw new IllegalArgumentException("Unable to query the maximum insets for IME");
        }

        public int hashCode() {
            return androidx.core.util.d.b(Boolean.valueOf(p()), Boolean.valueOf(o()), l(), j(), f());
        }

        z0.c i() {
            return l();
        }

        z0.c j() {
            return z0.c.f76464e;
        }

        z0.c k() {
            return l();
        }

        z0.c l() {
            return z0.c.f76464e;
        }

        z0.c m() {
            return l();
        }

        WindowInsetsCompat n(int i10, int i11, int i12, int i13) {
            return f8056b;
        }

        boolean o() {
            return false;
        }

        boolean p() {
            return false;
        }

        boolean q(int i10) {
            return true;
        }

        void d(View view) {
        }

        void e(WindowInsetsCompat windowInsetsCompat) {
        }

        public void r(z0.c[] cVarArr) {
        }

        void s(z0.c cVar) {
        }

        void t(WindowInsetsCompat windowInsetsCompat) {
        }

        public void u(z0.c cVar) {
        }

        void v(int i10) {
        }
    }
}

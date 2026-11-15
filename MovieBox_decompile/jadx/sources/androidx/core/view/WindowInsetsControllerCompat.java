package androidx.core.view;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import org.mvel2.ast.ASTNode;

public final class WindowInsetsControllerCompat {
    public static final int BEHAVIOR_DEFAULT = 1;

    @Deprecated
    public static final int BEHAVIOR_SHOW_BARS_BY_SWIPE = 1;

    @Deprecated
    public static final int BEHAVIOR_SHOW_BARS_BY_TOUCH = 0;
    public static final int BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE = 2;
    private final g mImpl;

    public interface OnControllableInsetsChangedListener {
        void onControllableInsetsChanged(WindowInsetsControllerCompat windowInsetsControllerCompat, int i10);
    }

    private static class b extends a {
        b(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(window, softwareKeyboardControllerCompat);
        }

        @Override
        public boolean f() {
            return (this.f8058a.getDecorView().getSystemUiVisibility() & 8192) != 0;
        }

        @Override
        public void i(boolean z10) {
            if (!z10) {
                p(8192);
                return;
            }
            q(67108864);
            n(Integer.MIN_VALUE);
            m(8192);
        }
    }

    private static class c extends b {
        c(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(window, softwareKeyboardControllerCompat);
        }

        @Override
        public boolean e() {
            return (this.f8058a.getDecorView().getSystemUiVisibility() & 16) != 0;
        }

        @Override
        public void h(boolean z10) {
            if (!z10) {
                p(16);
                return;
            }
            q(ASTNode.NOJIT);
            n(Integer.MIN_VALUE);
            m(16);
        }
    }

    private static class e extends d {
        e(Window window, WindowInsetsControllerCompat windowInsetsControllerCompat, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(window, windowInsetsControllerCompat, softwareKeyboardControllerCompat);
        }

        @Override
        int c() {
            return this.f8061b.getSystemBarsBehavior();
        }

        @Override
        void j(int i10) {
            this.f8061b.setSystemBarsBehavior(i10);
        }

        e(WindowInsetsController windowInsetsController, WindowInsetsControllerCompat windowInsetsControllerCompat, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(windowInsetsController, windowInsetsControllerCompat, softwareKeyboardControllerCompat);
        }
    }

    private static class f extends e {
        f(Window window, WindowInsetsControllerCompat windowInsetsControllerCompat, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(window, windowInsetsControllerCompat, softwareKeyboardControllerCompat);
        }

        @Override
        public boolean e() {
            return (this.f8061b.getSystemBarsAppearance() & 16) != 0;
        }

        @Override
        public boolean f() {
            return (this.f8061b.getSystemBarsAppearance() & 8) != 0;
        }

        f(WindowInsetsController windowInsetsController, WindowInsetsControllerCompat windowInsetsControllerCompat, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            super(windowInsetsController, windowInsetsControllerCompat, softwareKeyboardControllerCompat);
        }
    }

    @Deprecated
    private WindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.mImpl = new f(windowInsetsController, this, new SoftwareKeyboardControllerCompat(windowInsetsController));
        } else {
            this.mImpl = new d(windowInsetsController, this, new SoftwareKeyboardControllerCompat(windowInsetsController));
        }
    }

    @Deprecated
    public static WindowInsetsControllerCompat toWindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        return new WindowInsetsControllerCompat(windowInsetsController);
    }

    public void addOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.mImpl.a(onControllableInsetsChangedListener);
    }

    public void controlWindowInsetsAnimation(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.mImpl.b(i10, j10, interpolator, cancellationSignal, windowInsetsAnimationControlListenerCompat);
    }

    @SuppressLint({"WrongConstant"})
    public int getSystemBarsBehavior() {
        return this.mImpl.c();
    }

    public void hide(int i10) {
        this.mImpl.d(i10);
    }

    public boolean isAppearanceLightNavigationBars() {
        return this.mImpl.e();
    }

    public boolean isAppearanceLightStatusBars() {
        return this.mImpl.f();
    }

    public void removeOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.mImpl.g(onControllableInsetsChangedListener);
    }

    public void setAppearanceLightNavigationBars(boolean z10) {
        this.mImpl.h(z10);
    }

    public void setAppearanceLightStatusBars(boolean z10) {
        this.mImpl.i(z10);
    }

    public void setSystemBarsBehavior(int i10) {
        this.mImpl.j(i10);
    }

    public void show(int i10) {
        this.mImpl.k(i10);
    }

    static class d extends g {

        final WindowInsetsControllerCompat f8060a;

        final WindowInsetsController f8061b;

        final SoftwareKeyboardControllerCompat f8062c;

        private final androidx.collection.x0 f8063d;

        protected Window f8064e;

        class a implements WindowInsetsAnimationControlListener {

            private WindowInsetsAnimationControllerCompat f8065a = null;

            final WindowInsetsAnimationControlListenerCompat f8066b;

            a(WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
                this.f8066b = windowInsetsAnimationControlListenerCompat;
            }

            public void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
                this.f8066b.onCancelled(windowInsetsAnimationController == null ? null : this.f8065a);
            }

            public void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
                this.f8066b.onFinished(this.f8065a);
            }

            public void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i10) {
                WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
                this.f8065a = windowInsetsAnimationControllerCompat;
                this.f8066b.onReady(windowInsetsAnimationControllerCompat, i10);
            }
        }

        d(Window window, WindowInsetsControllerCompat windowInsetsControllerCompat, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this(window.getInsetsController(), windowInsetsControllerCompat, softwareKeyboardControllerCompat);
            this.f8064e = window;
        }

        public void m(OnControllableInsetsChangedListener onControllableInsetsChangedListener, WindowInsetsController windowInsetsController, int i10) {
            if (this.f8061b == windowInsetsController) {
                onControllableInsetsChangedListener.onControllableInsetsChanged(this.f8060a, i10);
            }
        }

        @Override
        void a(final OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            if (this.f8063d.containsKey(onControllableInsetsChangedListener)) {
                return;
            }
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener2 = new WindowInsetsController.OnControllableInsetsChangedListener() {
                @Override
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i10) {
                    this.f8132a.m(onControllableInsetsChangedListener, windowInsetsController, i10);
                }
            };
            this.f8063d.put(onControllableInsetsChangedListener, onControllableInsetsChangedListener2);
            this.f8061b.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener2);
        }

        @Override
        void b(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
            this.f8061b.controlWindowInsetsAnimation(i10, j10, interpolator, cancellationSignal, new a(windowInsetsAnimationControlListenerCompat));
        }

        @Override
        int c() {
            Window window = this.f8064e;
            if (window == null) {
                return this.f8061b.getSystemBarsBehavior();
            }
            Object tag = window.getDecorView().getTag(356039078);
            if (tag != null) {
                return ((Integer) tag).intValue();
            }
            return 1;
        }

        @Override
        void d(int i10) {
            if ((i10 & 8) != 0) {
                this.f8062c.hide();
            }
            this.f8061b.hide(i10 & (-9));
        }

        @Override
        public boolean e() {
            this.f8061b.setSystemBarsAppearance(0, 0);
            return (this.f8061b.getSystemBarsAppearance() & 16) != 0;
        }

        @Override
        public boolean f() {
            this.f8061b.setSystemBarsAppearance(0, 0);
            return (this.f8061b.getSystemBarsAppearance() & 8) != 0;
        }

        @Override
        void g(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListenerA = w2.a(this.f8063d.remove(onControllableInsetsChangedListener));
            if (onControllableInsetsChangedListenerA != null) {
                this.f8061b.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListenerA);
            }
        }

        @Override
        public void h(boolean z10) {
            if (z10) {
                if (this.f8064e != null) {
                    n(16);
                }
                this.f8061b.setSystemBarsAppearance(16, 16);
            } else {
                if (this.f8064e != null) {
                    o(16);
                }
                this.f8061b.setSystemBarsAppearance(0, 16);
            }
        }

        @Override
        public void i(boolean z10) {
            if (z10) {
                if (this.f8064e != null) {
                    n(8192);
                }
                this.f8061b.setSystemBarsAppearance(8, 8);
            } else {
                if (this.f8064e != null) {
                    o(8192);
                }
                this.f8061b.setSystemBarsAppearance(0, 8);
            }
        }

        @Override
        void j(int i10) {
            Window window = this.f8064e;
            if (window == null) {
                this.f8061b.setSystemBarsBehavior(i10);
                return;
            }
            window.getDecorView().setTag(356039078, Integer.valueOf(i10));
            if (i10 == 0) {
                o(6144);
                return;
            }
            if (i10 == 1) {
                o(4096);
                n(2048);
            } else {
                if (i10 != 2) {
                    return;
                }
                o(2048);
                n(4096);
            }
        }

        @Override
        void k(int i10) {
            if ((i10 & 8) != 0) {
                this.f8062c.show();
            }
            this.f8061b.show(i10 & (-9));
        }

        protected void n(int i10) {
            View decorView = this.f8064e.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        protected void o(int i10) {
            View decorView = this.f8064e.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        d(WindowInsetsController windowInsetsController, WindowInsetsControllerCompat windowInsetsControllerCompat, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this.f8063d = new androidx.collection.x0();
            this.f8061b = windowInsetsController;
            this.f8060a = windowInsetsControllerCompat;
            this.f8062c = softwareKeyboardControllerCompat;
        }
    }

    public WindowInsetsControllerCompat(Window window, View view) {
        SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat = new SoftwareKeyboardControllerCompat(view);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 35) {
            this.mImpl = new f(window, this, softwareKeyboardControllerCompat);
            return;
        }
        if (i10 >= 30) {
            this.mImpl = new d(window, this, softwareKeyboardControllerCompat);
        } else if (i10 >= 26) {
            this.mImpl = new c(window, softwareKeyboardControllerCompat);
        } else {
            this.mImpl = new b(window, softwareKeyboardControllerCompat);
        }
    }

    private static class a extends g {

        protected final Window f8058a;

        private final SoftwareKeyboardControllerCompat f8059b;

        a(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this.f8058a = window;
            this.f8059b = softwareKeyboardControllerCompat;
        }

        private void l(int i10) {
            if (i10 == 1) {
                m(4);
            } else if (i10 == 2) {
                m(2);
            } else {
                if (i10 != 8) {
                    return;
                }
                this.f8059b.hide();
            }
        }

        private void o(int i10) {
            if (i10 == 1) {
                p(4);
                q(1024);
            } else if (i10 == 2) {
                p(2);
            } else {
                if (i10 != 8) {
                    return;
                }
                this.f8059b.show();
            }
        }

        @Override
        int c() {
            Object tag = this.f8058a.getDecorView().getTag(356039078);
            if (tag != null) {
                return ((Integer) tag).intValue();
            }
            return 1;
        }

        @Override
        void d(int i10) {
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    l(i11);
                }
            }
        }

        @Override
        void j(int i10) {
            this.f8058a.getDecorView().setTag(356039078, Integer.valueOf(i10));
            if (i10 == 0) {
                p(6144);
                return;
            }
            if (i10 == 1) {
                p(4096);
                m(2048);
            } else {
                if (i10 != 2) {
                    return;
                }
                p(2048);
                m(4096);
            }
        }

        @Override
        void k(int i10) {
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    o(i11);
                }
            }
        }

        protected void m(int i10) {
            View decorView = this.f8058a.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        protected void n(int i10) {
            this.f8058a.addFlags(i10);
        }

        protected void p(int i10) {
            View decorView = this.f8058a.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        protected void q(int i10) {
            this.f8058a.clearFlags(i10);
        }

        @Override
        void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override
        void g(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override
        void b(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }
    }

    private static class g {
        g() {
        }

        abstract void a(OnControllableInsetsChangedListener onControllableInsetsChangedListener);

        abstract void b(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat);

        abstract int c();

        abstract void d(int i10);

        public boolean e() {
            return false;
        }

        public abstract boolean f();

        abstract void g(OnControllableInsetsChangedListener onControllableInsetsChangedListener);

        public abstract void i(boolean z10);

        abstract void j(int i10);

        abstract void k(int i10);

        public void h(boolean z10) {
        }
    }
}

package androidx.core.view;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import java.util.concurrent.atomic.AtomicBoolean;

public final class SoftwareKeyboardControllerCompat {
    private final c mImpl;

    static class a extends c {

        private final View f7985a;

        a(View view) {
            this.f7985a = view;
        }

        public static void d(View view) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
        }

        @Override
        void a() {
            View view = this.f7985a;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f7985a.getWindowToken(), 0);
            }
        }

        @Override
        void b() {
            final View viewFindViewById = this.f7985a;
            if (viewFindViewById == null) {
                return;
            }
            if (viewFindViewById.isInEditMode() || viewFindViewById.onCheckIsTextEditor()) {
                viewFindViewById.requestFocus();
            } else {
                viewFindViewById = viewFindViewById.getRootView().findFocus();
            }
            if (viewFindViewById == null) {
                viewFindViewById = this.f7985a.getRootView().findViewById(R.id.content);
            }
            if (viewFindViewById == null || !viewFindViewById.hasWindowFocus()) {
                return;
            }
            viewFindViewById.post(new Runnable() {
                @Override
                public final void run() {
                    SoftwareKeyboardControllerCompat.a.d(viewFindViewById);
                }
            });
        }
    }

    private static class c {
        c() {
        }

        abstract void a();

        abstract void b();
    }

    public SoftwareKeyboardControllerCompat(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new b(view);
        } else {
            this.mImpl = new a(view);
        }
    }

    public void hide() {
        this.mImpl.a();
    }

    public void show() {
        this.mImpl.b();
    }

    static class b extends a {

        private View f7986b;

        private WindowInsetsController f7987c;

        b(View view) {
            super(view);
            this.f7986b = view;
        }

        public static void f(AtomicBoolean atomicBoolean, WindowInsetsController windowInsetsController, int i10) {
            atomicBoolean.set((i10 & 8) != 0);
        }

        @Override
        void a() {
            View view;
            WindowInsetsController windowInsetsController = this.f7987c;
            if (windowInsetsController == null) {
                View view2 = this.f7986b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController == null) {
                super.a();
                return;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener = new WindowInsetsController.OnControllableInsetsChangedListener() {
                @Override
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i10) {
                    SoftwareKeyboardControllerCompat.b.f(atomicBoolean, windowInsetsController2, i10);
                }
            };
            windowInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            if (!atomicBoolean.get() && (view = this.f7986b) != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f7986b.getWindowToken(), 0);
            }
            windowInsetsController.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            windowInsetsController.hide(WindowInsets.Type.ime());
        }

        @Override
        void b() {
            View view = this.f7986b;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            WindowInsetsController windowInsetsController = this.f7987c;
            if (windowInsetsController == null) {
                View view2 = this.f7986b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController != null) {
                windowInsetsController.show(WindowInsets.Type.ime());
            }
            super.b();
        }

        b(WindowInsetsController windowInsetsController) {
            super(null);
            this.f7987c = windowInsetsController;
        }
    }

    @Deprecated
    SoftwareKeyboardControllerCompat(WindowInsetsController windowInsetsController) {
        this.mImpl = new b(windowInsetsController);
    }
}

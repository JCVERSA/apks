package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

public abstract class adc {

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public final boolean[] b;
        public final ViewPager2 c;
        public final int d;
        public final ViewTreeObserver.OnGlobalLayoutListener[] e;
        public final Runnable f;

        public a(boolean[] zArr, ViewPager2 viewPager2, int i, ViewTreeObserver.OnGlobalLayoutListener[] onGlobalLayoutListenerArr, Runnable runnable) {
            this.b = zArr;
            this.c = viewPager2;
            this.d = i;
            this.e = onGlobalLayoutListenerArr;
            this.f = runnable;
        }

        @Override
        public void onGlobalLayout() {
            if (this.b[0]) {
                adc.p(this.c, this);
            } else if (adc.r(this.d, this.c.getWidth())) {
                adc.p(this.c, this);
                this.e[0] = null;
                this.f.run();
            }
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public final int[] b;
        public final ViewPager2 c;
        public final Runnable d;

        public b(int[] iArr, ViewPager2 viewPager2, Runnable runnable) {
            this.b = iArr;
            this.c = viewPager2;
            this.d = runnable;
        }

        @Override
        public void onGlobalLayout() {
            if (this.b[0] != 0) {
                adc.p(this.c, this);
                return;
            }
            if (adc.q(this.c.getWidth(), false)) {
                this.b[0] = 1;
                adc.p(this.c, this);
                adc.v(this.c);
                Runnable runnable = this.d;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }
    }

    public static void i(boolean[] zArr, ViewTreeObserver.OnGlobalLayoutListener[] onGlobalLayoutListenerArr, ViewPager2 viewPager2, Runnable runnable) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = onGlobalLayoutListenerArr[0];
        if (onGlobalLayoutListener != null) {
            p(viewPager2, onGlobalLayoutListener);
            onGlobalLayoutListenerArr[0] = null;
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void j(ViewPager2 viewPager2, Runnable runnable) {
        if (viewPager2.getAdapter() != null && viewPager2.getWidth() > 0) {
            v(viewPager2);
        }
        runnable.run();
    }

    public static void k(boolean[] zArr, final ViewPager2 viewPager2, final Runnable runnable) {
        if (zArr[0] || viewPager2.getAdapter() == null) {
            return;
        }
        v(viewPager2);
        viewPager2.post(new Runnable() {
            @Override
            public final void run() {
                adc.j(viewPager2, runnable);
            }
        });
    }

    public static void l(boolean[] zArr, int i, ViewPager2 viewPager2, Runnable runnable) {
        if (!zArr[0] && r(i, viewPager2.getWidth())) {
            runnable.run();
        }
    }

    public static void m(boolean[] zArr, ViewPager2 viewPager2, Runnable runnable) {
        if (zArr[0]) {
            return;
        }
        if (viewPager2.getAdapter() != null && viewPager2.getWidth() > 0) {
            v(viewPager2);
        }
        runnable.run();
    }

    public static void n(int[] iArr, ViewPager2 viewPager2, Runnable runnable) {
        if (iArr[0] == 0 && viewPager2.getAdapter() != null && q(viewPager2.getWidth(), false)) {
            iArr[0] = 1;
            v(viewPager2);
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void o(ViewPager2 viewPager2, Runnable runnable) {
        if (viewPager2.getAdapter() != null) {
            v(viewPager2);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void p(ViewPager2 viewPager2, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        ViewTreeObserver viewTreeObserver = viewPager2.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static boolean q(int i, boolean z) {
        return !z && i > 0;
    }

    public static boolean r(int i, int i2) {
        return i2 > 0 && (i <= 0 || i2 != i);
    }

    public static void s(final ViewPager2 viewPager2, final int i, final Runnable runnable) {
        if (viewPager2 == null || viewPager2.getAdapter() == null) {
            return;
        }
        final boolean[] zArr = {false};
        final ViewTreeObserver.OnGlobalLayoutListener[] onGlobalLayoutListenerArr = {aVar};
        final Runnable runnable2 = new Runnable() {
            @Override
            public final void run() {
                adc.i(zArr, onGlobalLayoutListenerArr, viewPager2, runnable);
            }
        };
        final Runnable runnable3 = new Runnable() {
            @Override
            public final void run() {
                adc.k(zArr, viewPager2, runnable2);
            }
        };
        a aVar = new a(zArr, viewPager2, i, onGlobalLayoutListenerArr, runnable3);
        ViewTreeObserver viewTreeObserver = viewPager2.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnGlobalLayoutListener(aVar);
        }
        viewPager2.post(new Runnable() {
            @Override
            public final void run() {
                adc.l(zArr, i, viewPager2, runnable3);
            }
        });
        viewPager2.postDelayed(new Runnable() {
            @Override
            public final void run() {
                adc.m(zArr, viewPager2, runnable2);
            }
        }, 320L);
    }

    public static void t(final ViewPager2 viewPager2, final Runnable runnable) {
        if (viewPager2 == null || viewPager2.getAdapter() == null) {
            return;
        }
        final int[] iArr = {0};
        Runnable runnable2 = new Runnable() {
            @Override
            public final void run() {
                adc.n(iArr, viewPager2, runnable);
            }
        };
        ViewTreeObserver viewTreeObserver = viewPager2.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnGlobalLayoutListener(new b(iArr, viewPager2, runnable));
        }
        viewPager2.post(runnable2);
    }

    public static void u(final ViewPager2 viewPager2, final Runnable runnable) {
        if (viewPager2 == null || viewPager2.getAdapter() == null) {
            return;
        }
        if (viewPager2.getWidth() <= 0) {
            t(viewPager2, runnable);
        } else {
            v(viewPager2);
            viewPager2.post(new Runnable() {
                @Override
                public final void run() {
                    adc.o(viewPager2, runnable);
                }
            });
        }
    }

    public static void v(ViewPager2 viewPager2) {
        if (viewPager2.getAdapter() == null) {
            return;
        }
        int currentItem = viewPager2.getCurrentItem();
        View childAt = viewPager2.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) childAt;
            recyclerView.stopScroll();
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(currentItem, 0);
            }
        }
        viewPager2.setCurrentItem(currentItem, false);
        viewPager2.requestTransform();
    }
}

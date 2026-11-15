package com.yandex.div.core.view2.items;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div.core.view2.divs.widgets.DivTabsLayout;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivSizeUnit;
import defpackage.ae5;
import defpackage.xi;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class DivViewWithItems {
    public static final a c = new a(null);
    public static DivViewWithItems d;
    public final int a;
    public final int b;

    public static final class Gallery extends DivViewWithItems {
        public final DivRecyclerView e;
        public final Direction f;
        public final DisplayMetrics g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Gallery(DivRecyclerView divRecyclerView, Direction direction) {
            super(null);
            y45.j(divRecyclerView, "view");
            y45.j(direction, ICode.CALL.CALL_KEY_DIRECTION);
            this.e = divRecyclerView;
            this.f = direction;
            this.g = divRecyclerView.getResources().getDisplayMetrics();
        }

        @Override
        public int b() {
            return DivViewWithItemsKt.i(this.e, this.f);
        }

        @Override
        public int c() {
            return DivViewWithItemsKt.j(this.e);
        }

        @Override
        public DisplayMetrics d() {
            return this.g;
        }

        @Override
        public int e() {
            return DivViewWithItemsKt.l(this.e);
        }

        @Override
        public int f() {
            return DivViewWithItemsKt.m(this.e);
        }

        @Override
        public void g(int i, DivSizeUnit divSizeUnit, boolean z) {
            y45.j(divSizeUnit, "sizeUnit");
            DivRecyclerView divRecyclerView = this.e;
            DisplayMetrics displayMetricsD = d();
            y45.i(displayMetricsD, "metrics");
            DivViewWithItemsKt.n(divRecyclerView, i, divSizeUnit, displayMetricsD, z);
        }

        @Override
        public void i(boolean z) {
            DivRecyclerView divRecyclerView = this.e;
            DisplayMetrics displayMetricsD = d();
            y45.i(displayMetricsD, "metrics");
            DivViewWithItemsKt.o(divRecyclerView, displayMetricsD, z);
        }

        @Override
        public void j(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                final Context context = this.e.getContext();
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(context) {

                    public final float MILLISECONDS_PER_INCH = 50.0f;

                    @Override
                    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                        y45.j(displayMetrics, "displayMetrics");
                        return this.MILLISECONDS_PER_INCH / displayMetrics.densityDpi;
                    }

                    @Override
                    public int getHorizontalSnapPreference() {
                        return -1;
                    }

                    @Override
                    public int getVerticalSnapPreference() {
                        return -1;
                    }
                };
                linearSmoothScroller.setTargetPosition(i);
                RecyclerView.LayoutManager layoutManager = this.e.getLayoutManager();
                if (layoutManager != null) {
                    layoutManager.startSmoothScroll(linearSmoothScroller);
                    return;
                }
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }

        @Override
        public void k(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                this.e.scrollToPosition(i);
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }
    }

    public static final class a {

        public class C0291a {
            public static final int[] a;

            static {
                int[] iArr = new int[DivGallery.ScrollMode.values().length];
                try {
                    iArr[DivGallery.ScrollMode.DEFAULT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DivGallery.ScrollMode.PAGING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivViewWithItems a() {
            return DivViewWithItems.d;
        }

        public a() {
        }
    }

    public static final class b extends DivViewWithItems {
        public final DivPagerView e;
        public final DisplayMetrics f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivPagerView divPagerView) {
            super(null);
            y45.j(divPagerView, "view");
            this.e = divPagerView;
            this.f = divPagerView.getResources().getDisplayMetrics();
        }

        @Override
        public int b() {
            return this.e.getViewPager().getCurrentItem();
        }

        @Override
        public int c() {
            RecyclerView.Adapter adapter = this.e.getViewPager().getAdapter();
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        @Override
        public DisplayMetrics d() {
            return this.f;
        }

        @Override
        public void i(boolean z) {
            this.e.getViewPager().setCurrentItem(c() - 1, z);
        }

        @Override
        public void j(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                this.e.getViewPager().setCurrentItem(i, true);
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }

        @Override
        public void k(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                this.e.getViewPager().setCurrentItem(i, false);
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }
    }

    public static final class c extends DivViewWithItems {
        public final DivRecyclerView e;
        public final Direction f;
        public final DisplayMetrics g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivRecyclerView divRecyclerView, Direction direction) {
            super(null);
            y45.j(divRecyclerView, "view");
            y45.j(direction, ICode.CALL.CALL_KEY_DIRECTION);
            this.e = divRecyclerView;
            this.f = direction;
            this.g = divRecyclerView.getResources().getDisplayMetrics();
        }

        @Override
        public int b() {
            return DivViewWithItemsKt.i(this.e, this.f);
        }

        @Override
        public int c() {
            return DivViewWithItemsKt.j(this.e);
        }

        @Override
        public DisplayMetrics d() {
            return this.g;
        }

        @Override
        public int e() {
            return DivViewWithItemsKt.l(this.e);
        }

        @Override
        public int f() {
            return DivViewWithItemsKt.m(this.e);
        }

        @Override
        public void g(int i, DivSizeUnit divSizeUnit, boolean z) {
            y45.j(divSizeUnit, "sizeUnit");
            DivRecyclerView divRecyclerView = this.e;
            DisplayMetrics displayMetricsD = d();
            y45.i(displayMetricsD, "metrics");
            DivViewWithItemsKt.n(divRecyclerView, i, divSizeUnit, displayMetricsD, z);
        }

        @Override
        public void i(boolean z) {
            DivRecyclerView divRecyclerView = this.e;
            DisplayMetrics displayMetricsD = d();
            y45.i(displayMetricsD, "metrics");
            DivViewWithItemsKt.o(divRecyclerView, displayMetricsD, z);
        }

        @Override
        public void j(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                this.e.smoothScrollToPosition(i);
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }

        @Override
        public void k(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                this.e.scrollToPosition(i);
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }
    }

    public static final class d extends DivViewWithItems {
        public final DivTabsLayout e;
        public final DisplayMetrics f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivTabsLayout divTabsLayout) {
            super(null);
            y45.j(divTabsLayout, "view");
            this.e = divTabsLayout;
            this.f = divTabsLayout.getResources().getDisplayMetrics();
        }

        @Override
        public int b() {
            return this.e.getViewPager().getCurrentItem();
        }

        @Override
        public int c() {
            PagerAdapter adapter = this.e.getViewPager().getAdapter();
            if (adapter != null) {
                return adapter.getCount();
            }
            return 0;
        }

        @Override
        public DisplayMetrics d() {
            return this.f;
        }

        @Override
        public void i(boolean z) {
            this.e.getViewPager().setCurrentItem(c() - 1, z);
        }

        @Override
        public void j(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                this.e.getViewPager().setCurrentItem(i, true);
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }

        @Override
        public void k(int i) {
            int iC = c();
            if (i >= 0 && i < iC) {
                this.e.getViewPager().setCurrentItem(i, false);
                return;
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i(i + " is not in range [0, " + iC + ')');
            }
        }
    }

    public DivViewWithItems(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static void h(DivViewWithItems divViewWithItems, int i, DivSizeUnit divSizeUnit, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scrollTo");
        }
        if ((i2 & 2) != 0) {
            divSizeUnit = DivSizeUnit.PX;
        }
        if ((i2 & 4) != 0) {
            z = true;
        }
        divViewWithItems.g(i, divSizeUnit, z);
    }

    public abstract int b();

    public abstract int c();

    public abstract DisplayMetrics d();

    public int e() {
        return this.b;
    }

    public int f() {
        return this.a;
    }

    public void g(int i, DivSizeUnit divSizeUnit, boolean z) {
        y45.j(divSizeUnit, "sizeUnit");
    }

    public abstract void i(boolean z);

    public abstract void j(int i);

    public abstract void k(int i);

    public DivViewWithItems() {
    }
}

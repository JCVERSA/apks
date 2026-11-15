package com.yandex.div.core.view2.divs.gallery;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.DivLinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.state.UpdateStateScrollListener;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.DivBaseBinder;
import com.yandex.div.core.view2.divs.ReleasingViewPool;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div.internal.widget.PaddingItemDecoration;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivCollectionItemBuilder;
import com.yandex.div2.DivGallery;
import defpackage.ae5;
import defpackage.bh2;
import defpackage.cd4;
import defpackage.e74;
import defpackage.i39;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.ow7;
import defpackage.pdc;
import defpackage.rg2;
import defpackage.rj2;
import defpackage.uv2;
import defpackage.wu2;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import defpackage.zn2;
import java.util.List;

public final class DivGalleryBinder extends wu2 {
    public final DivBaseBinder b;
    public final DivViewCreator c;
    public final oj8 d;
    public final zn2 e;
    public final float f;

    public class a {
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

    public static final class b implements View.OnLayoutChangeListener {
        public final DivRecyclerView b;
        public final RecyclerView.ItemAnimator c;

        public b(DivRecyclerView divRecyclerView, RecyclerView.ItemAnimator itemAnimator) {
            this.b = divRecyclerView;
            this.c = itemAnimator;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            if (this.b.getItemAnimator() == null) {
                this.b.setItemAnimator(this.c);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGalleryBinder(DivBaseBinder divBaseBinder, DivViewCreator divViewCreator, oj8 oj8Var, zn2 zn2Var, float f) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(oj8Var, "divBinder");
        y45.j(zn2Var, "divPatchCache");
        this.b = divBaseBinder;
        this.c = divViewCreator;
        this.d = oj8Var;
        this.e = zn2Var;
        this.f = f;
    }

    public final void g(final DivRecyclerView divRecyclerView, final com.yandex.div.core.view2.a aVar, final DivGallery divGallery, DivStatePath divStatePath) {
        oj3 oj3VarB = aVar.b();
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m242invoke(obj);
                return zfb.a;
            }

            public final void m242invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.n(divRecyclerView, aVar, divGallery);
            }
        };
        divRecyclerView.addSubscription(divGallery.x.e(oj3VarB, e74Var));
        divRecyclerView.addSubscription(divGallery.D.e(oj3VarB, e74Var));
        divRecyclerView.addSubscription(divGallery.C.e(oj3VarB, e74Var));
        divRecyclerView.addSubscription(divGallery.t.e(oj3VarB, e74Var));
        divRecyclerView.addSubscription(divGallery.z.e(oj3VarB, e74Var));
        Expression expression = divGallery.h;
        if (expression != null) {
            divRecyclerView.addSubscription(expression.e(oj3VarB, e74Var));
        }
        divRecyclerView.setRecycledViewPool(new ReleasingViewPool(aVar.a().getReleaseViewVisitor$div_release()));
        divRecyclerView.setScrollingTouchSlop(1);
        divRecyclerView.setClipToPadding(false);
        divRecyclerView.setOverScrollMode(2);
        List listD = bh2.d(divGallery, oj3VarB);
        Object obj = this.d.get();
        y45.i(obj, "divBinder.get()");
        divRecyclerView.setAdapter(new DivGalleryAdapter(listD, aVar, (rg2) obj, this.c, divStatePath));
        h(divRecyclerView, aVar, divGallery);
        k(divRecyclerView);
        n(divRecyclerView, aVar, divGallery);
    }

    public final void h(final DivRecyclerView divRecyclerView, final com.yandex.div.core.view2.a aVar, DivGallery divGallery) {
        final DivCollectionItemBuilder divCollectionItemBuilder = divGallery.s;
        if (divCollectionItemBuilder == null) {
            return;
        }
        BaseDivViewExtensionsKt.C(divCollectionItemBuilder, aVar.b(), new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m243invoke(obj);
                return zfb.a;
            }

            public final void m243invoke(Object obj) {
                y45.j(obj, "it");
                DivGalleryAdapter divGalleryAdapter = (DivGalleryAdapter) divRecyclerView.getAdapter();
                if (divGalleryAdapter != null) {
                    divGalleryAdapter.y(bh2.a(divCollectionItemBuilder, aVar.b()));
                }
            }
        });
    }

    public void i(com.yandex.div.core.view2.a aVar, DivRecyclerView divRecyclerView, Div.d dVar, DivStatePath divStatePath) {
        y45.j(aVar, "context");
        y45.j(divRecyclerView, "view");
        y45.j(dVar, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        Div.d div = divRecyclerView != null ? divRecyclerView.getDiv() : null;
        if (dVar != div) {
            this.b.N(aVar, divRecyclerView, dVar, div);
            g(divRecyclerView, aVar, dVar.c(), divStatePath);
            return;
        }
        RecyclerView.Adapter adapter = divRecyclerView.getAdapter();
        DivGalleryAdapter divGalleryAdapter = adapter instanceof DivGalleryAdapter ? (DivGalleryAdapter) adapter : null;
        if (divGalleryAdapter == null) {
            return;
        }
        divGalleryAdapter.w(divRecyclerView, this.e, aVar);
        Object obj = this.d.get();
        y45.i(obj, "divBinder.get()");
        BaseDivViewExtensionsKt.E(divRecyclerView, aVar, (rg2) obj);
    }

    public final void j(DivRecyclerView divRecyclerView) {
        int itemDecorationCount = divRecyclerView.getItemDecorationCount();
        while (true) {
            itemDecorationCount--;
            if (-1 >= itemDecorationCount) {
                return;
            } else {
                divRecyclerView.removeItemDecorationAt(itemDecorationCount);
            }
        }
    }

    public final void k(DivRecyclerView divRecyclerView) {
        RecyclerView.ItemAnimator itemAnimator = divRecyclerView.getItemAnimator();
        divRecyclerView.setItemAnimator(null);
        if (!pdc.d(divRecyclerView) || divRecyclerView.isLayoutRequested()) {
            divRecyclerView.addOnLayoutChangeListener(new b(divRecyclerView, itemAnimator));
        } else if (divRecyclerView.getItemAnimator() == null) {
            divRecyclerView.setItemAnimator(itemAnimator);
        }
    }

    public final void l(DivRecyclerView divRecyclerView, int i, int i2, ScrollPosition scrollPosition) {
        Object layoutManager = divRecyclerView.getLayoutManager();
        rj2 rj2Var = layoutManager instanceof rj2 ? (rj2) layoutManager : null;
        if (rj2Var == null) {
            return;
        }
        if (i2 == 0 && i == 0) {
            rj2Var.instantScrollToPosition(i, scrollPosition);
        } else {
            rj2Var.instantScrollToPositionWithOffset(i, i2, scrollPosition);
        }
    }

    public final void m(DivRecyclerView divRecyclerView, RecyclerView.ItemDecoration itemDecoration) {
        j(divRecyclerView);
        divRecyclerView.addItemDecoration(itemDecoration);
    }

    public final void n(DivRecyclerView divRecyclerView, com.yandex.div.core.view2.a aVar, DivGallery divGallery) {
        PaddingItemDecoration paddingItemDecoration;
        int iB;
        int paddingStart;
        DisplayMetrics displayMetrics = divRecyclerView.getResources().getDisplayMetrics();
        oj3 oj3VarB = aVar.b();
        int i = ((DivGallery.Orientation) divGallery.x.b(oj3VarB)) == DivGallery.Orientation.HORIZONTAL ? 0 : 1;
        boolean z = divGallery.D.b(oj3VarB) == DivGallery.Scrollbar.AUTO;
        divRecyclerView.setVerticalScrollBarEnabled(z && i == 1);
        divRecyclerView.setHorizontalScrollBarEnabled(z && i == 0);
        divRecyclerView.setScrollbarFadingEnabled(false);
        Expression expression = divGallery.h;
        long jLongValue = expression != null ? ((Number) expression.b(oj3VarB)).longValue() : 1L;
        divRecyclerView.setClipChildren(false);
        if (jLongValue == 1) {
            Long l = (Long) divGallery.t.b(oj3VarB);
            y45.i(displayMetrics, "metrics");
            paddingItemDecoration = new PaddingItemDecoration(0, BaseDivViewExtensionsKt.K(l, displayMetrics), 0, 0, 0, 0, i, 61, null);
        } else {
            Long l2 = (Long) divGallery.t.b(oj3VarB);
            y45.i(displayMetrics, "metrics");
            int iK = BaseDivViewExtensionsKt.K(l2, displayMetrics);
            Expression expression2 = divGallery.k;
            if (expression2 == null) {
                expression2 = divGallery.t;
            }
            paddingItemDecoration = new PaddingItemDecoration(0, iK, BaseDivViewExtensionsKt.K((Long) expression2.b(oj3VarB), displayMetrics), 0, 0, 0, i, 57, null);
        }
        m(divRecyclerView, paddingItemDecoration);
        DivGallery.ScrollMode scrollMode = (DivGallery.ScrollMode) divGallery.C.b(oj3VarB);
        divRecyclerView.setScrollMode(scrollMode);
        int i2 = a.a[scrollMode.ordinal()];
        if (i2 == 1) {
            PagerSnapStartHelper pagerSnapStartHelper = divRecyclerView.getPagerSnapStartHelper();
            if (pagerSnapStartHelper != null) {
                pagerSnapStartHelper.attachToRecyclerView(null);
            }
        } else if (i2 == 2) {
            Long l3 = (Long) divGallery.t.b(oj3VarB);
            DisplayMetrics displayMetrics2 = divRecyclerView.getResources().getDisplayMetrics();
            y45.i(displayMetrics2, "resources.displayMetrics");
            int iK2 = BaseDivViewExtensionsKt.K(l3, displayMetrics2);
            PagerSnapStartHelper pagerSnapStartHelper2 = divRecyclerView.getPagerSnapStartHelper();
            if (pagerSnapStartHelper2 != null) {
                pagerSnapStartHelper2.b(iK2);
            } else {
                pagerSnapStartHelper2 = new PagerSnapStartHelper(iK2);
                divRecyclerView.setPagerSnapStartHelper(pagerSnapStartHelper2);
            }
            pagerSnapStartHelper2.attachToRecyclerView(divRecyclerView);
        }
        rj2 divLinearLayoutManager = jLongValue == 1 ? new DivLinearLayoutManager(aVar, divRecyclerView, divGallery, i) : new DivGridLayoutManager(aVar, divRecyclerView, divGallery, i);
        divRecyclerView.setLayoutManager(divLinearLayoutManager.toLayoutManager());
        divRecyclerView.setScrollInterceptionAngle(this.f);
        divRecyclerView.clearOnScrollListeners();
        uv2 currentState = aVar.a().getCurrentState();
        if (currentState != null) {
            String id = divGallery.getId();
            if (id == null) {
                id = String.valueOf(divGallery.hashCode());
            }
            uv2.a aVarA = currentState.a(id);
            cd4 cd4Var = aVarA instanceof cd4 ? (cd4) aVarA : null;
            if (cd4Var != null) {
                iB = cd4Var.b();
            } else {
                long jLongValue2 = ((Number) divGallery.l.b(oj3VarB)).longValue();
                long j = jLongValue2 >> 31;
                if (j == 0 || j == -1) {
                    iB = (int) jLongValue2;
                } else {
                    ae5 ae5Var = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + jLongValue2 + "' to Int");
                    }
                    iB = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
            }
            if (cd4Var != null) {
                paddingStart = cd4Var.a();
            } else if (iB != 0) {
                paddingStart = 0;
            } else {
                paddingStart = i == 0 ? divRecyclerView.getPaddingStart() : divRecyclerView.getPaddingTop();
            }
            l(divRecyclerView, iB, paddingStart, i39.a(scrollMode));
            divRecyclerView.addOnScrollListener(new UpdateStateScrollListener(id, currentState, divLinearLayoutManager));
        }
        divRecyclerView.addOnScrollListener(new DivGalleryScrollListener(aVar, divRecyclerView, divLinearLayoutManager, divGallery));
        divRecyclerView.setOnInterceptTouchEventListener(((Boolean) divGallery.z.b(oj3VarB)).booleanValue() ? ow7.a : null);
    }
}

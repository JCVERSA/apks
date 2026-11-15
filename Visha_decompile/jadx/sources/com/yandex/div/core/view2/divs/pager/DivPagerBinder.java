package com.yandex.div.core.view2.divs.pager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.state.UpdateStateChangePageCallback;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.core.view2.divs.DivBaseBinder;
import com.yandex.div.core.view2.divs.ReleasingViewPool;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivCollectionItemBuilder;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivPager;
import com.yandex.div2.DivPagerLayoutMode;
import defpackage.ae5;
import defpackage.az6;
import defpackage.b5;
import defpackage.bh2;
import defpackage.e74;
import defpackage.ex3;
import defpackage.jpc;
import defpackage.n08;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.ow7;
import defpackage.pdc;
import defpackage.qc2;
import defpackage.rg2;
import defpackage.sn2;
import defpackage.tn2;
import defpackage.un2;
import defpackage.uv2;
import defpackage.wu2;
import defpackage.xi;
import defpackage.xv7;
import defpackage.y45;
import defpackage.zfb;
import defpackage.zn2;
import defpackage.zv7;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class DivPagerBinder extends wu2 {
    public final DivBaseBinder b;
    public final DivViewCreator c;
    public final oj8 d;
    public final zn2 e;
    public final DivActionBinder f;
    public final xv7 g;
    public final b5 h;

    public static final class a implements View.OnLayoutChangeListener {
        public final ViewPager2 b;

        public a(ViewPager2 viewPager2) {
            this.b = viewPager2;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            this.b.requestTransform();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivPagerBinder(DivBaseBinder divBaseBinder, DivViewCreator divViewCreator, oj8 oj8Var, zn2 zn2Var, DivActionBinder divActionBinder, xv7 xv7Var, b5 b5Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(oj8Var, "divBinder");
        y45.j(zn2Var, "divPatchCache");
        y45.j(divActionBinder, "divActionBinder");
        y45.j(xv7Var, "pagerIndicatorConnector");
        y45.j(b5Var, "accessibilityStateProvider");
        this.b = divBaseBinder;
        this.c = divViewCreator;
        this.d = oj8Var;
        this.e = zn2Var;
        this.f = divActionBinder;
        this.g = xv7Var;
        this.h = b5Var;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:26:0x00e9  */
    public final void h(DivPagerView divPagerView, DivPager divPager, oj3 oj3Var, SparseArray sparseArray, DivPagerAdapter divPagerAdapter) {
        un2 jpcVar;
        un2 az6Var;
        un2 un2Var;
        sn2 sn2Var;
        RecyclerView.ItemDecoration wrapContentPageSizeItemDecoration;
        DivPager.ItemAlignment itemAlignment;
        RecyclerView recyclerView = divPagerView.getRecyclerView();
        if (recyclerView == null) {
            return;
        }
        boolean zN = n(divPager, oj3Var);
        divPagerView.setOrientation(!zN ? 1 : 0);
        divPagerAdapter.L((DivPager.ItemAlignment) divPager.i.b(oj3Var));
        if (pdc.d(divPagerView)) {
            DisplayMetrics displayMetrics = divPagerView.getResources().getDisplayMetrics();
            ViewPager2 viewPager = divPagerView.getViewPager();
            int width = zN ? viewPager.getWidth() : viewPager.getHeight();
            DivFixedSize divFixedSize = divPager.s;
            y45.i(displayMetrics, "metrics");
            float fJ0 = BaseDivViewExtensionsKt.J0(divFixedSize, displayMetrics, oj3Var);
            boolean zBooleanValue = ((Boolean) divPager.q.b(oj3Var)).booleanValue();
            DivPager.ItemAlignment itemAlignment2 = (DivPager.ItemAlignment) divPager.D.b(oj3Var);
            sn2 sn2Var2 = new sn2(divPager.t(), oj3Var, divPagerView, displayMetrics, zN, itemAlignment2);
            DivPagerLayoutMode divPagerLayoutMode = divPager.u;
            if (!(divPagerLayoutMode instanceof DivPagerLayoutMode.d)) {
                if (divPagerLayoutMode instanceof DivPagerLayoutMode.b) {
                    az6Var = new az6(((DivPagerLayoutMode.b) divPagerLayoutMode).c(), oj3Var, displayMetrics, width, fJ0, sn2Var2, itemAlignment2);
                } else {
                    if (!(divPagerLayoutMode instanceof DivPagerLayoutMode.c)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    jpcVar = new jpc(recyclerView, zN, width, sn2Var2, itemAlignment2);
                }
                if (az6Var instanceof ex3) {
                    ex3 ex3Var = (ex3) az6Var;
                    un2Var = az6Var;
                    new FixedPageSizeOffScreenPagesController(divPagerView, width, fJ0, ex3Var, sn2Var2, zBooleanValue, divPagerAdapter);
                    sn2Var = sn2Var2;
                    wrapContentPageSizeItemDecoration = new FixedPageSizeItemDecoration(sn2Var, ex3Var);
                    itemAlignment = itemAlignment2;
                } else {
                    un2Var = az6Var;
                    sn2Var = sn2Var2;
                    new WrapContentPageSizeOffScreenPagesController(divPagerView, fJ0, un2Var, sn2Var, divPagerAdapter);
                    itemAlignment = itemAlignment2;
                    wrapContentPageSizeItemDecoration = new WrapContentPageSizeItemDecoration(width, sn2Var, itemAlignment);
                }
                q(divPagerView.getViewPager(), wrapContentPageSizeItemDecoration);
                divPagerView.setPageTransformer$div_release(new DivPagerPageTransformer(recyclerView, oj3Var, sparseArray, width, divPager.z, new tn2(width, fJ0, un2Var, sn2Var, zBooleanValue, divPagerAdapter, itemAlignment), zN));
            }
            jpcVar = new n08(((DivPagerLayoutMode.d) divPagerLayoutMode).c(), oj3Var, width, sn2Var2, itemAlignment2);
            az6Var = jpcVar;
            if (az6Var instanceof ex3) {
                ex3 ex3Var2 = (ex3) az6Var;
                un2Var = az6Var;
                new FixedPageSizeOffScreenPagesController(divPagerView, width, fJ0, ex3Var2, sn2Var2, zBooleanValue, divPagerAdapter);
                sn2Var = sn2Var2;
                wrapContentPageSizeItemDecoration = new FixedPageSizeItemDecoration(sn2Var, ex3Var2);
                itemAlignment = itemAlignment2;
            } else {
                un2Var = az6Var;
                sn2Var = sn2Var2;
                new WrapContentPageSizeOffScreenPagesController(divPagerView, fJ0, un2Var, sn2Var, divPagerAdapter);
                itemAlignment = itemAlignment2;
                wrapContentPageSizeItemDecoration = new WrapContentPageSizeItemDecoration(width, sn2Var, itemAlignment);
            }
            q(divPagerView.getViewPager(), wrapContentPageSizeItemDecoration);
            divPagerView.setPageTransformer$div_release(new DivPagerPageTransformer(recyclerView, oj3Var, sparseArray, width, divPager.z, new tn2(width, fJ0, un2Var, sn2Var, zBooleanValue, divPagerAdapter, itemAlignment), zN));
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x01db  */
    /* JADX WARN: Code duplicated, block: B:70:0x0224  */
    public final void i(final DivPagerView divPagerView, com.yandex.div.core.view2.a aVar, final DivPager divPager, DivStatePath divStatePath) {
        long jLongValue;
        long j;
        int i;
        int iG;
        Expression expression;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        RecyclerView recyclerView = divPagerView.getRecyclerView();
        if (recyclerView == null) {
            return;
        }
        Div2View div2ViewA = aVar.a();
        final oj3 oj3VarB = aVar.b();
        final SparseArray sparseArray = new SparseArray();
        b5 b5Var = this.h;
        Context context = divPagerView.getContext();
        y45.i(context, "context");
        boolean zC = b5Var.c(context);
        divPagerView.setRecycledViewPool(new ReleasingViewPool(div2ViewA.getReleaseViewVisitor$div_release()));
        List listE = bh2.e(divPager, oj3VarB);
        Object obj = this.d.get();
        y45.i(obj, "divBinder.get()");
        final DivPagerAdapter divPagerAdapter = new DivPagerAdapter(listE, aVar, (rg2) obj, sparseArray, this.c, divStatePath, zC, divPagerView);
        divPagerView.getViewPager().setAdapter(divPagerAdapter);
        j(divPagerView, divPager, oj3VarB);
        DivPagerView.a pagerOnItemsCountChange = divPagerView.getPagerOnItemsCountChange();
        if (pagerOnItemsCountChange != null) {
            pagerOnItemsCountChange.a();
        }
        divPagerView.setClipToPage$div_release(div2ViewA.getDiv2Component().w());
        divPagerView.setOrientation(!n(divPager, oj3VarB) ? 1 : 0);
        divPagerAdapter.L((DivPager.ItemAlignment) divPager.i.b(oj3VarB));
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                m244invoke(obj2);
                return zfb.a;
            }

            public final void m244invoke(Object obj2) {
                y45.j(obj2, "<anonymous parameter 0>");
                this.this$0.h(divPagerView, divPager, oj3VarB, sparseArray, divPagerAdapter);
            }
        };
        DivEdgeInsets divEdgeInsetsT = divPager.t();
        divPagerView.addSubscription((divEdgeInsetsT == null || (expression4 = divEdgeInsetsT.c) == null) ? null : expression4.e(oj3VarB, e74Var));
        DivEdgeInsets divEdgeInsetsT2 = divPager.t();
        divPagerView.addSubscription((divEdgeInsetsT2 == null || (expression3 = divEdgeInsetsT2.d) == null) ? null : expression3.e(oj3VarB, e74Var));
        DivEdgeInsets divEdgeInsetsT3 = divPager.t();
        divPagerView.addSubscription((divEdgeInsetsT3 == null || (expression2 = divEdgeInsetsT3.f) == null) ? null : expression2.e(oj3VarB, e74Var));
        DivEdgeInsets divEdgeInsetsT4 = divPager.t();
        divPagerView.addSubscription((divEdgeInsetsT4 == null || (expression = divEdgeInsetsT4.a) == null) ? null : expression.e(oj3VarB, e74Var));
        divPagerView.addSubscription(divPager.s.b.e(oj3VarB, e74Var));
        divPagerView.addSubscription(divPager.s.a.e(oj3VarB, e74Var));
        divPagerView.addSubscription(divPager.D.e(oj3VarB, e74Var));
        divPagerView.addSubscription(divPager.i.e(oj3VarB, e74Var));
        divPagerView.addSubscription(divPager.x.e(oj3VarB, e74Var));
        divPagerView.addSubscription(o(divPagerView.getViewPager(), divPager, e74Var));
        DivPagerLayoutMode divPagerLayoutMode = divPager.u;
        if (divPagerLayoutMode instanceof DivPagerLayoutMode.b) {
            DivPagerLayoutMode.b bVar = (DivPagerLayoutMode.b) divPagerLayoutMode;
            divPagerView.addSubscription(bVar.c().a.b.e(oj3VarB, e74Var));
            divPagerView.addSubscription(bVar.c().a.a.e(oj3VarB, e74Var));
        } else if (divPagerLayoutMode instanceof DivPagerLayoutMode.d) {
            divPagerView.addSubscription(((DivPagerLayoutMode.d) divPagerLayoutMode).c().a.a.e(oj3VarB, e74Var));
        } else {
            boolean z = divPagerLayoutMode instanceof DivPagerLayoutMode.c;
        }
        divPagerView.setPagerSelectedActionsDispatcher$div_release(new PagerSelectedActionsDispatcher(div2ViewA, divPagerAdapter.getItemsToShow(), this.f));
        divPagerView.setChangePageCallbackForLogger$div_release(new DivPagerPageChangeCallback(divPager, divPagerAdapter.getItemsToShow(), aVar, recyclerView, divPagerView));
        uv2 currentState = div2ViewA.getCurrentState();
        if (currentState != null) {
            String id = divPager.getId();
            if (id == null) {
                id = String.valueOf(divPager.hashCode());
            }
            uv2.a aVarA = currentState.a(id);
            zv7 zv7Var = aVarA instanceof zv7 ? (zv7) aVarA : null;
            divPagerView.setChangePageCallbackForState$div_release(new UpdateStateChangePageCallback(id, currentState));
            if (zv7Var != null) {
                Integer numValueOf = Integer.valueOf(zv7Var.a());
                Integer num = numValueOf.intValue() < divPagerAdapter.getRealPosition(divPagerAdapter.getItemsToShow().size()) ? numValueOf : null;
                if (num != null) {
                    iG = num.intValue();
                } else {
                    jLongValue = ((Number) divPager.j.b(oj3VarB)).longValue();
                    j = jLongValue >> 31;
                    if (j != 0 || j == -1) {
                        i = (int) jLongValue;
                    } else {
                        ae5 ae5Var = ae5.a;
                        if (xi.o()) {
                            xi.i("Unable convert '" + jLongValue + "' to Int");
                        }
                        i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                    }
                    iG = divPagerAdapter.G(i);
                }
            } else {
                jLongValue = ((Number) divPager.j.b(oj3VarB)).longValue();
                j = jLongValue >> 31;
                if (j != 0) {
                    i = (int) jLongValue;
                } else {
                    i = (int) jLongValue;
                }
                iG = divPagerAdapter.G(i);
            }
            divPagerView.setCurrentItem$div_release(iG);
        }
        divPagerView.addSubscription(divPager.A.f(oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj2) {
                invoke(((Boolean) obj2).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z2) {
                divPagerView.setOnInterceptTouchEventListener(z2 ? ow7.a : null);
            }
        }));
        k(divPagerView, aVar, divPager);
        if (zC) {
            divPagerView.enableAccessibility();
        }
    }

    public final void j(final DivPagerView divPagerView, DivPager divPager, oj3 oj3Var) {
        View childAt = divPagerView.getViewPager().getChildAt(0);
        y45.h(childAt, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        final RecyclerView recyclerView = (RecyclerView) childAt;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        divPager.q.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v2, types: [androidx.recyclerview.widget.RecyclerView] */
            /* JADX WARN: Type inference failed for: r3v10 */
            /* JADX WARN: Type inference failed for: r3v11 */
            /* JADX WARN: Type inference failed for: r3v7, types: [androidx.recyclerview.widget.RecyclerView$OnScrollListener] */
            /* JADX WARN: Type inference failed for: r3v9, types: [T, com.yandex.div.core.view2.divs.pager.DivPagerBinder$createInfiniteScrollListener$1] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            public final void invoke(boolean z) {
                ?? r3;
                RecyclerView.Adapter adapter = divPagerView.getViewPager().getAdapter();
                DivPagerAdapter divPagerAdapter = adapter instanceof DivPagerAdapter ? (DivPagerAdapter) adapter : null;
                if (divPagerAdapter != null) {
                    divPagerAdapter.M(z);
                }
                if (!z) {
                    RecyclerView.OnScrollListener onScrollListener = ref$ObjectRef.element;
                    if (onScrollListener != null) {
                        recyclerView.removeOnScrollListener(onScrollListener);
                        return;
                    }
                    return;
                }
                RecyclerView.OnScrollListener onScrollListener2 = ref$ObjectRef.element;
                if (onScrollListener2 == null) {
                    r3 = onScrollListener2;
                    ?? M = this.m(divPagerView);
                    ref$ObjectRef.element = M;
                    r3 = M;
                }
                r3 = onScrollListener2;
                recyclerView.addOnScrollListener(r3);
            }
        });
    }

    public final void k(final DivPagerView divPagerView, final com.yandex.div.core.view2.a aVar, DivPager divPager) {
        final DivCollectionItemBuilder divCollectionItemBuilder = divPager.r;
        if (divCollectionItemBuilder == null) {
            return;
        }
        BaseDivViewExtensionsKt.C(divCollectionItemBuilder, aVar.b(), new e74() {

            public static final class a implements View.OnLayoutChangeListener {
                public final DivPagerView b;

                public a(DivPagerView divPagerView) {
                    this.b = divPagerView;
                }

                @Override
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    view.removeOnLayoutChangeListener(this);
                    this.b.getViewPager().requestTransform();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m245invoke(obj);
                return zfb.a;
            }

            public final void m245invoke(Object obj) {
                y45.j(obj, "it");
                DivPagerAdapter divPagerAdapter = (DivPagerAdapter) divPagerView.getViewPager().getAdapter();
                if (divPagerAdapter != null) {
                    divPagerAdapter.y(bh2.a(divCollectionItemBuilder, aVar.b()));
                }
                DivPagerView.a pagerOnItemsCountChange = divPagerView.getPagerOnItemsCountChange();
                if (pagerOnItemsCountChange != null) {
                    pagerOnItemsCountChange.a();
                }
                RecyclerView recyclerView = divPagerView.getRecyclerView();
                if (recyclerView != null) {
                    recyclerView.scrollToPosition(divPagerView.getCurrentItem$div_release());
                }
                divPagerView.getViewPager().addOnLayoutChangeListener(new a(divPagerView));
            }
        });
    }

    public void l(com.yandex.div.core.view2.a aVar, DivPagerView divPagerView, Div.j jVar, DivStatePath divStatePath) {
        y45.j(aVar, "context");
        y45.j(divPagerView, "view");
        y45.j(jVar, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        this.g.c(divPagerView, jVar.c());
        Div.j div = divPagerView.getDiv();
        if (jVar != div) {
            if (div != null) {
                divPagerView.setChangePageCallbackForOffScreenPages$div_release(null);
                p(divPagerView.getViewPager());
                divPagerView.setPageTransformer$div_release(null);
            }
            this.b.N(aVar, divPagerView, jVar, div);
            i(divPagerView, aVar, jVar.c(), divStatePath);
            return;
        }
        ViewPager2 viewPager = divPagerView.getViewPager();
        RecyclerView.Adapter adapter = viewPager.getAdapter();
        DivPagerAdapter divPagerAdapter = adapter instanceof DivPagerAdapter ? (DivPagerAdapter) adapter : null;
        if (divPagerAdapter == null) {
            return;
        }
        if (divPagerAdapter.w(divPagerView.getRecyclerView(), this.e, aVar)) {
            DivPagerView.a pagerOnItemsCountChange = divPagerView.getPagerOnItemsCountChange();
            if (pagerOnItemsCountChange != null) {
                pagerOnItemsCountChange.a();
                return;
            }
            return;
        }
        Object obj = this.d.get();
        y45.i(obj, "divBinder.get()");
        BaseDivViewExtensionsKt.E(divPagerView, aVar, (rg2) obj);
        viewPager.addOnLayoutChangeListener(new a(viewPager));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.yandex.div.core.view2.divs.pager.DivPagerBinder$createInfiniteScrollListener$1] */
    public final DivPagerBinder$createInfiniteScrollListener$1 m(final DivPagerView divPagerView) {
        return new RecyclerView.OnScrollListener() {
            @Override
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                y45.j(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                y45.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                RecyclerView.Adapter adapter = divPagerView.getViewPager().getAdapter();
                int itemCount = adapter != null ? adapter.getItemCount() : 0;
                int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                if (iFindFirstVisibleItemPosition == itemCount - 2 && dx > 0) {
                    recyclerView.scrollToPosition(2);
                } else {
                    if (iFindLastVisibleItemPosition != 1 || dx >= 0) {
                        return;
                    }
                    recyclerView.scrollToPosition(itemCount - 3);
                }
            }
        };
    }

    public final boolean n(DivPager divPager, oj3 oj3Var) {
        return divPager.x.b(oj3Var) == DivPager.Orientation.HORIZONTAL;
    }

    public final qc2 o(ViewPager2 viewPager2, DivPager divPager, e74 e74Var) {
        return new DivPagerBinder$observeSizeChange$1(viewPager2, e74Var, divPager);
    }

    public final void p(ViewPager2 viewPager2) {
        int itemDecorationCount = viewPager2.getItemDecorationCount();
        for (int i = 0; i < itemDecorationCount; i++) {
            viewPager2.removeItemDecorationAt(i);
        }
    }

    public final void q(ViewPager2 viewPager2, RecyclerView.ItemDecoration itemDecoration) {
        p(viewPager2);
        viewPager2.addItemDecoration(itemDecoration);
    }
}

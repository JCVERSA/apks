package com.yandex.div.core.view2.items;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div.core.view2.divs.widgets.DivTabsLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivSizeUnit;
import defpackage.oj3;
import defpackage.sv2;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {
    public static final a b = new a(null);
    public final DivViewWithItems a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static b b(a aVar, String str, sv2 sv2Var, oj3 oj3Var, Direction direction, int i, Object obj) {
            if ((i & 8) != 0) {
                direction = Direction.NEXT;
            }
            return aVar.a(str, sv2Var, oj3Var, direction);
        }

        public final b a(String str, sv2 sv2Var, oj3 oj3Var, Direction direction) {
            y45.j(str, TtmlNode.ATTR_ID);
            y45.j(sv2Var, "view");
            y45.j(oj3Var, "resolver");
            y45.j(direction, ICode.CALL.CALL_KEY_DIRECTION);
            View viewFindViewWithTag = sv2Var.getView().findViewWithTag(str);
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (viewFindViewWithTag == null) {
                return null;
            }
            DivViewWithItems divViewWithItemsA = DivViewWithItems.c.a();
            if (divViewWithItemsA == null) {
                if (viewFindViewWithTag instanceof DivRecyclerView) {
                    DivRecyclerView divRecyclerView = (DivRecyclerView) viewFindViewWithTag;
                    Div.d div = divRecyclerView.getDiv();
                    y45.g(div);
                    int i = DivViewWithItems.a.C0291a.a[((DivGallery.ScrollMode) div.c().C.b(oj3Var)).ordinal()];
                    if (i == 1) {
                        divViewWithItemsA = new DivViewWithItems.Gallery(divRecyclerView, direction);
                    } else {
                        if (i != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        divViewWithItemsA = new DivViewWithItems.c(divRecyclerView, direction);
                    }
                } else if (viewFindViewWithTag instanceof DivPagerView) {
                    divViewWithItemsA = new DivViewWithItems.b((DivPagerView) viewFindViewWithTag);
                } else {
                    divViewWithItemsA = viewFindViewWithTag instanceof DivTabsLayout ? new DivViewWithItems.d((DivTabsLayout) viewFindViewWithTag) : null;
                }
            }
            if (divViewWithItemsA == null) {
                return null;
            }
            return new b(divViewWithItemsA, defaultConstructorMarker);
        }

        public a() {
        }
    }

    public b(DivViewWithItems divViewWithItems, DefaultConstructorMarker defaultConstructorMarker) {
        this(divViewWithItems);
    }

    public final void a(String str, int i, boolean z) {
        int iD;
        c cVarB = b(str);
        if (i > 0) {
            iD = cVarB.b(i);
        } else if (i >= 0) {
            return;
        } else {
            iD = cVarB.d(-i);
        }
        g(iD, z);
    }

    public final c b(String str) {
        return c.b.a(str, this.a.b(), this.a.c(), this.a.f(), this.a.e(), this.a.d());
    }

    public final void c(String str, int i, boolean z) {
        if (i == 0) {
            return;
        }
        DivViewWithItems.h(this.a, b(str).c(i), null, z, 2, null);
    }

    public final void d(int i, boolean z) {
        this.a.g(i, DivSizeUnit.DP, z);
    }

    public final void e(boolean z) {
        this.a.i(z);
    }

    public final void f(boolean z) {
        g(0, z);
    }

    public final void g(int i, boolean z) {
        if (z) {
            this.a.j(i);
        } else {
            this.a.k(i);
        }
    }

    public b(DivViewWithItems divViewWithItems) {
        this.a = divViewWithItems;
    }
}

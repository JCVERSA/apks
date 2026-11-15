package com.yandex.div.core.view2.reuse;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.yandex.div.core.view2.divs.gallery.DivGalleryAdapter;
import com.yandex.div.core.view2.divs.pager.DivPagerAdapter;
import com.yandex.div.core.view2.divs.widgets.DivCustomWrapper;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivContainer;
import com.yandex.div2.DivCustom;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivGrid;
import com.yandex.div2.DivPager;
import defpackage.bh2;
import defpackage.fpa;
import defpackage.g3;
import defpackage.oj3;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class b extends fpa {
    public final View e;
    public final b f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(zl2 zl2Var, int i, View view, b bVar) {
        super(zl2Var, i);
        y45.j(zl2Var, "item");
        y45.j(view, "view");
        this.e = view;
        this.f = bVar;
    }

    public static List g(b bVar, b bVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            bVar2 = null;
        }
        return bVar.f(bVar2);
    }

    public final List f(b bVar) {
        Div divB = b();
        if (!(divB instanceof Div.q) && !(divB instanceof Div.g) && !(divB instanceof Div.e) && !(divB instanceof Div.l) && !(divB instanceof Div.h) && !(divB instanceof Div.m) && !(divB instanceof Div.i) && !(divB instanceof Div.k) && !(divB instanceof Div.r) && !(divB instanceof Div.o)) {
            if (divB instanceof Div.b) {
                return j(((Div.b) b()).c(), d().d(), bVar);
            }
            if (divB instanceof Div.c) {
                return k(((Div.c) b()).c(), d().d(), bVar);
            }
            if (divB instanceof Div.f) {
                return m(((Div.f) b()).c(), d().d(), bVar);
            }
            if (divB instanceof Div.d) {
                return l(((Div.d) b()).c(), d().d(), bVar);
            }
            if (divB instanceof Div.j) {
                return n(((Div.j) b()).c(), d().d(), bVar);
            }
            if (divB instanceof Div.p) {
                throw new RebindTask.UnsupportedElementException(b().getClass());
            }
            if (divB instanceof Div.n) {
                return p(d().d(), bVar);
            }
            throw new NoWhenBranchMatchedException();
        }
        return y71.k();
    }

    public final b h() {
        return this.f;
    }

    public final View i() {
        return this.e;
    }

    public final List j(DivContainer divContainer, oj3 oj3Var, b bVar) {
        return o(bh2.c(divContainer, oj3Var), bVar);
    }

    public final List k(DivCustom divCustom, oj3 oj3Var, b bVar) {
        ArrayList arrayList = new ArrayList();
        View view = this.e;
        DivCustomWrapper divCustomWrapper = view instanceof DivCustomWrapper ? (DivCustomWrapper) view : null;
        View customView = divCustomWrapper != null ? divCustomWrapper.getCustomView() : null;
        ViewGroup viewGroup = customView instanceof ViewGroup ? (ViewGroup) customView : null;
        if (viewGroup == null) {
            return y71.k();
        }
        int i = 0;
        for (Object obj : bh2.l(divCustom)) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            zl2 zl2VarT = bh2.t((Div) obj, oj3Var);
            View childAt = viewGroup.getChildAt(i);
            if (childAt == null) {
                return y71.k();
            }
            y45.i(childAt, "customView.getChildAt(index) ?: return emptyList()");
            arrayList.add(new b(zl2VarT, i, childAt, bVar == null ? this : bVar));
            i = i2;
        }
        return arrayList;
    }

    public final List l(DivGallery divGallery, oj3 oj3Var, b bVar) {
        View itemView;
        ArrayList arrayList = new ArrayList();
        View view = this.e;
        DivRecyclerView divRecyclerView = view instanceof DivRecyclerView ? (DivRecyclerView) view : null;
        RecyclerView.Adapter adapter = divRecyclerView != null ? divRecyclerView.getAdapter() : null;
        DivGalleryAdapter divGalleryAdapter = adapter instanceof DivGalleryAdapter ? (DivGalleryAdapter) adapter : null;
        if (divGalleryAdapter == null) {
            return y71.k();
        }
        List listJ = divGalleryAdapter.getVisibleItems();
        ArrayList arrayList2 = new ArrayList(z71.v(listJ, 10));
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(((zl2) it.next()).c().hash()));
        }
        int i = 0;
        for (Object obj : bh2.d(divGallery, oj3Var)) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            zl2 zl2Var = (zl2) obj;
            if (arrayList2.contains(Integer.valueOf(zl2Var.c().hash())) && (itemView = ((DivRecyclerView) this.e).getItemView(i)) != null) {
                arrayList.add(new b(zl2Var, i, itemView, bVar == null ? this : bVar));
            }
            i = i2;
        }
        return arrayList;
    }

    public final List m(DivGrid divGrid, oj3 oj3Var, b bVar) {
        return o(bh2.p(divGrid, oj3Var), bVar);
    }

    public final List n(DivPager divPager, oj3 oj3Var, b bVar) {
        ViewPager2 viewPager;
        ArrayList arrayList = new ArrayList();
        View view = this.e;
        DivPagerView divPagerView = view instanceof DivPagerView ? (DivPagerView) view : null;
        if (divPagerView == null || (viewPager = divPagerView.getViewPager()) == null) {
            return y71.k();
        }
        RecyclerView.Adapter adapter = viewPager.getAdapter();
        DivPagerAdapter divPagerAdapter = adapter instanceof DivPagerAdapter ? (DivPagerAdapter) adapter : null;
        if (divPagerAdapter == null) {
            return y71.k();
        }
        g3 g3VarD = divPagerAdapter.getItemsToShow();
        ArrayList arrayList2 = new ArrayList(z71.v(g3VarD, 10));
        Iterator<E> it = g3VarD.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(((zl2) it.next()).c().hash()));
        }
        int i = 0;
        for (Object obj : bh2.e(divPager, oj3Var)) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            zl2 zl2Var = (zl2) obj;
            if (arrayList2.contains(Integer.valueOf(zl2Var.c().hash()))) {
                View pageView = ((DivPagerView) this.e).getPageView(arrayList2.indexOf(Integer.valueOf(zl2Var.c().hash())));
                if (pageView != null) {
                    arrayList.add(new b(zl2Var, i, pageView, bVar == null ? this : bVar));
                }
            }
            i = i2;
        }
        return arrayList;
    }

    public final List o(List list, b bVar) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            zl2 zl2Var = (zl2) obj;
            View view = this.e;
            ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
            View childAt = viewGroup != null ? viewGroup.getChildAt(i) : null;
            if (childAt == null) {
                return y71.k();
            }
            y45.i(childAt, "(view as? ViewGroup)?.ge…ex) ?: return emptyList()");
            arrayList.add(new b(zl2Var, i, childAt, bVar == null ? this : bVar));
            i = i2;
        }
        return arrayList;
    }

    public final List p(oj3 oj3Var, b bVar) {
        Div activeStateDiv$div_release;
        View view = this.e;
        DivStateLayout divStateLayout = view instanceof DivStateLayout ? (DivStateLayout) view : null;
        return (divStateLayout == null || (activeStateDiv$div_release = divStateLayout.getActiveStateDiv()) == null) ? y71.k() : o(bh2.s(x71.e(activeStateDiv$div_release), oj3Var), bVar);
    }
}

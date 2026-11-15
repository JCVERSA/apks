package com.yandex.div.core.downloader;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.yandex.div.core.view2.divs.gallery.DivGalleryAdapter;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div.logging.Severity;
import com.yandex.div2.Div;
import com.yandex.div2.DivContainer;
import com.yandex.div2.DivCustom;
import com.yandex.div2.DivData;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivGrid;
import com.yandex.div2.DivPager;
import com.yandex.div2.DivPatch;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTabs;
import defpackage.ae5;
import defpackage.bh2;
import defpackage.c74;
import defpackage.d81;
import defpackage.do2;
import defpackage.e74;
import defpackage.i81;
import defpackage.ne5;
import defpackage.og2;
import defpackage.oj3;
import defpackage.x71;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DivPatchApply {
    public static final a c = new a(null);
    public final do2 a;
    public final Set b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivPatchApply(do2 do2Var) {
        y45.j(do2Var, "patch");
        this.a = do2Var;
        this.b = new LinkedHashSet();
    }

    public static List y(DivPatchApply divPatchApply, Div div, String str, oj3 oj3Var, List list, int i, Object obj) {
        if ((i & 8) != 0) {
            list = new ArrayList();
        }
        return divPatchApply.w(div, str, oj3Var, list);
    }

    public final Div.b f(DivContainer divContainer, oj3 oj3Var) {
        return new Div.b(DivContainer.D(divContainer, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, p(divContainer.A, oj3Var), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -67108865, 1048575, null));
    }

    public final Div.c g(DivCustom divCustom, oj3 oj3Var) {
        return new Div.c(divCustom.C(((-32769) & 1) != 0 ? divCustom.r() : null, ((-32769) & 2) != 0 ? divCustom.g() : null, ((-32769) & 4) != 0 ? divCustom.o() : null, ((-32769) & 8) != 0 ? divCustom.p() : null, ((-32769) & 16) != 0 ? divCustom.A() : null, ((-32769) & 32) != 0 ? divCustom.getBackground() : null, ((-32769) & 64) != 0 ? divCustom.B() : null, ((-32769) & 128) != 0 ? divCustom.b() : null, ((-32769) & 256) != 0 ? divCustom.i : null, ((-32769) & 512) != 0 ? divCustom.j : null, ((-32769) & 1024) != 0 ? divCustom.k() : null, ((-32769) & 2048) != 0 ? divCustom.getExtensions() : null, ((-32769) & 4096) != 0 ? divCustom.q() : null, ((-32769) & 8192) != 0 ? divCustom.y() : null, ((-32769) & 16384) != 0 ? divCustom.getHeight() : null, ((-32769) & 32768) != 0 ? divCustom.getId() : null, ((-32769) & 65536) != 0 ? divCustom.q : p(divCustom.q, oj3Var), ((-32769) & 131072) != 0 ? divCustom.v() : null, ((-32769) & 262144) != 0 ? divCustom.d() : null, ((-32769) & 524288) != 0 ? divCustom.t() : null, ((-32769) & 1048576) != 0 ? divCustom.f() : null, ((-32769) & 2097152) != 0 ? divCustom.e() : null, ((-32769) & 4194304) != 0 ? divCustom.u() : null, ((-32769) & 8388608) != 0 ? divCustom.h() : null, ((-32769) & 16777216) != 0 ? divCustom.m() : null, ((-32769) & 33554432) != 0 ? divCustom.j() : null, ((-32769) & 67108864) != 0 ? divCustom.z() : null, ((-32769) & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divCustom.i() : null, ((-32769) & 268435456) != 0 ? divCustom.n() : null, ((-32769) & 536870912) != 0 ? divCustom.w() : null, ((-32769) & 1073741824) != 0 ? divCustom.c() : null, ((-32769) & Integer.MIN_VALUE) != 0 ? divCustom.getVisibility() : null, (7 & 1) != 0 ? divCustom.x() : null, (7 & 2) != 0 ? divCustom.a() : null, (7 & 4) != 0 ? divCustom.getWidth() : null));
    }

    public final Div.d h(DivGallery divGallery, oj3 oj3Var) {
        return new Div.d(DivGallery.D(divGallery, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, p(divGallery.u, oj3Var), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1048577, 2047, null));
    }

    public final Div.f i(DivGrid divGrid, oj3 oj3Var) {
        return new Div.f(DivGrid.D(divGrid, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, p(divGrid.y, oj3Var), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -16777217, 16383, null));
    }

    public final Div.j j(DivPager divPager, oj3 oj3Var) {
        return new Div.j(DivPager.D(divPager, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, p(divPager.t, oj3Var), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -524289, 2047, null));
    }

    public final Div.n k(DivState divState, oj3 oj3Var) {
        return new Div.n(DivState.D(divState, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, q(divState.y, oj3Var), null, null, null, null, null, null, null, null, null, null, null, null, null, -16777217, 63, null));
    }

    public final Div.p l(DivTabs divTabs, oj3 oj3Var) {
        ArrayList arrayList = new ArrayList();
        for (DivTabs.Item item : divTabs.q) {
            List listM = m(item.a, oj3Var);
            if (listM.size() == 1) {
                arrayList.add(new DivTabs.Item((Div) listM.get(0), item.b, item.c));
            } else {
                ne5 ne5Var = ne5.a;
                if (ne5Var.a(Severity.ERROR)) {
                    ne5Var.b(6, "DivPatchApply", "Unable to patch tab because there is more than 1 div in the patch");
                }
                arrayList.add(item);
            }
        }
        return new Div.p(DivTabs.D(divTabs, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, arrayList, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -65537, 2047, null));
    }

    public final List m(Div div, oj3 oj3Var) {
        String id = div.b().getId();
        if (id != null && this.a.b().containsKey(id)) {
            return r(div);
        }
        if (div instanceof Div.b) {
            div = f(((Div.b) div).c(), oj3Var);
        } else if (div instanceof Div.f) {
            div = i(((Div.f) div).c(), oj3Var);
        } else if (div instanceof Div.d) {
            div = h(((Div.d) div).c(), oj3Var);
        } else if (div instanceof Div.j) {
            div = j(((Div.j) div).c(), oj3Var);
        } else if (div instanceof Div.n) {
            div = k(((Div.n) div).c(), oj3Var);
        } else if (div instanceof Div.p) {
            div = l(((Div.p) div).c(), oj3Var);
        } else if (div instanceof Div.c) {
            div = g(((Div.c) div).c(), oj3Var);
        }
        return x71.e(div);
    }

    public final List n(List list, oj3 oj3Var) {
        y45.j(list, "states");
        y45.j(oj3Var, "resolver");
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DivData.State state = (DivData.State) it.next();
            arrayList.add(new DivData.State((Div) m(state.a, oj3Var).get(0), state.b));
        }
        if (this.a.a().b(oj3Var) != DivPatch.Mode.TRANSACTIONAL || this.b.size() == this.a.b().size()) {
            return arrayList;
        }
        return null;
    }

    public final List o(Div div, oj3 oj3Var) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "resolver");
        return m(div, oj3Var);
    }

    public final List p(List list, oj3 oj3Var) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d81.C(arrayList, m((Div) it.next(), oj3Var));
        }
        return arrayList;
    }

    public final List q(List list, oj3 oj3Var) {
        og2 og2VarB;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DivState.State state = (DivState.State) it.next();
            Div div = state.c;
            String id = (div == null || (og2VarB = div.b()) == null) ? null : og2VarB.getId();
            if (id != null) {
                List list2 = (List) this.a.b().get(id);
                if (list2 != null && list2.size() == 1) {
                    arrayList.add(new DivState.State(state.a, state.b, (Div) list2.get(0), state.d, state.e));
                    this.b.add(id);
                } else if (list2 == null || !list2.isEmpty()) {
                    arrayList.add(z(state, oj3Var));
                } else {
                    this.b.add(id);
                }
            } else {
                arrayList.add(z(state, oj3Var));
            }
        }
        return arrayList;
    }

    public final List r(Div div) {
        List list;
        String id = div.b().getId();
        if (id != null && (list = (List) this.a.b().get(id)) != null) {
            this.b.add(id);
            return list;
        }
        return x71.e(div);
    }

    public final View s(View view, Div div, String str) {
        RecyclerView.Adapter adapter;
        Div.j div2;
        DivPager divPagerC;
        List list;
        Div.d div3;
        DivGallery divGalleryC;
        List list2;
        int i = 0;
        if (view instanceof DivRecyclerView) {
            DivRecyclerView divRecyclerView = (DivRecyclerView) view;
            if (divRecyclerView.getDiv() == div) {
                RecyclerView.Adapter adapter2 = divRecyclerView.getAdapter();
                DivGalleryAdapter divGalleryAdapter = adapter2 instanceof DivGalleryAdapter ? (DivGalleryAdapter) adapter2 : null;
                if (divGalleryAdapter != null && (div3 = divRecyclerView.getDiv()) != null && (divGalleryC = div3.c()) != null && (list2 = divGalleryC.u) != null) {
                    for (Object obj : list2) {
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (y45.e(((Div) obj).b().getId(), str)) {
                            divGalleryAdapter.notifyItemChanged(i);
                            return view;
                        }
                        i = i2;
                    }
                }
                return view;
            }
        } else if (view instanceof DivPagerView) {
            DivPagerView divPagerView = (DivPagerView) view;
            if (divPagerView.getDiv() == div) {
                View childAt = divPagerView.getViewPager().getChildAt(0);
                RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
                if (recyclerView != null && (adapter = recyclerView.getAdapter()) != null && (div2 = divPagerView.getDiv()) != null && (divPagerC = div2.c()) != null && (list = divPagerC.t) != null) {
                    for (Object obj2 : list) {
                        int i3 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (y45.e(((Div) obj2).b().getId(), str)) {
                            adapter.notifyItemChanged(i);
                            return view;
                        }
                        i = i3;
                    }
                }
                return view;
            }
        }
        if (view instanceof ViewGroup) {
            Iterator it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                View viewS = s((View) it.next(), div, str);
                if (viewS != null) {
                    return viewS;
                }
            }
        }
        return null;
    }

    public final Div t(Div div, List list, Iterator it, oj3 oj3Var, e74 e74Var, c74 c74Var) {
        if (!it.hasNext()) {
            return (Div) c74Var.invoke();
        }
        int iIndexOf = list.indexOf((Div) it.next());
        if (iIndexOf != -1) {
            List listE1 = i81.e1(list);
            listE1.set(iIndexOf, u((Div) listE1.get(iIndexOf), it, oj3Var));
            return (Div) e74Var.invoke(listE1);
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("Unable to find the next child to patch by following a precalculated path");
        }
        return div;
    }

    public final Div u(Div div, Iterator it, final oj3 oj3Var) {
        final og2 og2VarB = div.b();
        if (og2VarB instanceof DivContainer) {
            return t(div, bh2.k((DivContainer) og2VarB), it, oj3Var, new e74() {
                {
                    super(1);
                }

                @Override
                public final Div invoke(List<? extends Div> list) {
                    y45.j(list, "it");
                    return new Div.b(DivContainer.D((DivContainer) og2VarB, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, list, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -67108865, 1048575, null));
                }
            }, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Div invoke() {
                    return new DivPatchApply(this.this$0.a).f((DivContainer) og2VarB, oj3Var);
                }
            });
        }
        if (og2VarB instanceof DivGrid) {
            return t(div, bh2.n((DivGrid) og2VarB), it, oj3Var, new e74() {
                {
                    super(1);
                }

                @Override
                public final Div invoke(List<? extends Div> list) {
                    y45.j(list, "it");
                    return new Div.f(DivGrid.D((DivGrid) og2VarB, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, list, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -16777217, 16383, null));
                }
            }, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Div invoke() {
                    return new DivPatchApply(this.this$0.a).i((DivGrid) og2VarB, oj3Var);
                }
            });
        }
        if (og2VarB instanceof DivGallery) {
            return t(div, bh2.m((DivGallery) og2VarB), it, oj3Var, new e74() {
                {
                    super(1);
                }

                @Override
                public final Div invoke(List<? extends Div> list) {
                    y45.j(list, "it");
                    return new Div.d(DivGallery.D((DivGallery) og2VarB, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, list, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1048577, 2047, null));
                }
            }, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Div invoke() {
                    return new DivPatchApply(this.this$0.a).h((DivGallery) og2VarB, oj3Var);
                }
            });
        }
        if (og2VarB instanceof DivPager) {
            return t(div, bh2.o((DivPager) og2VarB), it, oj3Var, new e74() {
                {
                    super(1);
                }

                @Override
                public final Div invoke(List<? extends Div> list) {
                    y45.j(list, "it");
                    return new Div.j(DivPager.D((DivPager) og2VarB, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, list, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -524289, 2047, null));
                }
            }, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Div invoke() {
                    return new DivPatchApply(this.this$0.a).j((DivPager) og2VarB, oj3Var);
                }
            });
        }
        if (og2VarB instanceof DivTabs) {
            if (!it.hasNext()) {
                return new DivPatchApply(this.a).l((DivTabs) og2VarB, oj3Var);
            }
            DivTabs divTabs = (DivTabs) og2VarB;
            List listE1 = i81.e1(divTabs.q);
            List list = listE1;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((DivTabs.Item) it2.next()).a);
            }
            int iIndexOf = arrayList.indexOf(it.next());
            if (iIndexOf != -1) {
                DivTabs.Item item = (DivTabs.Item) listE1.get(iIndexOf);
                listE1.set(iIndexOf, new DivTabs.Item(u(item.a, it, oj3Var), item.b, item.c));
                return new Div.p(DivTabs.D(divTabs, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, listE1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -65537, 2047, null));
            }
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable to find the next child to patch by following a precalculated path");
            }
            return div;
        }
        if (!(og2VarB instanceof DivState)) {
            return div;
        }
        if (!it.hasNext()) {
            return new DivPatchApply(this.a).k((DivState) og2VarB, oj3Var);
        }
        DivState divState = (DivState) og2VarB;
        List listE2 = i81.e1(divState.y);
        List list2 = listE2;
        ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((DivState.State) it3.next()).c);
        }
        int iIndexOf2 = arrayList2.indexOf(it.next());
        if (iIndexOf2 == -1) {
            ae5 ae5Var2 = ae5.a;
            if (xi.o()) {
                xi.i("Unable to find the next child to patch by following a precalculated path");
            }
            return div;
        }
        DivState.State state = (DivState.State) listE2.get(iIndexOf2);
        Div div2 = state.c;
        if (div2 == null) {
            return div;
        }
        listE2.set(iIndexOf2, new DivState.State(state.a, state.b, u(div2, it, oj3Var), state.d, state.e));
        return new Div.n(DivState.D(divState, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, listE2, null, null, null, null, null, null, null, null, null, null, null, null, null, -16777217, 63, null));
    }

    public final Div v(View view, Div div, String str, oj3 oj3Var) {
        y45.j(view, "parentView");
        y45.j(div, "parentDiv");
        y45.j(str, "idToPatch");
        y45.j(oj3Var, "resolver");
        List listY = y(this, div, str, oj3Var, null, 8, null);
        Iterator it = listY.iterator();
        Object obj = null;
        if (listY.isEmpty()) {
            return null;
        }
        it.next();
        ListIterator listIterator = listY.listIterator(listY.size());
        while (listIterator.hasPrevious()) {
            Object objPrevious = listIterator.previous();
            Div div2 = (Div) objPrevious;
            if ((div2 instanceof Div.d) || (div2 instanceof Div.j)) {
                obj = objPrevious;
                break;
            }
        }
        Div div3 = (Div) obj;
        if (div3 != null) {
            s(view, div3, str);
        }
        return u(div, it, oj3Var);
    }

    public final List w(Div div, String str, oj3 oj3Var, List list) {
        og2 og2VarB;
        list.add(div);
        og2 og2VarB2 = div.b();
        if (og2VarB2 instanceof DivContainer) {
            return x(bh2.k((DivContainer) og2VarB2), str, oj3Var, list);
        }
        if (og2VarB2 instanceof DivGrid) {
            return x(bh2.n((DivGrid) og2VarB2), str, oj3Var, list);
        }
        if (og2VarB2 instanceof DivGallery) {
            return x(bh2.m((DivGallery) og2VarB2), str, oj3Var, list);
        }
        if (og2VarB2 instanceof DivPager) {
            return x(bh2.o((DivPager) og2VarB2), str, oj3Var, list);
        }
        if (og2VarB2 instanceof DivTabs) {
            DivTabs divTabs = (DivTabs) og2VarB2;
            List list2 = divTabs.q;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    if (y45.e(((DivTabs.Item) it.next()).a.b().getId(), str)) {
                        return list;
                    }
                }
            }
            Iterator it2 = divTabs.q.iterator();
            while (it2.hasNext()) {
                List listW = w(((DivTabs.Item) it2.next()).a, str, oj3Var, list);
                if (!listW.isEmpty()) {
                    return listW;
                }
                d81.J(list);
            }
            return y71.k();
        }
        if (!(og2VarB2 instanceof DivState)) {
            return y71.k();
        }
        DivState divState = (DivState) og2VarB2;
        List list3 = divState.y;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                Div div2 = ((DivState.State) it3.next()).c;
                if (y45.e((div2 == null || (og2VarB = div2.b()) == null) ? null : og2VarB.getId(), str)) {
                    return list;
                }
            }
        }
        List list4 = divState.y;
        ArrayList arrayList = new ArrayList();
        Iterator it4 = list4.iterator();
        while (it4.hasNext()) {
            Div div3 = ((DivState.State) it4.next()).c;
            if (div3 != null) {
                arrayList.add(div3);
            }
        }
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            List listW2 = w((Div) it5.next(), str, oj3Var, list);
            if (!listW2.isEmpty()) {
                return listW2;
            }
            d81.J(list);
        }
        return y71.k();
    }

    public final List x(List list, String str, oj3 oj3Var, List list2) {
        List list3 = list;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                if (y45.e(((Div) it.next()).b().getId(), str)) {
                    return list2;
                }
            }
        }
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            List listW = w((Div) it2.next(), str, oj3Var, list2);
            if (!listW.isEmpty()) {
                return listW;
            }
            d81.J(list2);
        }
        return y71.k();
    }

    public final DivState.State z(DivState.State state, oj3 oj3Var) {
        Div div = state.c;
        List listM = div != null ? m(div, oj3Var) : null;
        return (listM == null || listM.size() != 1) ? state : new DivState.State(state.a, state.b, (Div) listM.get(0), state.d, state.e);
    }
}

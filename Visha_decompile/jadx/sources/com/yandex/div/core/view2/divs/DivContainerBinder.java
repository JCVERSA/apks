package com.yandex.div.core.view2.divs;

import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewGroupKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.util.DivDataExtensionsKt;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.divs.widgets.DivFrameLayout;
import com.yandex.div.core.view2.divs.widgets.DivLinearLayout;
import com.yandex.div.core.view2.divs.widgets.DivWrapLayout;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivAspect;
import com.yandex.div2.DivCollectionItemBuilder;
import com.yandex.div2.DivContainer;
import com.yandex.div2.DivContentAlignmentHorizontal;
import com.yandex.div2.DivContentAlignmentVertical;
import com.yandex.div2.DivDrawable;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivSizeUnit;
import defpackage.bh2;
import defpackage.ccb;
import defpackage.ch2;
import defpackage.co2;
import defpackage.d81;
import defpackage.e74;
import defpackage.eu2;
import defpackage.hh2;
import defpackage.i81;
import defpackage.mk2;
import defpackage.og2;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.oo8;
import defpackage.qc2;
import defpackage.qj3;
import defpackage.rg2;
import defpackage.sj3;
import defpackage.uj3;
import defpackage.vr8;
import defpackage.wc3;
import defpackage.wu2;
import defpackage.wv2;
import defpackage.x71;
import defpackage.xc3;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zfb;
import defpackage.zl2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.json.JSONException;

public final class DivContainerBinder extends wu2 {
    public final DivBaseBinder b;
    public final oj8 c;
    public final co2 d;
    public final oj8 e;
    public final xc3 f;
    public final Rect g;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivContainer.Orientation.values().length];
            try {
                iArr[DivContainer.Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivContainerBinder(DivBaseBinder divBaseBinder, oj8 oj8Var, co2 co2Var, oj8 oj8Var2, xc3 xc3Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(oj8Var, "divViewCreator");
        y45.j(co2Var, "divPatchManager");
        y45.j(oj8Var2, "divBinder");
        y45.j(xc3Var, "errorCollectors");
        this.b = divBaseBinder;
        this.c = oj8Var;
        this.d = co2Var;
        this.e = oj8Var2;
        this.f = xc3Var;
        this.g = new Rect();
    }

    public final void A(DivContainer divContainer, og2 og2Var, oj3 oj3Var, wc3 wc3Var) {
        if (BaseDivViewExtensionsKt.k0(divContainer, oj3Var)) {
            B(og2Var.getHeight(), og2Var, wc3Var);
        } else {
            B(og2Var.getWidth(), og2Var, wc3Var);
        }
    }

    public final void B(DivSize divSize, og2 og2Var, wc3 wc3Var) {
        E(divSize, og2Var, wc3Var, "wrap layout mode", "cross");
    }

    public final void C(DivContainer divContainer, og2 og2Var, oj3 oj3Var, wc3 wc3Var) {
        if (BaseDivViewExtensionsKt.k0(divContainer, oj3Var)) {
            if (divContainer.getWidth() instanceof DivSize.d) {
                D(og2Var.getWidth(), og2Var, wc3Var);
            }
        } else if (divContainer.getHeight() instanceof DivSize.d) {
            DivAspect divAspect = divContainer.i;
            if (divAspect == null || ((float) ((Number) divAspect.a.b(oj3Var)).doubleValue()) == 0.0f) {
                D(og2Var.getHeight(), og2Var, wc3Var);
            }
        }
    }

    public final void D(DivSize divSize, og2 og2Var, wc3 wc3Var) {
        E(divSize, og2Var, wc3Var, "wrap_content size", "main");
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0022  */
    public final void E(DivSize divSize, og2 og2Var, wc3 wc3Var, String str, String str2) {
        String str3;
        if (divSize instanceof DivSize.c) {
            String id = og2Var.getId();
            if (id != null) {
                str3 = " with id='" + id + '\'';
                if (str3 == null) {
                    str3 = "";
                }
            } else {
                str3 = "";
            }
            String str4 = String.format("Incorrect child size. Container with %s contains child%s with match_parent size along the %s axis.", Arrays.copyOf(new Object[]{str, str3, str2}, 3));
            y45.i(str4, "format(...)");
            wc3Var.f(new Throwable(str4));
        }
    }

    public final List F(ViewGroup viewGroup, com.yandex.div.core.view2.a aVar, DivContainer divContainer, DivContainer divContainer2, List list, DivStatePath divStatePath) {
        List list2;
        if (divContainer.z == null || list == null) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            int size = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                zl2 zl2Var = (zl2) obj;
                List listO = o(viewGroup, aVar, zl2Var.c(), i + size);
                ArrayList arrayList2 = new ArrayList(z71.v(listO, 10));
                Iterator it = listO.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new zl2((Div) it.next(), zl2Var.d()));
                }
                size += arrayList2.size() - 1;
                d81.C(arrayList, arrayList2);
                i = i2;
            }
            list2 = arrayList;
        } else {
            list2 = list;
        }
        int i3 = 0;
        for (Object obj2 : list2) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                y71.u();
            }
            zl2 zl2Var2 = (zl2) obj2;
            View childAt = viewGroup.getChildAt(i3);
            y45.i(childAt, "getChildAt(index)");
            q(childAt, aVar, zl2Var2.c(), zl2Var2.d(), divContainer, divContainer2, divStatePath, i3);
            i3 = i4;
        }
        return list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void G(ViewGroup viewGroup, com.yandex.div.core.view2.a aVar, DivContainer divContainer, DivContainer divContainer2, List list, List list2, DivStatePath divStatePath) {
        List listF = F(viewGroup, aVar, divContainer, divContainer2, list, divStatePath);
        y45.h(viewGroup, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivCollectionHolder");
        ((ch2) viewGroup).setItems(listF);
        BaseDivViewExtensionsKt.O0(viewGroup, aVar.a(), listF, list2);
    }

    public final void H(ViewGroup viewGroup, Div2View div2View, List list, List list2) {
        Object next;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List list3 = list;
        List listC0 = SequencesKt___SequencesKt.c0(ViewGroupKt.getChildren(viewGroup));
        Iterator it = list3.iterator();
        Iterator it2 = listC0.iterator();
        ArrayList arrayList = new ArrayList(Math.min(z71.v(list3, 10), z71.v(listC0, 10)));
        while (it.hasNext() && it2.hasNext()) {
            linkedHashMap.put(((zl2) it.next()).c(), (View) it2.next());
            arrayList.add(zfb.a);
        }
        viewGroup.removeAllViews();
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = list2.iterator();
        int i = 0;
        while (true) {
            Object obj = null;
            if (!it3.hasNext()) {
                break;
            }
            Object next2 = it3.next();
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            zl2 zl2Var = (zl2) next2;
            for (Object obj2 : linkedHashMap.keySet()) {
                Div div = (Div) obj2;
                if (eu2.i(div) ? y45.e(eu2.g(zl2Var.c()), eu2.g(div)) : eu2.b(div, zl2Var.c(), zl2Var.d())) {
                    obj = obj2;
                    break;
                }
            }
            View view = (View) ccb.d(linkedHashMap).remove((Div) obj);
            if (view != null) {
                viewGroup.addView(view);
            } else {
                arrayList2.add(Integer.valueOf(i));
            }
            i = i2;
        }
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            int iIntValue = ((Number) it4.next()).intValue();
            zl2 zl2Var2 = (zl2) list2.get(iIntValue);
            Iterator it5 = linkedHashMap.keySet().iterator();
            do {
                if (!it5.hasNext()) {
                    next = null;
                    break;
                }
                next = it5.next();
            } while (!y45.e(eu2.g((Div) next), eu2.g(zl2Var2.c())));
            View viewL = (View) ccb.d(linkedHashMap).remove((Div) next);
            if (viewL == null) {
                viewL = ((DivViewCreator) this.c.get()).L(zl2Var2.c(), zl2Var2.d());
            }
            viewGroup.addView(viewL, iIntValue);
        }
        Iterator it6 = linkedHashMap.values().iterator();
        while (it6.hasNext()) {
            wv2.a(div2View.getReleaseViewVisitor$div_release(), (View) it6.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I(com.yandex.div.core.view2.a aVar, ViewGroup viewGroup, Div.b bVar) {
        y45.j(aVar, "bindingContext");
        y45.j(viewGroup, "view");
        y45.j(bVar, TtmlNode.TAG_DIV);
        ((mk2) viewGroup).setDiv(bVar);
        rg2 rg2Var = (rg2) this.e.get();
        int i = 0;
        for (Object obj : bh2.c(bVar.c(), aVar.b())) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            zl2 zl2Var = (zl2) obj;
            View childAt = viewGroup.getChildAt(i);
            y45.i(childAt, "childView");
            com.yandex.div.core.view2.a aVarZ = BaseDivViewExtensionsKt.Z(childAt);
            if (aVarZ == null) {
                aVarZ = aVar;
            }
            rg2Var.w(aVarZ, childAt, zl2Var.c());
            i = i2;
        }
    }

    public final int J(DivContainer.Orientation orientation) {
        return a.a[orientation.ordinal()] == 1 ? 0 : 1;
    }

    public final Rect K(DivEdgeInsets divEdgeInsets, Resources resources, oj3 oj3Var) {
        if (divEdgeInsets == null) {
            this.g.set(0, 0, 0, 0);
            return this.g;
        }
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        DivSizeUnit divSizeUnit = (DivSizeUnit) divEdgeInsets.g.b(oj3Var);
        if (divEdgeInsets.e == null && divEdgeInsets.b == null) {
            Rect rect = this.g;
            Long l = (Long) divEdgeInsets.c.b(oj3Var);
            y45.i(displayMetrics, "metrics");
            rect.left = BaseDivViewExtensionsKt.Q0(l, displayMetrics, divSizeUnit);
            this.g.right = BaseDivViewExtensionsKt.Q0((Long) divEdgeInsets.d.b(oj3Var), displayMetrics, divSizeUnit);
        } else {
            if (resources.getConfiguration().getLayoutDirection() == 0) {
                Rect rect2 = this.g;
                Expression expression = divEdgeInsets.e;
                Long l2 = expression != null ? (Long) expression.b(oj3Var) : null;
                y45.i(displayMetrics, "metrics");
                rect2.left = BaseDivViewExtensionsKt.Q0(l2, displayMetrics, divSizeUnit);
                Rect rect3 = this.g;
                Expression expression2 = divEdgeInsets.b;
                rect3.right = BaseDivViewExtensionsKt.Q0(expression2 != null ? (Long) expression2.b(oj3Var) : null, displayMetrics, divSizeUnit);
            } else {
                Rect rect4 = this.g;
                Expression expression3 = divEdgeInsets.b;
                Long l3 = expression3 != null ? (Long) expression3.b(oj3Var) : null;
                y45.i(displayMetrics, "metrics");
                rect4.left = BaseDivViewExtensionsKt.Q0(l3, displayMetrics, divSizeUnit);
                Rect rect5 = this.g;
                Expression expression4 = divEdgeInsets.e;
                rect5.right = BaseDivViewExtensionsKt.Q0(expression4 != null ? (Long) expression4.b(oj3Var) : null, displayMetrics, divSizeUnit);
            }
        }
        this.g.top = BaseDivViewExtensionsKt.Q0((Long) divEdgeInsets.f.b(oj3Var), displayMetrics, divSizeUnit);
        this.g.bottom = BaseDivViewExtensionsKt.Q0((Long) divEdgeInsets.a.b(oj3Var), displayMetrics, divSizeUnit);
        return this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public final int L(DivContainer.Separator separator, oj3 oj3Var) {
        ?? r1;
        if (separator == null) {
            return 0;
        }
        boolean zBooleanValue = ((Boolean) separator.c.b(oj3Var)).booleanValue();
        if (((Boolean) separator.d.b(oj3Var)).booleanValue()) {
            r1 = zBooleanValue;
            r1 = (zBooleanValue ? 1 : 0) | 2;
        }
        r1 = zBooleanValue;
        return ((Boolean) separator.b.b(oj3Var)).booleanValue() ? r1 | 4 : r1;
    }

    public final int M(DivContainer.Orientation orientation) {
        return a.a[orientation.ordinal()] == 1 ? 0 : 1;
    }

    public final void N(ViewGroup viewGroup, DivContainer divContainer, List list, oj3 oj3Var, wc3 wc3Var) {
        if (viewGroup instanceof DivFrameLayout) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            og2 og2VarB = ((zl2) it.next()).c().b();
            if (viewGroup instanceof DivWrapLayout) {
                A(divContainer, og2VarB, oj3Var, wc3Var);
            } else if (viewGroup instanceof DivLinearLayout) {
                C(divContainer, og2VarB, oj3Var, wc3Var);
            }
        }
    }

    public final void m(View view, DivContainer divContainer, og2 og2Var, oj3 oj3Var, oj3 oj3Var2) {
        DivAlignmentHorizontal divAlignmentHorizontalV0;
        Expression expressionG = og2Var.g();
        DivAlignmentVertical divAlignmentVerticalW0 = null;
        if (expressionG != null) {
            divAlignmentHorizontalV0 = (DivAlignmentHorizontal) expressionG.b(oj3Var2);
        } else {
            divAlignmentHorizontalV0 = BaseDivViewExtensionsKt.l0(divContainer, oj3Var) ? null : BaseDivViewExtensionsKt.v0((DivContentAlignmentHorizontal) divContainer.o.b(oj3Var));
        }
        Expression expressionO = og2Var.o();
        if (expressionO != null) {
            divAlignmentVerticalW0 = (DivAlignmentVertical) expressionO.b(oj3Var2);
        } else if (!BaseDivViewExtensionsKt.l0(divContainer, oj3Var)) {
            divAlignmentVerticalW0 = BaseDivViewExtensionsKt.w0((DivContentAlignmentVertical) divContainer.p.b(oj3Var));
        }
        BaseDivViewExtensionsKt.d(view, divAlignmentHorizontalV0, divAlignmentVerticalW0);
    }

    public final void n(ViewGroup viewGroup, com.yandex.div.core.view2.a aVar, DivContainer divContainer, DivContainer divContainer2, List list, List list2, DivStatePath divStatePath, wc3 wc3Var) {
        oo8.a(viewGroup, aVar.a(), list, this.c);
        N(viewGroup, divContainer, list, aVar.b(), wc3Var);
        G(viewGroup, aVar, divContainer, divContainer2, list, list2, divStatePath);
    }

    public final List o(ViewGroup viewGroup, com.yandex.div.core.view2.a aVar, Div div, int i) {
        Map mapC;
        String id = div.b().getId();
        if (id != null && (mapC = this.d.c(aVar, id)) != null) {
            viewGroup.removeViewAt(i);
            Iterator it = mapC.entrySet().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                viewGroup.addView((View) ((Map.Entry) it.next()).getValue(), i2 + i);
                i2++;
            }
            return i81.b1(mapC.keySet());
        }
        return x71.e(div);
    }

    @Override
    public void a(ViewGroup viewGroup, com.yandex.div.core.view2.a aVar, DivContainer divContainer, DivContainer divContainer2) {
        y45.j(viewGroup, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divContainer, TtmlNode.TAG_DIV);
        BaseDivViewExtensionsKt.j(viewGroup, aVar, divContainer.b, divContainer.d, divContainer.E, divContainer.r, divContainer.x, divContainer.w, divContainer.J, divContainer.I, divContainer.c, divContainer.r(), divContainer.l);
        oj3 oj3VarB = aVar.b();
        BaseDivViewExtensionsKt.A(viewGroup, divContainer.i, divContainer2 != null ? divContainer2.i : null, oj3VarB);
        BaseDivViewExtensionsKt.B(viewGroup, divContainer.m, divContainer2 != null ? divContainer2.m : null, oj3VarB);
        if (viewGroup instanceof DivLinearLayout) {
            v((DivLinearLayout) viewGroup, divContainer, divContainer2, oj3VarB);
        } else if (viewGroup instanceof DivWrapLayout) {
            w((DivWrapLayout) viewGroup, divContainer, divContainer2, oj3VarB);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void q(View view, com.yandex.div.core.view2.a aVar, Div div, oj3 oj3Var, DivContainer divContainer, DivContainer divContainer2, DivStatePath divStatePath, int i) {
        RuntimeStore runtimeStoreE;
        mk2 mk2Var = view instanceof mk2 ? (mk2) view : null;
        Div div2 = mk2Var != null ? mk2Var.getDiv() : null;
        DivStatePath divStatePathO0 = BaseDivViewExtensionsKt.o0(div.b(), i, divStatePath);
        oj3 oj3VarB = aVar.b();
        if (!y45.e(oj3VarB, oj3Var) && (runtimeStoreE = aVar.e()) != null) {
            runtimeStoreE.p(divStatePathO0.e(), div, oj3Var, oj3VarB);
        }
        ((rg2) this.e.get()).b(aVar.c(oj3Var), view, div, divStatePathO0);
        Div2View div2ViewA = aVar.a();
        r(view, divContainer, divContainer2, div.b(), div2 != null ? div2.b() : null, oj3VarB, oj3Var, vr8.a(view), div2ViewA);
        if (BaseDivViewExtensionsKt.b0(div.b())) {
            div2ViewA.bindViewToDiv$div_release(view, div);
        } else {
            div2ViewA.unbindViewFromDiv$div_release(view);
        }
    }

    public final void r(final View view, final DivContainer divContainer, DivContainer divContainer2, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, final oj3 oj3Var2, qj3 qj3Var, Div2View div2View) {
        if (!div2View.getComplexRebindInProgress$div_release() && og2Var2 != null) {
            if (uj3.b(divContainer.o, divContainer2 != null ? divContainer2.o : null)) {
                if (uj3.b(divContainer.p, divContainer2 != null ? divContainer2.p : null) && uj3.b(og2Var.g(), og2Var2.g()) && uj3.b(og2Var.o(), og2Var2.o())) {
                    return;
                }
            }
        }
        m(view, divContainer, og2Var, oj3Var, oj3Var2);
        if (uj3.d(divContainer.o) && uj3.d(divContainer.p) && uj3.f(og2Var.g()) && uj3.f(og2Var.o())) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m169invoke(obj);
                return zfb.a;
            }

            public final void m169invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.m(view, divContainer, og2Var, oj3Var, oj3Var2);
            }
        };
        qj3Var.addSubscription(divContainer.o.e(oj3Var, e74Var));
        qj3Var.addSubscription(divContainer.p.e(oj3Var, e74Var));
        Expression expressionG = og2Var.g();
        qj3Var.addSubscription(expressionG != null ? expressionG.e(oj3Var2, e74Var) : null);
        Expression expressionO = og2Var.o();
        qj3Var.addSubscription(expressionO != null ? expressionO.e(oj3Var2, e74Var) : null);
    }

    public final void s(final ViewGroup viewGroup, final com.yandex.div.core.view2.a aVar, final DivContainer divContainer, final DivStatePath divStatePath, final wc3 wc3Var) {
        final DivCollectionItemBuilder divCollectionItemBuilder = divContainer.z;
        if (divCollectionItemBuilder == null) {
            return;
        }
        BaseDivViewExtensionsKt.C(divCollectionItemBuilder, aVar.b(), new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) throws JSONException {
                m171invoke(obj);
                return zfb.a;
            }

            public final void m171invoke(Object obj) throws JSONException {
                y45.j(obj, "it");
                List listA = bh2.a(divCollectionItemBuilder, aVar.b());
                ViewParent viewParent = viewGroup;
                y45.h(viewParent, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivCollectionHolder");
                List items = ((ch2) viewParent).getItems();
                if (items == null) {
                    items = y71.k();
                }
                List list = items;
                this.H(viewGroup, aVar.a(), list, listA);
                DivContainerBinder divContainerBinder = this;
                ViewGroup viewGroup2 = viewGroup;
                com.yandex.div.core.view2.a aVar2 = aVar;
                DivContainer divContainer2 = divContainer;
                divContainerBinder.n(viewGroup2, aVar2, divContainer2, divContainer2, listA, list, divStatePath, wc3Var);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(ViewGroup viewGroup, com.yandex.div.core.view2.a aVar, DivContainer divContainer, DivContainer divContainer2, oj3 oj3Var, DivStatePath divStatePath) {
        List list;
        Div2View div2ViewA = aVar.a();
        List<zl2> listC = bh2.c(divContainer, aVar.b());
        y45.h(viewGroup, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivCollectionHolder");
        List items = ((ch2) viewGroup).getItems();
        if (items != null) {
            if (divContainer != divContainer2) {
                list = null;
                if (!div2ViewA.getComplexRebindInProgress$div_release()) {
                    if (divContainer2 != null) {
                        hh2 hh2Var = hh2.a;
                        if (!hh2.f(hh2Var, divContainer2, divContainer, oj3Var, aVar.b(), null, 16, null) || !hh2.b(hh2Var, items, listC, null, 4, null)) {
                        }
                    }
                    H(viewGroup, div2ViewA, items, listC);
                }
            }
            wc3 wc3VarA = this.f.a(div2ViewA.getDataTag(), div2ViewA.getDivData());
            s(viewGroup, aVar, divContainer, divStatePath, wc3VarA);
            n(viewGroup, aVar, divContainer, divContainer2, listC, list, divStatePath, wc3VarA);
        }
        for (zl2 zl2Var : listC) {
            viewGroup.addView(((DivViewCreator) this.c.get()).L(zl2Var.c(), zl2Var.d()));
        }
        list = items;
        wc3 wc3VarA2 = this.f.a(div2ViewA.getDataTag(), div2ViewA.getDivData());
        s(viewGroup, aVar, divContainer, divStatePath, wc3VarA2);
        n(viewGroup, aVar, divContainer, divContainer2, listC, list, divStatePath, wc3VarA2);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0041  */
    /* JADX WARN: Code duplicated, block: B:33:0x004a  */
    /* JADX WARN: Code duplicated, block: B:34:0x004d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x0056  */
    /* JADX WARN: Code duplicated, block: B:39:0x0059  */
    /* JADX WARN: Code duplicated, block: B:42:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0062  */
    /* JADX WARN: Code duplicated, block: B:44:0x0065  */
    /* JADX WARN: Code duplicated, block: B:48:0x006d  */
    /* JADX WARN: Code duplicated, block: B:50:0x007a  */
    /* JADX WARN: Code duplicated, block: B:53:0x0083  */
    /* JADX WARN: Code duplicated, block: B:56:0x0089  */
    /* JADX WARN: Code duplicated, block: B:59:0x0092  */
    /* JADX WARN: Code duplicated, block: B:62:0x0098  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a1  */
    public final void u(final DivWrapLayout divWrapLayout, DivContainer divContainer, DivContainer divContainer2, final oj3 oj3Var) {
        Expression expression;
        qc2 qc2VarE;
        qc2 qc2VarE2;
        qc2 qc2VarE3;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        Expression expression5;
        Expression expression6;
        Drawable drawableY0;
        final DivContainer.Separator separator = divContainer.D;
        DivContainer.Separator separator2 = divContainer2 != null ? divContainer2.D : null;
        if (uj3.b(separator != null ? separator.c : null, separator2 != null ? separator2.c : null)) {
            if (uj3.b(separator != null ? separator.d : null, separator2 != null ? separator2.d : null)) {
                if (!uj3.b(separator != null ? separator.b : null, separator2 != null ? separator2.b : null)) {
                    divWrapLayout.setShowLineSeparators(L(separator, oj3Var));
                    if (separator != null) {
                        expression = separator.c;
                    } else {
                        expression = null;
                    }
                    if (uj3.f(expression)) {
                        if (separator != null) {
                            expression5 = separator.d;
                        } else {
                            expression5 = null;
                        }
                        if (uj3.f(expression5)) {
                            if (separator != null) {
                                expression6 = separator.b;
                            } else {
                                expression6 = null;
                            }
                            if (!uj3.f(expression6)) {
                                e74 e74Var = new e74() {
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Object invoke(Object obj) {
                                        m173invoke(obj);
                                        return zfb.a;
                                    }

                                    public final void m173invoke(Object obj) {
                                        y45.j(obj, "it");
                                        divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                                    }
                                };
                                if (separator != null) {
                                    qc2VarE = null;
                                } else {
                                    qc2VarE = null;
                                }
                                divWrapLayout.addSubscription(qc2VarE);
                                if (separator != null) {
                                    qc2VarE2 = null;
                                } else {
                                    qc2VarE2 = null;
                                }
                                divWrapLayout.addSubscription(qc2VarE2);
                                if (separator != null) {
                                    qc2VarE3 = null;
                                } else {
                                    qc2VarE3 = null;
                                }
                                divWrapLayout.addSubscription(qc2VarE3);
                            }
                        } else {
                            e74 e74Var2 = new e74() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj) {
                                    m173invoke(obj);
                                    return zfb.a;
                                }

                                public final void m173invoke(Object obj) {
                                    y45.j(obj, "it");
                                    divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                                }
                            };
                            if (separator != null) {
                                qc2VarE = null;
                            } else {
                                qc2VarE = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE);
                            if (separator != null) {
                                qc2VarE2 = null;
                            } else {
                                qc2VarE2 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE2);
                            if (separator != null) {
                                qc2VarE3 = null;
                            } else {
                                qc2VarE3 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE3);
                        }
                    } else {
                        e74 e74Var3 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m173invoke(obj);
                                return zfb.a;
                            }

                            public final void m173invoke(Object obj) {
                                y45.j(obj, "it");
                                divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE3);
                    }
                }
            } else {
                divWrapLayout.setShowLineSeparators(L(separator, oj3Var));
                if (separator != null) {
                    expression = separator.c;
                } else {
                    expression = null;
                }
                if (uj3.f(expression)) {
                    e74 e74Var4 = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m173invoke(obj);
                            return zfb.a;
                        }

                        public final void m173invoke(Object obj) {
                            y45.j(obj, "it");
                            divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                        }
                    };
                    if (separator != null) {
                        qc2VarE = null;
                    } else {
                        qc2VarE = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE);
                    if (separator != null) {
                        qc2VarE2 = null;
                    } else {
                        qc2VarE2 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE2);
                    if (separator != null) {
                        qc2VarE3 = null;
                    } else {
                        qc2VarE3 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE3);
                } else {
                    if (separator != null) {
                        expression5 = separator.d;
                    } else {
                        expression5 = null;
                    }
                    if (uj3.f(expression5)) {
                        e74 e74Var5 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m173invoke(obj);
                                return zfb.a;
                            }

                            public final void m173invoke(Object obj) {
                                y45.j(obj, "it");
                                divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE3);
                    } else {
                        if (separator != null) {
                            expression6 = separator.b;
                        } else {
                            expression6 = null;
                        }
                        if (!uj3.f(expression6)) {
                            e74 e74Var6 = new e74() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj) {
                                    m173invoke(obj);
                                    return zfb.a;
                                }

                                public final void m173invoke(Object obj) {
                                    y45.j(obj, "it");
                                    divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                                }
                            };
                            if (separator != null) {
                                qc2VarE = null;
                            } else {
                                qc2VarE = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE);
                            if (separator != null) {
                                qc2VarE2 = null;
                            } else {
                                qc2VarE2 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE2);
                            if (separator != null) {
                                qc2VarE3 = null;
                            } else {
                                qc2VarE3 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE3);
                        }
                    }
                }
            }
        } else {
            divWrapLayout.setShowLineSeparators(L(separator, oj3Var));
            if (separator != null) {
                expression = separator.c;
            } else {
                expression = null;
            }
            if (uj3.f(expression)) {
                e74 e74Var7 = new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m173invoke(obj);
                        return zfb.a;
                    }

                    public final void m173invoke(Object obj) {
                        y45.j(obj, "it");
                        divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                    }
                };
                if (separator != null || (expression4 = separator.c) == null) {
                    qc2VarE = null;
                } else {
                    qc2VarE = expression4.e(oj3Var, e74Var7);
                }
                divWrapLayout.addSubscription(qc2VarE);
                if (separator != null || (expression3 = separator.d) == null) {
                    qc2VarE2 = null;
                } else {
                    qc2VarE2 = expression3.e(oj3Var, e74Var7);
                }
                divWrapLayout.addSubscription(qc2VarE2);
                if (separator != null || (expression2 = separator.b) == null) {
                    qc2VarE3 = null;
                } else {
                    qc2VarE3 = expression2.e(oj3Var, e74Var7);
                }
                divWrapLayout.addSubscription(qc2VarE3);
            } else {
                if (separator != null) {
                    expression5 = separator.d;
                } else {
                    expression5 = null;
                }
                if (uj3.f(expression5)) {
                    e74 e74Var8 = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m173invoke(obj);
                            return zfb.a;
                        }

                        public final void m173invoke(Object obj) {
                            y45.j(obj, "it");
                            divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                        }
                    };
                    if (separator != null) {
                        qc2VarE = null;
                    } else {
                        qc2VarE = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE);
                    if (separator != null) {
                        qc2VarE2 = null;
                    } else {
                        qc2VarE2 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE2);
                    if (separator != null) {
                        qc2VarE3 = null;
                    } else {
                        qc2VarE3 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE3);
                } else {
                    if (separator != null) {
                        expression6 = separator.b;
                    } else {
                        expression6 = null;
                    }
                    if (!uj3.f(expression6)) {
                        e74 e74Var9 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m173invoke(obj);
                                return zfb.a;
                            }

                            public final void m173invoke(Object obj) {
                                y45.j(obj, "it");
                                divWrapLayout.setShowLineSeparators(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE3);
                    }
                }
            }
        }
        final DivContainer.Separator separator3 = divContainer.D;
        DivContainer.Separator separator4 = divContainer2 != null ? divContainer2.D : null;
        if (!DivDataExtensionsKt.f(separator3 != null ? separator3.e : null, separator4 != null ? separator4.e : null)) {
            DivDrawable divDrawable = separator3 != null ? separator3.e : null;
            if (divDrawable != null) {
                DisplayMetrics displayMetrics = divWrapLayout.getResources().getDisplayMetrics();
                y45.i(displayMetrics, "resources.displayMetrics");
                drawableY0 = BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var);
            } else {
                drawableY0 = null;
            }
            divWrapLayout.setLineSeparatorDrawable(drawableY0);
            if (!DivDataExtensionsKt.z(separator3 != null ? separator3.e : null)) {
                sj3.e(divWrapLayout, separator3 != null ? separator3.e : null, oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m174invoke(obj);
                        return zfb.a;
                    }

                    public final void m174invoke(Object obj) {
                        y45.j(obj, "it");
                        DivContainer.Separator separator5 = separator3;
                        Drawable drawableY1 = null;
                        DivDrawable divDrawable2 = separator5 != null ? separator5.e : null;
                        DivWrapLayout divWrapLayout2 = divWrapLayout;
                        if (divDrawable2 != null) {
                            DisplayMetrics displayMetrics2 = divWrapLayout2.getResources().getDisplayMetrics();
                            y45.i(displayMetrics2, "resources.displayMetrics");
                            drawableY1 = BaseDivViewExtensionsKt.y0(divDrawable2, displayMetrics2, oj3Var);
                        }
                        divWrapLayout2.setLineSeparatorDrawable(drawableY1);
                    }
                });
            }
        }
        DivContainer.Separator separator5 = divContainer.D;
        DivContainer.Separator separator6 = divContainer2 != null ? divContainer2.D : null;
        if (DivDataExtensionsKt.g(separator5 != null ? separator5.a : null, separator6 != null ? separator6.a : null)) {
            return;
        }
        DivEdgeInsets divEdgeInsets = separator5 != null ? separator5.a : null;
        Resources resources = divWrapLayout.getResources();
        y45.i(resources, "resources");
        Rect rectK = K(divEdgeInsets, resources, oj3Var);
        divWrapLayout.setLineSeparatorMargins(rectK.left, rectK.top, rectK.right, rectK.bottom);
        DivEdgeInsets divEdgeInsets2 = separator5 != null ? separator5.a : null;
        if (divEdgeInsets2 == null || DivDataExtensionsKt.A(divEdgeInsets2)) {
            return;
        }
        final DivEdgeInsets divEdgeInsets3 = divEdgeInsets2;
        e74 e74Var10 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m172invoke(obj);
                return zfb.a;
            }

            public final void m172invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivEdgeInsets divEdgeInsets4 = divEdgeInsets3;
                DivContainerBinder divContainerBinder = this;
                Resources resources2 = divWrapLayout.getResources();
                y45.i(resources2, "resources");
                Rect rectK2 = divContainerBinder.K(divEdgeInsets4, resources2, oj3Var);
                divWrapLayout.setLineSeparatorMargins(rectK2.left, rectK2.top, rectK2.right, rectK2.bottom);
            }
        };
        divWrapLayout.addSubscription(divEdgeInsets2.f.e(oj3Var, e74Var10));
        divWrapLayout.addSubscription(divEdgeInsets2.a.e(oj3Var, e74Var10));
        Expression expression7 = divEdgeInsets2.e;
        if (expression7 == null && divEdgeInsets2.b == null) {
            divWrapLayout.addSubscription(divEdgeInsets2.c.e(oj3Var, e74Var10));
            divWrapLayout.addSubscription(divEdgeInsets2.d.e(oj3Var, e74Var10));
        } else {
            divWrapLayout.addSubscription(expression7 != null ? expression7.e(oj3Var, e74Var10) : null);
            Expression expression8 = divEdgeInsets2.b;
            divWrapLayout.addSubscription(expression8 != null ? expression8.e(oj3Var, e74Var10) : null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    public final void v(final DivLinearLayout divLinearLayout, final DivContainer divContainer, DivContainer divContainer2, final oj3 oj3Var) {
        if (!uj3.b(divContainer.G, divContainer2 != null ? divContainer2.G : null)) {
            divLinearLayout.setOrientation(J((DivContainer.Orientation) divContainer.G.b(oj3Var)));
            if (!uj3.d(divContainer.G)) {
                divLinearLayout.addSubscription(divContainer.G.e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((DivContainer.Orientation) obj);
                        return zfb.a;
                    }

                    public final void invoke(DivContainer.Orientation orientation) {
                        y45.j(orientation, "orientation");
                        divLinearLayout.setOrientation(this.J(orientation));
                    }
                }));
            }
        }
        if (uj3.b(divContainer.o, divContainer2 != null ? divContainer2.o : null)) {
            if (!uj3.b(divContainer.p, divContainer2 != null ? divContainer2.p : null)) {
                divLinearLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) divContainer.o.b(oj3Var), (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                if (uj3.d(divContainer.o) || !uj3.d(divContainer.p)) {
                    e74 e74Var = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m175invoke(obj);
                            return zfb.a;
                        }

                        public final void m175invoke(Object obj) {
                            y45.j(obj, "<anonymous parameter 0>");
                            Object objB = divContainer.o.b(oj3Var);
                            divLinearLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) objB, (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                        }
                    };
                    divLinearLayout.addSubscription(divContainer.o.e(oj3Var, e74Var));
                    divLinearLayout.addSubscription(divContainer.p.e(oj3Var, e74Var));
                }
            }
        } else {
            divLinearLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) divContainer.o.b(oj3Var), (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
            if (uj3.d(divContainer.o)) {
                e74 e74Var2 = new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m175invoke(obj);
                        return zfb.a;
                    }

                    public final void m175invoke(Object obj) {
                        y45.j(obj, "<anonymous parameter 0>");
                        Object objB = divContainer.o.b(oj3Var);
                        divLinearLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) objB, (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                    }
                };
                divLinearLayout.addSubscription(divContainer.o.e(oj3Var, e74Var2));
                divLinearLayout.addSubscription(divContainer.p.e(oj3Var, e74Var2));
            } else {
                e74 e74Var3 = new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m175invoke(obj);
                        return zfb.a;
                    }

                    public final void m175invoke(Object obj) {
                        y45.j(obj, "<anonymous parameter 0>");
                        Object objB = divContainer.o.b(oj3Var);
                        divLinearLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) objB, (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                    }
                };
                divLinearLayout.addSubscription(divContainer.o.e(oj3Var, e74Var3));
                divLinearLayout.addSubscription(divContainer.p.e(oj3Var, e74Var3));
            }
        }
        x(divLinearLayout, divContainer, divContainer2, oj3Var);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    public final void w(final DivWrapLayout divWrapLayout, final DivContainer divContainer, DivContainer divContainer2, final oj3 oj3Var) {
        if (!uj3.b(divContainer.G, divContainer2 != null ? divContainer2.G : null)) {
            divWrapLayout.setWrapDirection(M((DivContainer.Orientation) divContainer.G.b(oj3Var)));
            if (!uj3.d(divContainer.G)) {
                divWrapLayout.addSubscription(divContainer.G.e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((DivContainer.Orientation) obj);
                        return zfb.a;
                    }

                    public final void invoke(DivContainer.Orientation orientation) {
                        y45.j(orientation, "orientation");
                        divWrapLayout.setWrapDirection(this.M(orientation));
                    }
                }));
            }
        }
        if (uj3.b(divContainer.o, divContainer2 != null ? divContainer2.o : null)) {
            if (!uj3.b(divContainer.p, divContainer2 != null ? divContainer2.p : null)) {
                divWrapLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) divContainer.o.b(oj3Var), (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                if (uj3.d(divContainer.o) || !uj3.d(divContainer.p)) {
                    e74 e74Var = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m176invoke(obj);
                            return zfb.a;
                        }

                        public final void m176invoke(Object obj) {
                            y45.j(obj, "<anonymous parameter 0>");
                            Object objB = divContainer.o.b(oj3Var);
                            divWrapLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) objB, (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                        }
                    };
                    divWrapLayout.addSubscription(divContainer.o.e(oj3Var, e74Var));
                    divWrapLayout.addSubscription(divContainer.p.e(oj3Var, e74Var));
                }
            }
        } else {
            divWrapLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) divContainer.o.b(oj3Var), (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
            if (uj3.d(divContainer.o)) {
                e74 e74Var2 = new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m176invoke(obj);
                        return zfb.a;
                    }

                    public final void m176invoke(Object obj) {
                        y45.j(obj, "<anonymous parameter 0>");
                        Object objB = divContainer.o.b(oj3Var);
                        divWrapLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) objB, (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                    }
                };
                divWrapLayout.addSubscription(divContainer.o.e(oj3Var, e74Var2));
                divWrapLayout.addSubscription(divContainer.p.e(oj3Var, e74Var2));
            } else {
                e74 e74Var3 = new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m176invoke(obj);
                        return zfb.a;
                    }

                    public final void m176invoke(Object obj) {
                        y45.j(obj, "<anonymous parameter 0>");
                        Object objB = divContainer.o.b(oj3Var);
                        divWrapLayout.setGravity(BaseDivViewExtensionsKt.P((DivContentAlignmentHorizontal) objB, (DivContentAlignmentVertical) divContainer.p.b(oj3Var)));
                    }
                };
                divWrapLayout.addSubscription(divContainer.o.e(oj3Var, e74Var3));
                divWrapLayout.addSubscription(divContainer.p.e(oj3Var, e74Var3));
            }
        }
        y(divWrapLayout, divContainer, divContainer2, oj3Var);
        u(divWrapLayout, divContainer, divContainer2, oj3Var);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0041  */
    /* JADX WARN: Code duplicated, block: B:33:0x004a  */
    /* JADX WARN: Code duplicated, block: B:34:0x004d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x0056  */
    /* JADX WARN: Code duplicated, block: B:39:0x0059  */
    /* JADX WARN: Code duplicated, block: B:42:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0062  */
    /* JADX WARN: Code duplicated, block: B:44:0x0065  */
    /* JADX WARN: Code duplicated, block: B:48:0x006d  */
    /* JADX WARN: Code duplicated, block: B:50:0x007a  */
    /* JADX WARN: Code duplicated, block: B:53:0x0083  */
    /* JADX WARN: Code duplicated, block: B:56:0x0089  */
    /* JADX WARN: Code duplicated, block: B:59:0x0092  */
    /* JADX WARN: Code duplicated, block: B:62:0x0098  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a1  */
    public final void x(final DivLinearLayout divLinearLayout, DivContainer divContainer, DivContainer divContainer2, final oj3 oj3Var) {
        Expression expression;
        qc2 qc2VarE;
        qc2 qc2VarE2;
        qc2 qc2VarE3;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        Expression expression5;
        Expression expression6;
        Drawable drawableY0;
        final DivContainer.Separator separator = divContainer.N;
        DivContainer.Separator separator2 = divContainer2 != null ? divContainer2.N : null;
        if (uj3.b(separator != null ? separator.c : null, separator2 != null ? separator2.c : null)) {
            if (uj3.b(separator != null ? separator.d : null, separator2 != null ? separator2.d : null)) {
                if (!uj3.b(separator != null ? separator.b : null, separator2 != null ? separator2.b : null)) {
                    divLinearLayout.setShowDividers(L(separator, oj3Var));
                    if (separator != null) {
                        expression = separator.c;
                    } else {
                        expression = null;
                    }
                    if (uj3.f(expression)) {
                        if (separator != null) {
                            expression5 = separator.d;
                        } else {
                            expression5 = null;
                        }
                        if (uj3.f(expression5)) {
                            if (separator != null) {
                                expression6 = separator.b;
                            } else {
                                expression6 = null;
                            }
                            if (!uj3.f(expression6)) {
                                e74 e74Var = new e74() {
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Object invoke(Object obj) {
                                        m179invoke(obj);
                                        return zfb.a;
                                    }

                                    public final void m179invoke(Object obj) {
                                        y45.j(obj, "it");
                                        divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                                    }
                                };
                                if (separator != null) {
                                    qc2VarE = null;
                                } else {
                                    qc2VarE = null;
                                }
                                divLinearLayout.addSubscription(qc2VarE);
                                if (separator != null) {
                                    qc2VarE2 = null;
                                } else {
                                    qc2VarE2 = null;
                                }
                                divLinearLayout.addSubscription(qc2VarE2);
                                if (separator != null) {
                                    qc2VarE3 = null;
                                } else {
                                    qc2VarE3 = null;
                                }
                                divLinearLayout.addSubscription(qc2VarE3);
                            }
                        } else {
                            e74 e74Var2 = new e74() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj) {
                                    m179invoke(obj);
                                    return zfb.a;
                                }

                                public final void m179invoke(Object obj) {
                                    y45.j(obj, "it");
                                    divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                                }
                            };
                            if (separator != null) {
                                qc2VarE = null;
                            } else {
                                qc2VarE = null;
                            }
                            divLinearLayout.addSubscription(qc2VarE);
                            if (separator != null) {
                                qc2VarE2 = null;
                            } else {
                                qc2VarE2 = null;
                            }
                            divLinearLayout.addSubscription(qc2VarE2);
                            if (separator != null) {
                                qc2VarE3 = null;
                            } else {
                                qc2VarE3 = null;
                            }
                            divLinearLayout.addSubscription(qc2VarE3);
                        }
                    } else {
                        e74 e74Var3 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m179invoke(obj);
                                return zfb.a;
                            }

                            public final void m179invoke(Object obj) {
                                y45.j(obj, "it");
                                divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE3);
                    }
                }
            } else {
                divLinearLayout.setShowDividers(L(separator, oj3Var));
                if (separator != null) {
                    expression = separator.c;
                } else {
                    expression = null;
                }
                if (uj3.f(expression)) {
                    e74 e74Var4 = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m179invoke(obj);
                            return zfb.a;
                        }

                        public final void m179invoke(Object obj) {
                            y45.j(obj, "it");
                            divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                        }
                    };
                    if (separator != null) {
                        qc2VarE = null;
                    } else {
                        qc2VarE = null;
                    }
                    divLinearLayout.addSubscription(qc2VarE);
                    if (separator != null) {
                        qc2VarE2 = null;
                    } else {
                        qc2VarE2 = null;
                    }
                    divLinearLayout.addSubscription(qc2VarE2);
                    if (separator != null) {
                        qc2VarE3 = null;
                    } else {
                        qc2VarE3 = null;
                    }
                    divLinearLayout.addSubscription(qc2VarE3);
                } else {
                    if (separator != null) {
                        expression5 = separator.d;
                    } else {
                        expression5 = null;
                    }
                    if (uj3.f(expression5)) {
                        e74 e74Var5 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m179invoke(obj);
                                return zfb.a;
                            }

                            public final void m179invoke(Object obj) {
                                y45.j(obj, "it");
                                divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE3);
                    } else {
                        if (separator != null) {
                            expression6 = separator.b;
                        } else {
                            expression6 = null;
                        }
                        if (!uj3.f(expression6)) {
                            e74 e74Var6 = new e74() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj) {
                                    m179invoke(obj);
                                    return zfb.a;
                                }

                                public final void m179invoke(Object obj) {
                                    y45.j(obj, "it");
                                    divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                                }
                            };
                            if (separator != null) {
                                qc2VarE = null;
                            } else {
                                qc2VarE = null;
                            }
                            divLinearLayout.addSubscription(qc2VarE);
                            if (separator != null) {
                                qc2VarE2 = null;
                            } else {
                                qc2VarE2 = null;
                            }
                            divLinearLayout.addSubscription(qc2VarE2);
                            if (separator != null) {
                                qc2VarE3 = null;
                            } else {
                                qc2VarE3 = null;
                            }
                            divLinearLayout.addSubscription(qc2VarE3);
                        }
                    }
                }
            }
        } else {
            divLinearLayout.setShowDividers(L(separator, oj3Var));
            if (separator != null) {
                expression = separator.c;
            } else {
                expression = null;
            }
            if (uj3.f(expression)) {
                e74 e74Var7 = new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m179invoke(obj);
                        return zfb.a;
                    }

                    public final void m179invoke(Object obj) {
                        y45.j(obj, "it");
                        divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                    }
                };
                if (separator != null || (expression4 = separator.c) == null) {
                    qc2VarE = null;
                } else {
                    qc2VarE = expression4.e(oj3Var, e74Var7);
                }
                divLinearLayout.addSubscription(qc2VarE);
                if (separator != null || (expression3 = separator.d) == null) {
                    qc2VarE2 = null;
                } else {
                    qc2VarE2 = expression3.e(oj3Var, e74Var7);
                }
                divLinearLayout.addSubscription(qc2VarE2);
                if (separator != null || (expression2 = separator.b) == null) {
                    qc2VarE3 = null;
                } else {
                    qc2VarE3 = expression2.e(oj3Var, e74Var7);
                }
                divLinearLayout.addSubscription(qc2VarE3);
            } else {
                if (separator != null) {
                    expression5 = separator.d;
                } else {
                    expression5 = null;
                }
                if (uj3.f(expression5)) {
                    e74 e74Var8 = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m179invoke(obj);
                            return zfb.a;
                        }

                        public final void m179invoke(Object obj) {
                            y45.j(obj, "it");
                            divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                        }
                    };
                    if (separator != null) {
                        qc2VarE = null;
                    } else {
                        qc2VarE = null;
                    }
                    divLinearLayout.addSubscription(qc2VarE);
                    if (separator != null) {
                        qc2VarE2 = null;
                    } else {
                        qc2VarE2 = null;
                    }
                    divLinearLayout.addSubscription(qc2VarE2);
                    if (separator != null) {
                        qc2VarE3 = null;
                    } else {
                        qc2VarE3 = null;
                    }
                    divLinearLayout.addSubscription(qc2VarE3);
                } else {
                    if (separator != null) {
                        expression6 = separator.b;
                    } else {
                        expression6 = null;
                    }
                    if (!uj3.f(expression6)) {
                        e74 e74Var9 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m179invoke(obj);
                                return zfb.a;
                            }

                            public final void m179invoke(Object obj) {
                                y45.j(obj, "it");
                                divLinearLayout.setShowDividers(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divLinearLayout.addSubscription(qc2VarE3);
                    }
                }
            }
        }
        final DivContainer.Separator separator3 = divContainer.N;
        DivContainer.Separator separator4 = divContainer2 != null ? divContainer2.N : null;
        if (!DivDataExtensionsKt.f(separator3 != null ? separator3.e : null, separator4 != null ? separator4.e : null)) {
            DivDrawable divDrawable = separator3 != null ? separator3.e : null;
            if (divDrawable != null) {
                DisplayMetrics displayMetrics = divLinearLayout.getResources().getDisplayMetrics();
                y45.i(displayMetrics, "resources.displayMetrics");
                drawableY0 = BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var);
            } else {
                drawableY0 = null;
            }
            divLinearLayout.setDividerDrawable(drawableY0);
            if (!DivDataExtensionsKt.z(separator3 != null ? separator3.e : null)) {
                sj3.e(divLinearLayout, separator3 != null ? separator3.e : null, oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m181invoke(obj);
                        return zfb.a;
                    }

                    public final void m181invoke(Object obj) {
                        y45.j(obj, "it");
                        DivContainer.Separator separator5 = separator3;
                        Drawable drawableY1 = null;
                        DivDrawable divDrawable2 = separator5 != null ? separator5.e : null;
                        DivLinearLayout divLinearLayout2 = divLinearLayout;
                        if (divDrawable2 != null) {
                            DisplayMetrics displayMetrics2 = divLinearLayout2.getResources().getDisplayMetrics();
                            y45.i(displayMetrics2, "resources.displayMetrics");
                            drawableY1 = BaseDivViewExtensionsKt.y0(divDrawable2, displayMetrics2, oj3Var);
                        }
                        divLinearLayout2.setDividerDrawable(drawableY1);
                    }
                });
            }
        }
        DivContainer.Separator separator5 = divContainer.N;
        DivContainer.Separator separator6 = divContainer2 != null ? divContainer2.N : null;
        if (DivDataExtensionsKt.g(separator5 != null ? separator5.a : null, separator6 != null ? separator6.a : null)) {
            return;
        }
        DivEdgeInsets divEdgeInsets = separator5 != null ? separator5.a : null;
        Resources resources = divLinearLayout.getResources();
        y45.i(resources, "resources");
        Rect rectK = K(divEdgeInsets, resources, oj3Var);
        divLinearLayout.setDividerMargins(rectK.left, rectK.top, rectK.right, rectK.bottom);
        DivEdgeInsets divEdgeInsets2 = separator5 != null ? separator5.a : null;
        if (divEdgeInsets2 == null || DivDataExtensionsKt.A(divEdgeInsets2)) {
            return;
        }
        final DivEdgeInsets divEdgeInsets3 = divEdgeInsets2;
        e74 e74Var10 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m177invoke(obj);
                return zfb.a;
            }

            public final void m177invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivEdgeInsets divEdgeInsets4 = divEdgeInsets3;
                DivContainerBinder divContainerBinder = this;
                Resources resources2 = divLinearLayout.getResources();
                y45.i(resources2, "resources");
                Rect rectK2 = divContainerBinder.K(divEdgeInsets4, resources2, oj3Var);
                divLinearLayout.setDividerMargins(rectK2.left, rectK2.top, rectK2.right, rectK2.bottom);
            }
        };
        divLinearLayout.addSubscription(divEdgeInsets2.f.e(oj3Var, e74Var10));
        divLinearLayout.addSubscription(divEdgeInsets2.a.e(oj3Var, e74Var10));
        Expression expression7 = divEdgeInsets2.e;
        if (expression7 == null && divEdgeInsets2.b == null) {
            divLinearLayout.addSubscription(divEdgeInsets2.c.e(oj3Var, e74Var10));
            divLinearLayout.addSubscription(divEdgeInsets2.d.e(oj3Var, e74Var10));
        } else {
            divLinearLayout.addSubscription(expression7 != null ? expression7.e(oj3Var, e74Var10) : null);
            Expression expression8 = divEdgeInsets2.b;
            divLinearLayout.addSubscription(expression8 != null ? expression8.e(oj3Var, e74Var10) : null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0041  */
    /* JADX WARN: Code duplicated, block: B:33:0x004a  */
    /* JADX WARN: Code duplicated, block: B:34:0x004d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x0056  */
    /* JADX WARN: Code duplicated, block: B:39:0x0059  */
    /* JADX WARN: Code duplicated, block: B:42:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0062  */
    /* JADX WARN: Code duplicated, block: B:44:0x0065  */
    /* JADX WARN: Code duplicated, block: B:48:0x006d  */
    /* JADX WARN: Code duplicated, block: B:50:0x007a  */
    /* JADX WARN: Code duplicated, block: B:53:0x0083  */
    /* JADX WARN: Code duplicated, block: B:56:0x0089  */
    /* JADX WARN: Code duplicated, block: B:59:0x0092  */
    /* JADX WARN: Code duplicated, block: B:62:0x0098  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a1  */
    public final void y(final DivWrapLayout divWrapLayout, DivContainer divContainer, DivContainer divContainer2, final oj3 oj3Var) {
        Expression expression;
        qc2 qc2VarE;
        qc2 qc2VarE2;
        qc2 qc2VarE3;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        Expression expression5;
        Expression expression6;
        Drawable drawableY0;
        final DivContainer.Separator separator = divContainer.N;
        DivContainer.Separator separator2 = divContainer2 != null ? divContainer2.N : null;
        if (uj3.b(separator != null ? separator.c : null, separator2 != null ? separator2.c : null)) {
            if (uj3.b(separator != null ? separator.d : null, separator2 != null ? separator2.d : null)) {
                if (!uj3.b(separator != null ? separator.b : null, separator2 != null ? separator2.b : null)) {
                    divWrapLayout.setShowSeparators(L(separator, oj3Var));
                    if (separator != null) {
                        expression = separator.c;
                    } else {
                        expression = null;
                    }
                    if (uj3.f(expression)) {
                        if (separator != null) {
                            expression5 = separator.d;
                        } else {
                            expression5 = null;
                        }
                        if (uj3.f(expression5)) {
                            if (separator != null) {
                                expression6 = separator.b;
                            } else {
                                expression6 = null;
                            }
                            if (!uj3.f(expression6)) {
                                e74 e74Var = new e74() {
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Object invoke(Object obj) {
                                        m180invoke(obj);
                                        return zfb.a;
                                    }

                                    public final void m180invoke(Object obj) {
                                        y45.j(obj, "it");
                                        divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                                    }
                                };
                                if (separator != null) {
                                    qc2VarE = null;
                                } else {
                                    qc2VarE = null;
                                }
                                divWrapLayout.addSubscription(qc2VarE);
                                if (separator != null) {
                                    qc2VarE2 = null;
                                } else {
                                    qc2VarE2 = null;
                                }
                                divWrapLayout.addSubscription(qc2VarE2);
                                if (separator != null) {
                                    qc2VarE3 = null;
                                } else {
                                    qc2VarE3 = null;
                                }
                                divWrapLayout.addSubscription(qc2VarE3);
                            }
                        } else {
                            e74 e74Var2 = new e74() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj) {
                                    m180invoke(obj);
                                    return zfb.a;
                                }

                                public final void m180invoke(Object obj) {
                                    y45.j(obj, "it");
                                    divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                                }
                            };
                            if (separator != null) {
                                qc2VarE = null;
                            } else {
                                qc2VarE = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE);
                            if (separator != null) {
                                qc2VarE2 = null;
                            } else {
                                qc2VarE2 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE2);
                            if (separator != null) {
                                qc2VarE3 = null;
                            } else {
                                qc2VarE3 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE3);
                        }
                    } else {
                        e74 e74Var3 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m180invoke(obj);
                                return zfb.a;
                            }

                            public final void m180invoke(Object obj) {
                                y45.j(obj, "it");
                                divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE3);
                    }
                }
            } else {
                divWrapLayout.setShowSeparators(L(separator, oj3Var));
                if (separator != null) {
                    expression = separator.c;
                } else {
                    expression = null;
                }
                if (uj3.f(expression)) {
                    e74 e74Var4 = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m180invoke(obj);
                            return zfb.a;
                        }

                        public final void m180invoke(Object obj) {
                            y45.j(obj, "it");
                            divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                        }
                    };
                    if (separator != null) {
                        qc2VarE = null;
                    } else {
                        qc2VarE = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE);
                    if (separator != null) {
                        qc2VarE2 = null;
                    } else {
                        qc2VarE2 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE2);
                    if (separator != null) {
                        qc2VarE3 = null;
                    } else {
                        qc2VarE3 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE3);
                } else {
                    if (separator != null) {
                        expression5 = separator.d;
                    } else {
                        expression5 = null;
                    }
                    if (uj3.f(expression5)) {
                        e74 e74Var5 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m180invoke(obj);
                                return zfb.a;
                            }

                            public final void m180invoke(Object obj) {
                                y45.j(obj, "it");
                                divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE3);
                    } else {
                        if (separator != null) {
                            expression6 = separator.b;
                        } else {
                            expression6 = null;
                        }
                        if (!uj3.f(expression6)) {
                            e74 e74Var6 = new e74() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj) {
                                    m180invoke(obj);
                                    return zfb.a;
                                }

                                public final void m180invoke(Object obj) {
                                    y45.j(obj, "it");
                                    divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                                }
                            };
                            if (separator != null) {
                                qc2VarE = null;
                            } else {
                                qc2VarE = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE);
                            if (separator != null) {
                                qc2VarE2 = null;
                            } else {
                                qc2VarE2 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE2);
                            if (separator != null) {
                                qc2VarE3 = null;
                            } else {
                                qc2VarE3 = null;
                            }
                            divWrapLayout.addSubscription(qc2VarE3);
                        }
                    }
                }
            }
        } else {
            divWrapLayout.setShowSeparators(L(separator, oj3Var));
            if (separator != null) {
                expression = separator.c;
            } else {
                expression = null;
            }
            if (uj3.f(expression)) {
                e74 e74Var7 = new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m180invoke(obj);
                        return zfb.a;
                    }

                    public final void m180invoke(Object obj) {
                        y45.j(obj, "it");
                        divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                    }
                };
                if (separator != null || (expression4 = separator.c) == null) {
                    qc2VarE = null;
                } else {
                    qc2VarE = expression4.e(oj3Var, e74Var7);
                }
                divWrapLayout.addSubscription(qc2VarE);
                if (separator != null || (expression3 = separator.d) == null) {
                    qc2VarE2 = null;
                } else {
                    qc2VarE2 = expression3.e(oj3Var, e74Var7);
                }
                divWrapLayout.addSubscription(qc2VarE2);
                if (separator != null || (expression2 = separator.b) == null) {
                    qc2VarE3 = null;
                } else {
                    qc2VarE3 = expression2.e(oj3Var, e74Var7);
                }
                divWrapLayout.addSubscription(qc2VarE3);
            } else {
                if (separator != null) {
                    expression5 = separator.d;
                } else {
                    expression5 = null;
                }
                if (uj3.f(expression5)) {
                    e74 e74Var8 = new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            m180invoke(obj);
                            return zfb.a;
                        }

                        public final void m180invoke(Object obj) {
                            y45.j(obj, "it");
                            divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                        }
                    };
                    if (separator != null) {
                        qc2VarE = null;
                    } else {
                        qc2VarE = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE);
                    if (separator != null) {
                        qc2VarE2 = null;
                    } else {
                        qc2VarE2 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE2);
                    if (separator != null) {
                        qc2VarE3 = null;
                    } else {
                        qc2VarE3 = null;
                    }
                    divWrapLayout.addSubscription(qc2VarE3);
                } else {
                    if (separator != null) {
                        expression6 = separator.b;
                    } else {
                        expression6 = null;
                    }
                    if (!uj3.f(expression6)) {
                        e74 e74Var9 = new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                m180invoke(obj);
                                return zfb.a;
                            }

                            public final void m180invoke(Object obj) {
                                y45.j(obj, "it");
                                divWrapLayout.setShowSeparators(this.L(separator, oj3Var));
                            }
                        };
                        if (separator != null) {
                            qc2VarE = null;
                        } else {
                            qc2VarE = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE);
                        if (separator != null) {
                            qc2VarE2 = null;
                        } else {
                            qc2VarE2 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE2);
                        if (separator != null) {
                            qc2VarE3 = null;
                        } else {
                            qc2VarE3 = null;
                        }
                        divWrapLayout.addSubscription(qc2VarE3);
                    }
                }
            }
        }
        final DivContainer.Separator separator3 = divContainer.N;
        DivContainer.Separator separator4 = divContainer2 != null ? divContainer2.N : null;
        if (!DivDataExtensionsKt.f(separator3 != null ? separator3.e : null, separator4 != null ? separator4.e : null)) {
            DivDrawable divDrawable = separator3 != null ? separator3.e : null;
            if (divDrawable != null) {
                DisplayMetrics displayMetrics = divWrapLayout.getResources().getDisplayMetrics();
                y45.i(displayMetrics, "resources.displayMetrics");
                drawableY0 = BaseDivViewExtensionsKt.y0(divDrawable, displayMetrics, oj3Var);
            } else {
                drawableY0 = null;
            }
            divWrapLayout.setSeparatorDrawable(drawableY0);
            if (!DivDataExtensionsKt.z(separator3 != null ? separator3.e : null)) {
                sj3.e(divWrapLayout, separator3 != null ? separator3.e : null, oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m182invoke(obj);
                        return zfb.a;
                    }

                    public final void m182invoke(Object obj) {
                        y45.j(obj, "it");
                        DivContainer.Separator separator5 = separator3;
                        Drawable drawableY1 = null;
                        DivDrawable divDrawable2 = separator5 != null ? separator5.e : null;
                        DivWrapLayout divWrapLayout2 = divWrapLayout;
                        if (divDrawable2 != null) {
                            DisplayMetrics displayMetrics2 = divWrapLayout2.getResources().getDisplayMetrics();
                            y45.i(displayMetrics2, "resources.displayMetrics");
                            drawableY1 = BaseDivViewExtensionsKt.y0(divDrawable2, displayMetrics2, oj3Var);
                        }
                        divWrapLayout2.setSeparatorDrawable(drawableY1);
                    }
                });
            }
        }
        DivContainer.Separator separator5 = divContainer.N;
        DivContainer.Separator separator6 = divContainer2 != null ? divContainer2.N : null;
        if (DivDataExtensionsKt.g(separator5 != null ? separator5.a : null, separator6 != null ? separator6.a : null)) {
            return;
        }
        DivEdgeInsets divEdgeInsets = separator5 != null ? separator5.a : null;
        Resources resources = divWrapLayout.getResources();
        y45.i(resources, "resources");
        Rect rectK = K(divEdgeInsets, resources, oj3Var);
        divWrapLayout.setSeparatorMargins(rectK.left, rectK.top, rectK.right, rectK.bottom);
        DivEdgeInsets divEdgeInsets2 = separator5 != null ? separator5.a : null;
        if (divEdgeInsets2 == null || DivDataExtensionsKt.A(divEdgeInsets2)) {
            return;
        }
        final DivEdgeInsets divEdgeInsets3 = divEdgeInsets2;
        e74 e74Var10 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m178invoke(obj);
                return zfb.a;
            }

            public final void m178invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivEdgeInsets divEdgeInsets4 = divEdgeInsets3;
                DivContainerBinder divContainerBinder = this;
                Resources resources2 = divWrapLayout.getResources();
                y45.i(resources2, "resources");
                Rect rectK2 = divContainerBinder.K(divEdgeInsets4, resources2, oj3Var);
                divWrapLayout.setSeparatorMargins(rectK2.left, rectK2.top, rectK2.right, rectK2.bottom);
            }
        };
        divWrapLayout.addSubscription(divEdgeInsets2.f.e(oj3Var, e74Var10));
        divWrapLayout.addSubscription(divEdgeInsets2.a.e(oj3Var, e74Var10));
        Expression expression7 = divEdgeInsets2.e;
        if (expression7 == null && divEdgeInsets2.b == null) {
            divWrapLayout.addSubscription(divEdgeInsets2.c.e(oj3Var, e74Var10));
            divWrapLayout.addSubscription(divEdgeInsets2.d.e(oj3Var, e74Var10));
        } else {
            divWrapLayout.addSubscription(expression7 != null ? expression7.e(oj3Var, e74Var10) : null);
            Expression expression8 = divEdgeInsets2.b;
            divWrapLayout.addSubscription(expression8 != null ? expression8.e(oj3Var, e74Var10) : null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void z(com.yandex.div.core.view2.a aVar, ViewGroup viewGroup, Div.b bVar, DivStatePath divStatePath) {
        oj3 oldExpressionResolver$div_release;
        y45.j(aVar, "context");
        y45.j(viewGroup, "view");
        y45.j(bVar, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        mk2 mk2Var = (mk2) viewGroup;
        Div.b bVar2 = (Div.b) mk2Var.getDiv();
        com.yandex.div.core.view2.a bindingContext = mk2Var.getBindingContext();
        if (bindingContext == null || (oldExpressionResolver$div_release = bindingContext.b()) == null) {
            oldExpressionResolver$div_release = aVar.a().getOldExpressionResolver$div_release();
        }
        oj3 oj3Var = oldExpressionResolver$div_release;
        if (bVar == bVar2) {
            List items = ((ch2) viewGroup).getItems();
            if (items == null) {
                return;
            }
            G(viewGroup, aVar, bVar.c(), bVar2.c(), items, items, divStatePath);
            return;
        }
        this.b.N(aVar, viewGroup, bVar, bVar2);
        a(viewGroup, aVar, bVar.c(), bVar2 != null ? bVar2.c() : null);
        Iterator it = ViewGroupKt.getChildren(viewGroup).iterator();
        while (it.hasNext()) {
            aVar.a().unbindViewFromDiv$div_release((View) it.next());
        }
        t(viewGroup, aVar, bVar.c(), bVar2 != null ? bVar2.c() : null, oj3Var, divStatePath);
    }
}

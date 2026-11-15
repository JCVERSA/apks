package com.yandex.div.core.tooltip;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.core.view.ViewGroupKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p003activity.C0468ViewTreeOnBackPressedDispatcherOwner;
import androidx.p003activity.OnBackPressedCallback;
import androidx.p003activity.OnBackPressedDispatcher;
import androidx.p003activity.OnBackPressedDispatcherOwner;
import com.yandex.div.R;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.tooltip.DivTooltipController;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.Div;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivTooltip;
import defpackage.b19;
import defpackage.b5;
import defpackage.eg2;
import defpackage.ft2;
import defpackage.gd8;
import defpackage.gqa;
import defpackage.i81;
import defpackage.it2;
import defpackage.oj3;
import defpackage.pdc;
import defpackage.rt2;
import defpackage.st2;
import defpackage.tt2;
import defpackage.u74;
import defpackage.xc3;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;

public class DivTooltipController {
    public final rt2 a;
    public final DivVisibilityActionTracker b;
    public final DivPreloader c;
    public final xc3 d;
    public final st2 e;
    public final b5 f;
    public final u74 g;
    public final Map h;
    public final Handler i;

    public static final class a implements View.OnLayoutChangeListener {
        public final View c;
        public final DivTooltip d;
        public final com.yandex.div.core.view2.a e;
        public final boolean f;

        public a(View view, DivTooltip divTooltip, com.yandex.div.core.view2.a aVar, boolean z) {
            this.c = view;
            this.d = divTooltip;
            this.e = aVar;
            this.f = z;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            DivTooltipController.this.u(this.c, this.d, this.e, this.f);
        }
    }

    public static final class b implements View.OnLayoutChangeListener {
        public final Div2View b;
        public final View c;
        public final View d;
        public final DivTooltip e;
        public final oj3 f;
        public final DivTooltipController g;
        public final b19 h;
        public final com.yandex.div.core.view2.a i;
        public final Div j;
        public final DivTooltipContainer k;

        public b(Div2View div2View, View view, View view2, DivTooltip divTooltip, oj3 oj3Var, DivTooltipController divTooltipController, b19 b19Var, com.yandex.div.core.view2.a aVar, Div div, DivTooltipContainer divTooltipContainer) {
            this.b = div2View;
            this.c = view;
            this.d = view2;
            this.e = divTooltip;
            this.f = oj3Var;
            this.g = divTooltipController;
            this.h = b19Var;
            this.i = aVar;
            this.j = div;
            this.k = divTooltipContainer;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            Rect rectH = it2.h(this.b);
            Point pointF = it2.f(this.c, this.d, this.e, this.f);
            int iMin = Math.min(this.c.getWidth(), rectH.width());
            int iMin2 = Math.min(this.c.getHeight(), rectH.height());
            if (iMin < this.c.getWidth()) {
                this.g.d.a(this.b.getDataTag(), this.b.getDivData()).f(new Throwable("Tooltip width > screen size, width was changed"));
            }
            if (iMin2 < this.c.getHeight()) {
                this.g.d.a(this.b.getDataTag(), this.b.getDivData()).f(new Throwable("Tooltip height > screen size, height was changed"));
            }
            this.h.update(pointF.x, pointF.y, iMin, iMin2);
            this.g.s(this.i, this.j, this.k);
            this.g.a.b();
        }
    }

    public DivTooltipController(rt2 rt2Var, DivVisibilityActionTracker divVisibilityActionTracker, DivPreloader divPreloader, xc3 xc3Var, st2 st2Var, b5 b5Var, u74 u74Var) {
        y45.j(rt2Var, "tooltipRestrictor");
        y45.j(divVisibilityActionTracker, "divVisibilityActionTracker");
        y45.j(divPreloader, "divPreloader");
        y45.j(xc3Var, "errorCollectors");
        y45.j(st2Var, "divTooltipViewBuilder");
        y45.j(b5Var, "accessibilityStateProvider");
        y45.j(u74Var, "createPopup");
        this.a = rt2Var;
        this.b = divVisibilityActionTracker;
        this.c = divPreloader;
        this.d = xc3Var;
        this.e = st2Var;
        this.f = b5Var;
        this.g = u74Var;
        this.h = new LinkedHashMap();
        this.i = new Handler(Looper.getMainLooper());
    }

    public static void r(DivTooltipController divTooltipController, String str, com.yandex.div.core.view2.a aVar, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showTooltip");
        }
        if ((i & 4) != 0) {
            z = false;
        }
        divTooltipController.q(str, aVar, z);
    }

    public static final void v(DivTooltipController divTooltipController, DivTooltip divTooltip, com.yandex.div.core.view2.a aVar, DivTooltipContainer divTooltipContainer, Div2View div2View, View view, b19 b19Var, gqa gqaVar) {
        y45.j(divTooltipController, "this$0");
        y45.j(divTooltip, "$divTooltip");
        y45.j(aVar, "$context");
        y45.j(divTooltipContainer, "$tooltipContainer");
        y45.j(div2View, "$div2View");
        y45.j(view, "$anchor");
        y45.j(b19Var, "$popup");
        y45.j(gqaVar, "$tooltipData");
        divTooltipController.h.remove(divTooltip.g);
        divTooltipController.t(aVar, divTooltip.e);
        Div div = (Div) divTooltipController.b.p().get(divTooltipContainer);
        if (div != null) {
            divTooltipController.b.t(aVar, divTooltipContainer, div);
        }
        divTooltipController.a.b();
        it2.j(b19Var, gqaVar, divTooltipController.f);
    }

    public static final void w(gqa gqaVar, View view, final DivTooltipController divTooltipController, final Div2View div2View, final DivTooltip divTooltip, boolean z, DivTooltipContainer divTooltipContainer, b19 b19Var, View view2, oj3 oj3Var, com.yandex.div.core.view2.a aVar, Div div, boolean z2) {
        y45.j(gqaVar, "$tooltipData");
        y45.j(view, "$anchor");
        y45.j(divTooltipController, "this$0");
        y45.j(div2View, "$div2View");
        y45.j(divTooltip, "$divTooltip");
        y45.j(divTooltipContainer, "$tooltipContainer");
        y45.j(b19Var, "$popup");
        y45.j(view2, "$tooltipView");
        y45.j(oj3Var, "$resolver");
        y45.j(aVar, "$context");
        y45.j(div, "$div");
        if (z2 || gqaVar.b() || !view.isAttachedToWindow() || !divTooltipController.a.d(div2View, view, divTooltip, z)) {
            return;
        }
        if (!pdc.d(divTooltipContainer) || divTooltipContainer.isLayoutRequested()) {
            divTooltipContainer.addOnLayoutChangeListener(new b(div2View, view2, view, divTooltip, oj3Var, divTooltipController, b19Var, aVar, div, divTooltipContainer));
        } else {
            Rect rectH = it2.h(div2View);
            Point pointF = it2.f(view2, view, divTooltip, oj3Var);
            int iMin = Math.min(view2.getWidth(), rectH.width());
            int iMin2 = Math.min(view2.getHeight(), rectH.height());
            if (iMin < view2.getWidth()) {
                divTooltipController.d.a(div2View.getDataTag(), div2View.getDivData()).f(new Throwable("Tooltip width > screen size, width was changed"));
            }
            if (iMin2 < view2.getHeight()) {
                divTooltipController.d.a(div2View.getDataTag(), div2View.getDivData()).f(new Throwable("Tooltip height > screen size, height was changed"));
            }
            b19Var.update(pointF.x, pointF.y, iMin, iMin2);
            divTooltipController.s(aVar, div, divTooltipContainer);
            divTooltipController.a.b();
        }
        b19Var.showAtLocation(view, 0, 0, 0);
        BaseDivViewExtensionsKt.p0(32, view2, divTooltipController.f);
        if (((Number) divTooltip.f.b(oj3Var)).longValue() != 0) {
            divTooltipController.i.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.this$0.n(divTooltip.g, div2View);
                }
            }, ((Number) divTooltip.f.b(oj3Var)).longValue());
        }
    }

    public boolean g() {
        if (this.h.isEmpty()) {
            return false;
        }
        Iterator it = i81.b1(this.h.values()).iterator();
        while (it.hasNext()) {
            k((gqa) it.next());
        }
        this.h.clear();
        return true;
    }

    public final void h(View view) {
        Object tag = view.getTag(R.id.div_tooltips_tag);
        List list = tag instanceof List ? (List) tag : null;
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String strL = l((DivTooltip) it.next());
                if (strL != null) {
                    arrayList.add(strL);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.h.remove((String) it2.next());
            }
        }
        if (view instanceof ViewGroup) {
            Iterator it3 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it3.hasNext()) {
                h((View) it3.next());
            }
        }
    }

    public void i(Div2View div2View) {
        y45.j(div2View, "divView");
        h(div2View);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.activity.OnBackPressedCallback, com.yandex.div.core.tooltip.DivTooltipController$createOnBackPressCallback$1] */
    public final DivTooltipController$createOnBackPressCallback$1 j(final DivTooltip divTooltip, final Div2View div2View) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        b5 b5Var = this.f;
        Context context = div2View.getContext();
        y45.i(context, "divView.getContext()");
        if (!b5Var.c(context)) {
            return null;
        }
        ?? r0 = new OnBackPressedCallback() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(true);
            }

            @Override
            public void handleOnBackPressed() {
                this.a.n(divTooltip.g, div2View);
            }
        };
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = C0468ViewTreeOnBackPressedDispatcherOwner.get(div2View);
        if (onBackPressedDispatcherOwner != null && (onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher()) != 0) {
            onBackPressedDispatcher.addCallback(r0);
            return r0;
        }
        eg2.e(div2View, new AssertionError("Can't find onBackPressedDispatcher to set on back press listener on tooltip."));
        xi.i("Can't find onBackPressedDispatcher to set on back press listener on tooltip.");
        zfb zfbVar = zfb.a;
        return r0;
    }

    public final String k(gqa gqaVar) {
        gqaVar.h(true);
        DivPreloader.f fVarG = gqaVar.g();
        if (fVarG != null) {
            fVarG.cancel();
        }
        if (!gqaVar.f().isShowing()) {
            t(gqaVar.a(), gqaVar.c());
            return gqaVar.d();
        }
        ft2.a(gqaVar.f());
        gqaVar.f().dismiss();
        return null;
    }

    public final String l(DivTooltip divTooltip) {
        gqa gqaVar = (gqa) this.h.get(divTooltip.g);
        if (gqaVar == null) {
            return null;
        }
        return k(gqaVar);
    }

    public View m(String str) {
        y45.j(str, TtmlNode.ATTR_ID);
        Set setEntrySet = this.h.entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator it = setEntrySet.iterator();
        while (it.hasNext()) {
            View contentView = ((gqa) ((Map.Entry) it.next()).getValue()).f().getContentView();
            if (contentView != null) {
                arrayList.add(contentView);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            View viewFindViewWithTag = ((View) it2.next()).findViewWithTag(str);
            if (viewFindViewWithTag != null) {
                y45.i(viewFindViewWithTag, "findViewWithTag<View>(id)");
                return viewFindViewWithTag;
            }
        }
        return null;
    }

    public void n(String str, Div2View div2View) {
        b19 b19VarF;
        y45.j(str, TtmlNode.ATTR_ID);
        y45.j(div2View, "div2View");
        gqa gqaVar = (gqa) this.h.get(str);
        if (gqaVar == null || (b19VarF = gqaVar.f()) == null) {
            return;
        }
        b19VarF.dismiss();
    }

    public void o(View view, List list) {
        y45.j(view, "view");
        view.setTag(R.id.div_tooltips_tag, list);
    }

    public final void p(com.yandex.div.core.view2.a aVar, DivTooltip divTooltip, View view, boolean z) {
        if (this.h.containsKey(divTooltip.g)) {
            return;
        }
        if (!pdc.d(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new a(view, divTooltip, aVar, z));
        } else {
            u(view, divTooltip, aVar, z);
        }
        if (pdc.d(view) || view.isLayoutRequested()) {
            return;
        }
        view.requestLayout();
    }

    public void q(String str, com.yandex.div.core.view2.a aVar, boolean z) {
        zfb zfbVar;
        y45.j(str, "tooltipId");
        y45.j(aVar, "context");
        Pair pairG = it2.g(str, aVar.a());
        if (pairG != null) {
            p(aVar, (DivTooltip) pairG.component1(), (View) pairG.component2(), z);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            eg2.e(aVar.a(), new IllegalStateException("Unable to find view for tooltip '" + str + '\''));
        }
    }

    public final void s(com.yandex.div.core.view2.a aVar, Div div, View view) {
        t(aVar, div);
        DivVisibilityActionTracker.x(this.b, aVar.a(), aVar.b(), view, div, null, null, 48, null);
    }

    public final void t(com.yandex.div.core.view2.a aVar, Div div) {
        DivVisibilityActionTracker.x(this.b, aVar.a(), aVar.b(), null, div, null, null, 48, null);
    }

    public final void u(final View view, final DivTooltip divTooltip, final com.yandex.div.core.view2.a aVar, final boolean z) {
        final Div2View div2ViewA = aVar.a();
        if (this.a.d(div2ViewA, view, divTooltip, z)) {
            final oj3 oj3VarB = aVar.b();
            final Div div = divTooltip.e;
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            DivSize width = divTooltip.e.b().getWidth();
            y45.i(displayMetrics, "displayMetrics");
            int iD0 = BaseDivViewExtensionsKt.D0(width, displayMetrics, oj3VarB, null, 4, null);
            int iD1 = BaseDivViewExtensionsKt.D0(divTooltip.e.b().getHeight(), displayMetrics, oj3VarB, null, 4, null);
            final DivTooltipContainer divTooltipContainerA = this.e.a(aVar, div, iD0, iD1);
            final View tooltipView = divTooltipContainerA.getTooltipView();
            if (tooltipView == null) {
                return;
            }
            final b19 b19Var = (b19) this.g.invoke(divTooltipContainerA, Integer.valueOf(iD0), Integer.valueOf(iD1));
            b19Var.setTouchable(true);
            b19Var.setOutsideTouchable(it2.k(divTooltip, oj3VarB));
            b19Var.setFocusable(true);
            b19Var.setTouchModal(it2.i(divTooltip));
            b19Var.setTouchInterceptor(new gd8(b19Var, tooltipView, it2.i(divTooltip), it2.k(divTooltip, oj3VarB)));
            ft2.d(b19Var, divTooltip, oj3VarB);
            DivPreloader.f fVar = null;
            final gqa gqaVar = new gqa(divTooltip.g, aVar, div, b19Var, fVar, j(divTooltip, div2ViewA), false, 64, null);
            b19Var.setOnDismissListener(new PopupWindow.OnDismissListener() {
                @Override
                public final void onDismiss() {
                    DivTooltipController.v(this.b, divTooltip, aVar, divTooltipContainerA, div2ViewA, view, b19Var, gqaVar);
                }
            });
            this.h.put(divTooltip.g, gqaVar);
            DivPreloader.f fVarH = this.c.h(div, oj3VarB, new DivPreloader.a() {
                @Override
                public final void a(boolean z2) {
                    DivTooltipController.w(gqaVar, view, this, div2ViewA, divTooltip, z, divTooltipContainerA, b19Var, tooltipView, oj3VarB, aVar, div, z2);
                }
            });
            gqa gqaVar2 = (gqa) this.h.get(divTooltip.g);
            if (gqaVar2 == null) {
                return;
            }
            gqaVar2.i(fVarH);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivTooltipController(rt2 rt2Var, DivVisibilityActionTracker divVisibilityActionTracker, DivPreloader divPreloader, st2 st2Var, b5 b5Var, xc3 xc3Var) {
        this(rt2Var, divVisibilityActionTracker, divPreloader, xc3Var, st2Var, b5Var, new u74() {
            public final b19 invoke(View view, int i, int i2) {
                y45.j(view, "c");
                return new tt2(view, i, i2, false, 8, null);
            }

            @Override
            public Object invoke(Object obj, Object obj2, Object obj3) {
                return invoke((View) obj, ((Number) obj2).intValue(), ((Number) obj3).intValue());
            }
        });
        y45.j(rt2Var, "tooltipRestrictor");
        y45.j(divVisibilityActionTracker, "divVisibilityActionTracker");
        y45.j(divPreloader, "divPreloader");
        y45.j(st2Var, "divTooltipViewBuilder");
        y45.j(b5Var, "accessibilityStateProvider");
        y45.j(xc3Var, "errorCollectors");
    }
}

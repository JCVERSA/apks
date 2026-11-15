package com.yandex.div.core.view2;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.HandlerCompat;
import androidx.core.view.ViewGroupKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.logging.Severity;
import com.yandex.div2.Div;
import com.yandex.div2.DivDisappearAction;
import com.yandex.div2.DivVisibilityAction;
import defpackage.abb;
import defpackage.ae5;
import defpackage.bw2;
import defpackage.e74;
import defpackage.ei2;
import defpackage.f8a;
import defpackage.i81;
import defpackage.jd1;
import defpackage.mdc;
import defpackage.ne5;
import defpackage.oj3;
import defpackage.pdc;
import defpackage.s74;
import defpackage.wp2;
import defpackage.x71;
import defpackage.xi;
import defpackage.xp2;
import defpackage.y45;
import defpackage.y71;
import defpackage.y74;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class DivVisibilityActionTracker {
    public static final a n = new a(null);
    public final mdc a;
    public final DivVisibilityActionDispatcher b;
    public final Handler c;
    public final bw2 d;
    public final bw2 e;
    public final SightActionIsEnabledObserver f;
    public final WeakHashMap g;
    public final WeakHashMap h;
    public final WeakHashMap i;
    public final f8a j;
    public final WeakHashMap k;
    public boolean l;
    public final Runnable m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b implements View.OnLayoutChangeListener {
        public final Div2View b;
        public final ei2 c;
        public final DivVisibilityActionTracker d;
        public final View e;
        public final oj3 f;
        public final Div g;
        public final List h;
        public final List i;
        public final List j;

        public b(Div2View div2View, ei2 ei2Var, DivVisibilityActionTracker divVisibilityActionTracker, View view, oj3 oj3Var, Div div, List list, List list2, List list3) {
            this.b = div2View;
            this.c = ei2Var;
            this.d = divVisibilityActionTracker;
            this.e = view;
            this.f = oj3Var;
            this.g = div;
            this.h = list;
            this.i = list2;
            this.j = list3;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            y45.j(view, "view");
            view.removeOnLayoutChangeListener(this);
            if (y45.e(this.b.getDataTag(), this.c)) {
                this.d.f.h(this.e, this.b, this.f, this.g, this.h);
                DivVisibilityActionTracker divVisibilityActionTracker = this.d;
                Div2View div2View = this.b;
                oj3 oj3Var = this.f;
                divVisibilityActionTracker.v(div2View, oj3Var, this.e, this.g, BaseDivViewExtensionsKt.T(this.i, oj3Var), BaseDivViewExtensionsKt.T(this.j, this.f));
            }
            this.d.h.remove(this.e);
        }
    }

    public DivVisibilityActionTracker(mdc mdcVar, DivVisibilityActionDispatcher divVisibilityActionDispatcher) {
        y45.j(mdcVar, "viewVisibilityCalculator");
        y45.j(divVisibilityActionDispatcher, "visibilityActionDispatcher");
        this.a = mdcVar;
        this.b = divVisibilityActionDispatcher;
        this.c = new Handler(Looper.getMainLooper());
        this.d = new bw2();
        this.e = new bw2();
        this.f = new SightActionIsEnabledObserver(new y74() {
            {
                super(5);
            }

            @Override
            public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                invoke((Div2View) obj, (oj3) obj2, (View) obj3, (Div) obj4, (wp2) obj5);
                return zfb.a;
            }

            public final void invoke(Div2View div2View, oj3 oj3Var, View view, Div div, wp2 wp2Var) {
                y45.j(div2View, "scope");
                y45.j(oj3Var, "resolver");
                y45.j(view, "view");
                y45.j(div, TtmlNode.TAG_DIV);
                y45.j(wp2Var, "action");
                if (wp2Var instanceof DivVisibilityAction) {
                    this.this$0.v(div2View, oj3Var, view, div, x71.e(wp2Var), y71.k());
                } else if (wp2Var instanceof DivDisappearAction) {
                    this.this$0.v(div2View, oj3Var, view, div, y71.k(), x71.e(wp2Var));
                }
            }
        }, new y74() {
            {
                super(5);
            }

            @Override
            public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                invoke((Div2View) obj, (oj3) obj2, (View) obj3, (Div) obj4, (wp2) obj5);
                return zfb.a;
            }

            public final void invoke(Div2View div2View, oj3 oj3Var, View view, Div div, wp2 wp2Var) {
                y45.j(div2View, "scope");
                y45.j(oj3Var, "resolver");
                y45.j(view, "<anonymous parameter 2>");
                y45.j(div, "<anonymous parameter 3>");
                y45.j(wp2Var, "action");
                if (wp2Var instanceof DivVisibilityAction) {
                    DivVisibilityActionTracker divVisibilityActionTracker = this.this$0;
                    divVisibilityActionTracker.q(div2View, oj3Var, null, wp2Var, 0, divVisibilityActionTracker.d);
                } else if (wp2Var instanceof DivDisappearAction) {
                    DivVisibilityActionTracker divVisibilityActionTracker2 = this.this$0;
                    divVisibilityActionTracker2.q(div2View, oj3Var, null, wp2Var, 0, divVisibilityActionTracker2.e);
                }
            }
        });
        this.g = new WeakHashMap();
        this.h = new WeakHashMap();
        this.i = new WeakHashMap();
        this.j = new f8a();
        this.k = new WeakHashMap();
        this.m = new Runnable() {
            @Override
            public final void run() {
                DivVisibilityActionTracker.z(this.b);
            }
        };
    }

    public static void x(DivVisibilityActionTracker divVisibilityActionTracker, Div2View div2View, oj3 oj3Var, View view, Div div, List list, List list2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trackVisibilityActionsOf");
        }
        if ((i & 16) != 0) {
            list = BaseDivViewExtensionsKt.W(div.b());
        }
        List list3 = list;
        if ((i & 32) != 0) {
            list2 = BaseDivViewExtensionsKt.X(div.b());
        }
        divVisibilityActionTracker.w(div2View, oj3Var, view, div, list3, list2);
    }

    public static final void z(DivVisibilityActionTracker divVisibilityActionTracker) {
        y45.j(divVisibilityActionTracker, "this$0");
        divVisibilityActionTracker.b.d(divVisibilityActionTracker.g);
        divVisibilityActionTracker.l = false;
    }

    public void A(List list) {
        y45.j(list, "viewList");
        Iterator it = this.g.entrySet().iterator();
        while (it.hasNext()) {
            if (!list.contains(((Map.Entry) it.next()).getKey())) {
                it.remove();
            }
        }
        if (this.l) {
            return;
        }
        this.l = true;
        this.c.post(this.m);
    }

    public final void n(CompositeLogId compositeLogId, View view, wp2 wp2Var, bw2 bw2Var) {
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.INFO)) {
            ne5Var.b(4, "DivVisibilityActionTracker", "cancelTracking: id=" + compositeLogId);
        }
        bw2Var.c(compositeLogId, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Map<CompositeLogId, ? extends wp2>) obj);
                return zfb.a;
            }

            public final void invoke(Map<CompositeLogId, ? extends wp2> map) {
                y45.j(map, "emptyToken");
                this.this$0.c.removeCallbacksAndMessages(map);
            }
        });
        Set set = (Set) this.k.get(view);
        if (!(wp2Var instanceof DivDisappearAction) || view == null || set == null) {
            return;
        }
        set.remove(wp2Var);
        if (set.isEmpty()) {
            this.k.remove(view);
            this.j.remove(view);
        }
    }

    public void o(final com.yandex.div.core.view2.a aVar, View view, Div div) {
        y45.j(aVar, "context");
        y45.j(view, "root");
        u(aVar, view, div, new s74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override
            public final Boolean invoke(View view2, Div div2) {
                y45.j(view2, "currentView");
                this.this$0.i.remove(view2);
                if (div2 != null) {
                    DivVisibilityActionTracker divVisibilityActionTracker = this.this$0;
                    a aVar2 = aVar;
                    DivVisibilityActionTracker.x(divVisibilityActionTracker, aVar2.a(), aVar2.b(), null, div2, null, null, 48, null);
                }
                return Boolean.TRUE;
            }
        });
    }

    public Map p() {
        return this.j.a();
    }

    /* JADX WARN: Code duplicated, block: B:6:0x001a  */
    public final boolean q(Div2View div2View, oj3 oj3Var, View view, wp2 wp2Var, int i, bw2 bw2Var) {
        boolean z;
        if (!(wp2Var instanceof DivVisibilityAction)) {
            if (wp2Var instanceof DivDisappearAction) {
                Set set = (Set) this.k.get(view);
                if ((set != null ? set.contains(wp2Var) : false) && i <= ((Number) ((DivDisappearAction) wp2Var).k.b(oj3Var)).longValue()) {
                    z = true;
                }
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Trying to check visibility for class without known visibility range");
                }
            }
            z = false;
        } else if (i >= ((Number) ((DivVisibilityAction) wp2Var).k.b(oj3Var)).longValue()) {
            z = true;
        } else {
            z = false;
        }
        CompositeLogId compositeLogIdB = bw2Var.b(jd1.a(div2View, (String) wp2Var.b().b(oj3Var)));
        if (view != null && compositeLogIdB == null && z) {
            return true;
        }
        if ((view == null || compositeLogIdB != null || z) && (view == null || compositeLogIdB == null || !z)) {
            if (view != null && compositeLogIdB != null && !z) {
                n(compositeLogIdB, view, wp2Var, bw2Var);
            } else if (view == null && compositeLogIdB != null) {
                n(compositeLogIdB, null, wp2Var, bw2Var);
            }
        }
        return false;
    }

    public final void r(final Div2View div2View, final oj3 oj3Var, final View view, final List list, long j, bw2 bw2Var) {
        HashMap map = new HashMap(list.size(), 1.0f);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            wp2 wp2Var = (wp2) it.next();
            CompositeLogId compositeLogIdA = jd1.a(div2View, (String) wp2Var.b().b(oj3Var));
            ne5 ne5Var = ne5.a;
            if (ne5Var.a(Severity.INFO)) {
                ne5Var.b(4, "DivVisibilityActionTracker", "startTracking: id=" + compositeLogIdA);
            }
            Pair pairA = abb.a(compositeLogIdA, wp2Var);
            map.put(pairA.getFirst(), pairA.getSecond());
        }
        final Map mapSynchronizedMap = Collections.synchronizedMap(map);
        y45.i(mapSynchronizedMap, "logIds");
        bw2Var.a(mapSynchronizedMap);
        final String logId = div2View.getLogId();
        HandlerCompat.postDelayed(this.c, new Runnable() {
            @Override
            public final void run() {
                ne5 ne5Var2 = ne5.a;
                if (ne5Var2.a(Severity.INFO)) {
                    ne5Var2.b(4, "DivVisibilityActionTracker", "dispatchActions: id=" + i81.y0(mapSynchronizedMap.keySet(), null, null, null, 0, null, null, 63, null));
                }
                Set set = (Set) this.this$0.k.get(view);
                if (set != null) {
                    List list2 = list;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list2) {
                        if (obj instanceof DivDisappearAction) {
                            arrayList.add(obj);
                        }
                    }
                    y45.i(set, "waitingActions");
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        set.remove((DivDisappearAction) it2.next());
                    }
                    if (set.isEmpty()) {
                        this.this$0.k.remove(view);
                        this.this$0.j.remove(view);
                    }
                }
                if (y45.e(div2View.getLogId(), logId)) {
                    this.this$0.b.c(div2View, oj3Var, view, (wp2[]) mapSynchronizedMap.values().toArray(new wp2[0]));
                }
            }
        }, mapSynchronizedMap, j);
    }

    public void s(final com.yandex.div.core.view2.a aVar, View view, Div div) {
        y45.j(aVar, "context");
        y45.j(view, "root");
        u(aVar, view, div, new s74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override
            public final Boolean invoke(View view2, Div div2) {
                boolean z;
                y45.j(view2, "currentView");
                boolean zB = this.this$0.a.b(view2);
                if (zB && y45.e(this.this$0.i.get(view2), Boolean.TRUE)) {
                    z = false;
                } else {
                    this.this$0.i.put(view2, Boolean.valueOf(zB));
                    if (div2 != null) {
                        DivVisibilityActionTracker divVisibilityActionTracker = this.this$0;
                        a aVar2 = aVar;
                        DivVisibilityActionTracker.x(divVisibilityActionTracker, aVar2.a(), aVar2.b(), view2, div2, null, null, 48, null);
                    }
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    public void t(com.yandex.div.core.view2.a aVar, View view, Div div) {
        y45.j(aVar, "context");
        y45.j(view, "view");
        y45.j(div, TtmlNode.TAG_DIV);
        List listK = div.b().k();
        if (listK == null) {
            return;
        }
        oj3 oj3VarB = aVar.b();
        v(aVar.a(), oj3VarB, view, div, y71.k(), BaseDivViewExtensionsKt.T(listK, oj3VarB));
    }

    public final void u(com.yandex.div.core.view2.a aVar, View view, Div div, s74 s74Var) {
        if (((Boolean) s74Var.invoke(view, div)).booleanValue() && (view instanceof ViewGroup)) {
            for (View view2 : ViewGroupKt.getChildren((ViewGroup) view)) {
                u(aVar, view2, aVar.a().takeBindingDiv$div_release(view2), s74Var);
            }
        }
    }

    public final void v(Div2View div2View, oj3 oj3Var, View view, Div div, List list, List list2) {
        oj3 oj3Var2 = oj3Var;
        xi.c();
        int iA = this.a.a(view);
        y(view, div, iA);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Long lValueOf = Long.valueOf(((Number) xp2.a((DivVisibilityAction) obj).b(oj3Var2)).longValue());
            Object arrayList = linkedHashMap.get(lValueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lValueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            long jLongValue = ((Number) entry.getKey()).longValue();
            List list3 = (List) entry.getValue();
            ArrayList arrayList2 = new ArrayList(list3.size());
            for (Object obj2 : list3) {
                Iterator it2 = it;
                if (q(div2View, oj3Var, view, (DivVisibilityAction) obj2, iA, this.d)) {
                    arrayList2.add(obj2);
                }
                it = it2;
            }
            Iterator it3 = it;
            if (!arrayList2.isEmpty()) {
                r(div2View, oj3Var, view, arrayList2, jLongValue, this.d);
            }
            it = it3;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj3 : list2) {
            Long lValueOf2 = Long.valueOf(((Number) xp2.a((DivDisappearAction) obj3).b(oj3Var2)).longValue());
            Object arrayList3 = linkedHashMap2.get(lValueOf2);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap2.put(lValueOf2, arrayList3);
            }
            ((List) arrayList3).add(obj3);
        }
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            long jLongValue2 = ((Number) entry2.getKey()).longValue();
            List list4 = (List) entry2.getValue();
            List<DivDisappearAction> list5 = list4;
            boolean z = false;
            for (DivDisappearAction divDisappearAction : list5) {
                boolean z2 = z;
                z = true;
                boolean z3 = ((long) iA) > ((Number) divDisappearAction.k.b(oj3Var2)).longValue();
                if (!z2 && !z3) {
                    z = false;
                }
                if (z3) {
                    WeakHashMap weakHashMap = this.k;
                    Object linkedHashSet = weakHashMap.get(view);
                    if (linkedHashSet == null) {
                        linkedHashSet = new LinkedHashSet();
                        weakHashMap.put(view, linkedHashSet);
                    }
                    ((Set) linkedHashSet).add(divDisappearAction);
                }
            }
            if (z) {
                this.j.put(view, div);
            }
            ArrayList arrayList4 = new ArrayList(list4.size());
            for (Object obj4 : list5) {
                if (q(div2View, oj3Var, view, (DivDisappearAction) obj4, iA, this.e)) {
                    arrayList4.add(obj4);
                }
            }
            if (!arrayList4.isEmpty()) {
                r(div2View, oj3Var, view, arrayList4, jLongValue2, this.e);
            }
            oj3Var2 = oj3Var;
        }
    }

    public void w(Div2View div2View, oj3 oj3Var, View view, Div div, List list, List list2) {
        y45.j(div2View, "scope");
        y45.j(oj3Var, "resolver");
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(list, "appearActions");
        y45.j(list2, "disappearActions");
        List list3 = list2;
        List listJ0 = i81.J0(list, list3);
        if (listJ0.isEmpty()) {
            return;
        }
        ei2 dataTag = div2View.getDataTag();
        if (view == null) {
            this.f.g(listJ0);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                q(div2View, oj3Var, null, (DivVisibilityAction) it.next(), 0, this.d);
            }
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                q(div2View, oj3Var, null, (DivDisappearAction) it2.next(), 0, this.e);
            }
            return;
        }
        if (this.h.containsKey(view)) {
            return;
        }
        if (pdc.e(view) && !view.isLayoutRequested()) {
            if (y45.e(div2View.getDataTag(), dataTag)) {
                this.f.h(view, div2View, oj3Var, div, listJ0);
                v(div2View, oj3Var, view, div, BaseDivViewExtensionsKt.T(list, oj3Var), BaseDivViewExtensionsKt.T(list2, oj3Var));
            }
            this.h.remove(view);
            return;
        }
        View viewB = pdc.b(view);
        if (viewB != null) {
            viewB.addOnLayoutChangeListener(new b(div2View, dataTag, this, view, oj3Var, div, listJ0, list, list2));
            zfb zfbVar = zfb.a;
        }
        this.h.put(view, div);
    }

    public final void y(View view, Div div, int i) {
        if (i > 0) {
            this.g.put(view, div);
        } else {
            this.g.remove(view);
        }
        if (this.l) {
            return;
        }
        this.l = true;
        this.c.post(this.m);
    }
}

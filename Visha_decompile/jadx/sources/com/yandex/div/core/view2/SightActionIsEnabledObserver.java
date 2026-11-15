package com.yandex.div.core.view2;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.SightActionIsEnabledObserver;
import com.yandex.div2.Div;
import defpackage.e74;
import defpackage.i81;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.qj3;
import defpackage.wp2;
import defpackage.y45;
import defpackage.y74;
import defpackage.ye9;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class SightActionIsEnabledObserver {
    public final y74 a;
    public final y74 b;
    public final WeakHashMap c;
    public final HashMap d;
    public final WeakHashMap e;

    public static final class a {
        public final qc2 a;
        public final WeakReference b;

        public a(qc2 qc2Var, View view) {
            y45.j(qc2Var, "disposable");
            y45.j(view, "owner");
            this.a = qc2Var;
            this.b = new WeakReference(view);
        }

        public final void a() {
            this.a.close();
        }

        public final WeakReference b() {
            return this.b;
        }
    }

    public SightActionIsEnabledObserver(y74 y74Var, y74 y74Var2) {
        y45.j(y74Var, "onEnable");
        y45.j(y74Var2, "onDisable");
        this.a = y74Var;
        this.b = y74Var2;
        this.c = new WeakHashMap();
        this.d = new HashMap();
        this.e = new WeakHashMap();
    }

    public static final void e(SightActionIsEnabledObserver sightActionIsEnabledObserver, View view) {
        y45.j(sightActionIsEnabledObserver, "this$0");
        y45.j(view, "$this_addSubscriptionIfNeeded");
        Set setF = (Set) sightActionIsEnabledObserver.c.remove(view);
        if (setF == null) {
            setF = ye9.f();
        }
        sightActionIsEnabledObserver.g(setF);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(final View view) {
        if (this.e.containsKey(view) || !(view instanceof qj3)) {
            return;
        }
        ((qj3) view).addSubscription(new qc2() {
            @Override
            public final void close() {
                SightActionIsEnabledObserver.e(this.b, view);
            }
        });
        this.e.put(view, zfb.a);
    }

    public final void f(wp2 wp2Var) {
        Set set;
        a aVar = (a) this.d.remove(wp2Var);
        if (aVar == null) {
            return;
        }
        aVar.a();
        View view = (View) aVar.b().get();
        if (view == null || (set = (Set) this.c.get(view)) == null) {
            return;
        }
        set.remove(wp2Var);
    }

    public final void g(Iterable iterable) {
        y45.j(iterable, "actions");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            f((wp2) it.next());
        }
    }

    public final void h(final View view, final Div2View div2View, final oj3 oj3Var, final Div div, List list) {
        a aVar;
        this = this;
        y45.j(view, "view");
        y45.j(div2View, "div2View");
        y45.j(oj3Var, "resolver");
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(list, "actions");
        d(view);
        WeakHashMap weakHashMap = this.c;
        Set<wp2> setF = (Set) weakHashMap.get(view);
        if (setF == null) {
            setF = ye9.f();
        }
        Set setU0 = i81.u0(list, setF);
        Set setF1 = i81.f1(setU0);
        for (wp2 wp2Var : setF) {
            if (!setU0.contains(wp2Var) && (aVar = (a) this.d.remove(wp2Var)) != null) {
                aVar.a();
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final wp2 wp2Var2 = (wp2) it.next();
            if (!setU0.contains(wp2Var2)) {
                setF1.add(wp2Var2);
                this.f(wp2Var2);
                this.d.put(wp2Var2, new a(wp2Var2.isEnabled().e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke(((Boolean) obj).booleanValue());
                        return zfb.a;
                    }

                    public final void invoke(boolean z) {
                        if (z) {
                            this.this$0.a.invoke(div2View, oj3Var, view, div, wp2Var2);
                        } else {
                            this.this$0.b.invoke(div2View, oj3Var, view, div, wp2Var2);
                        }
                    }
                }), view));
                setU0 = setU0;
            }
        }
        weakHashMap.put(view, setF1);
    }
}

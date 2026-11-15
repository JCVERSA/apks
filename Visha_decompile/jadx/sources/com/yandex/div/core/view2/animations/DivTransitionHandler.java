package com.yandex.div.core.view2.animations;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.animations.DivTransitionHandler;
import defpackage.i81;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DivTransitionHandler {
    public final Div2View a;
    public List b;
    public List c;
    public boolean d;

    public static abstract class a {

        public static final class C0284a extends a {
            public final int a;

            public C0284a(int i) {
                super(null);
                this.a = i;
            }

            public void a(View view) {
                y45.j(view, "view");
                view.setVisibility(this.a);
            }

            public final int b() {
                return this.a;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b {
        public final Transition a;
        public final View b;
        public final List c;
        public final List d;

        public b(Transition transition, View view, List list, List list2) {
            y45.j(transition, "transition");
            y45.j(view, TypedValues.AttributesType.S_TARGET);
            y45.j(list, "changes");
            y45.j(list2, "savedChanges");
            this.a = transition;
            this.b = view;
            this.c = list;
            this.d = list2;
        }

        public final List a() {
            return this.c;
        }

        public final List b() {
            return this.d;
        }

        public final View c() {
            return this.b;
        }

        public final Transition d() {
            return this.a;
        }
    }

    public DivTransitionHandler(Div2View div2View) {
        y45.j(div2View, "divView");
        this.a = div2View;
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    public static void d(DivTransitionHandler divTransitionHandler, ViewGroup viewGroup, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            viewGroup = divTransitionHandler.a;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        divTransitionHandler.c(viewGroup, z);
    }

    public static final void h(DivTransitionHandler divTransitionHandler) {
        y45.j(divTransitionHandler, "this$0");
        if (divTransitionHandler.d) {
            d(divTransitionHandler, null, false, 3, null);
        }
        divTransitionHandler.d = false;
    }

    public final void c(ViewGroup viewGroup, boolean z) {
        if (z) {
            TransitionManager.endTransitions(viewGroup);
        }
        final TransitionSet transitionSet = new TransitionSet();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            transitionSet.addTransition(((b) it.next()).d());
        }
        transitionSet.addListener((Transition.TransitionListener) new TransitionListenerAdapter() {
            @Override
            public void onTransitionEnd(Transition transition) {
                y45.j(transition, "transition");
                this.c.clear();
                transitionSet.removeListener(this);
            }
        });
        TransitionManager.beginDelayedTransition(viewGroup, transitionSet);
        for (b bVar : this.b) {
            for (a.C0284a c0284a : bVar.a()) {
                c0284a.a(bVar.c());
                bVar.b().add(c0284a);
            }
        }
        this.c.clear();
        this.c.addAll(this.b);
        this.b.clear();
    }

    public final List e(List list, View view) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            a.C0284a c0284a = y45.e(bVar.c(), view) ? (a.C0284a) i81.C0(bVar.b()) : null;
            if (c0284a != null) {
                arrayList.add(c0284a);
            }
        }
        return arrayList;
    }

    public final a.C0284a f(View view) {
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        a.C0284a c0284a = (a.C0284a) i81.C0(e(this.b, view));
        if (c0284a != null) {
            return c0284a;
        }
        a.C0284a c0284a2 = (a.C0284a) i81.C0(e(this.c, view));
        if (c0284a2 != null) {
            return c0284a2;
        }
        return null;
    }

    public final void g() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                DivTransitionHandler.h(this.b);
            }
        });
    }

    public final void i(Transition transition, View view, a.C0284a c0284a) {
        y45.j(transition, "transition");
        y45.j(view, "view");
        y45.j(c0284a, "changeType");
        this.b.add(new b(transition, view, y71.q(c0284a), new ArrayList()));
        g();
    }

    public final void j(ViewGroup viewGroup, boolean z) {
        y45.j(viewGroup, "root");
        this.d = false;
        c(viewGroup, z);
    }
}

package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

class y extends FragmentTransitionImpl {

    class a extends Transition.EpicenterCallback {

        final Rect f9194a;

        a(Rect rect) {
            this.f9194a = rect;
        }

        @Override
        public Rect onGetEpicenter(Transition transition) {
            return this.f9194a;
        }
    }

    class e extends Transition.EpicenterCallback {

        final Rect f9208a;

        e(Rect rect) {
            this.f9208a = rect;
        }

        @Override
        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f9208a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f9208a;
        }
    }

    static class f {
        static void a(Transition transition, Transition.TransitionListener transitionListener) {
            transition.addListener(transitionListener);
        }

        static void b(Transition transition, Transition.TransitionListener transitionListener) {
            transition.removeListener(transitionListener);
        }
    }

    y() {
    }

    private static boolean v(Transition transition) {
        return (FragmentTransitionImpl.i(transition.getTargetIds()) && FragmentTransitionImpl.i(transition.getTargetNames()) && FragmentTransitionImpl.i(transition.getTargetTypes())) ? false : true;
    }

    @Override
    public void a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override
    public void b(Object obj, ArrayList arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i10 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i10 < transitionCount) {
                b(transitionSet.getTransitionAt(i10), arrayList);
                i10++;
            }
            return;
        }
        if (v(transition) || !FragmentTransitionImpl.i(transition.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i10 < size) {
            transition.addTarget((View) arrayList.get(i10));
            i10++;
        }
    }

    @Override
    public void c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override
    public boolean e(Object obj) {
        return obj instanceof Transition;
    }

    @Override
    public Object f(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override
    public Object j(Object obj, Object obj2, Object obj3) {
        Transition ordering = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (ordering != null && transition != null) {
            ordering = new TransitionSet().addTransition(ordering).addTransition(transition).setOrdering(1);
        } else if (ordering == null) {
            ordering = transition != null ? transition : null;
        }
        if (transition2 == null) {
            return ordering;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (ordering != null) {
            transitionSet.addTransition(ordering);
        }
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    @Override
    public Object k(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    @Override
    public void m(Object obj, View view, ArrayList arrayList) {
        ((Transition) obj).addListener(new b(view, arrayList));
    }

    @Override
    public void n(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((Transition) obj).addListener(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override
    public void o(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new e(rect));
        }
    }

    @Override
    public void p(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            h(view, rect);
            ((Transition) obj).setEpicenterCallback(new a(rect));
        }
    }

    @Override
    public void q(Fragment fragment, Object obj, androidx.core.os.e eVar, Runnable runnable) {
        ((Transition) obj).addListener(new d(runnable));
    }

    @Override
    public void s(Object obj, View view, ArrayList arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransitionImpl.d(targets, (View) arrayList.get(i10));
        }
        targets.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override
    public void t(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            w(transitionSet, arrayList, arrayList2);
        }
    }

    @Override
    public Object u(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    public void w(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        int i10 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i10 < transitionCount) {
                w(transitionSet.getTransitionAt(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (v(transition) || (targets = transition.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i10 < size) {
            transition.addTarget((View) arrayList2.get(i10));
            i10++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transition.removeTarget((View) arrayList.get(size2));
        }
    }

    class b implements Transition.TransitionListener {

        final View f9196a;

        final ArrayList f9197b;

        b(View view, ArrayList arrayList) {
            this.f9196a = view;
            this.f9197b = arrayList;
        }

        @Override
        public void onTransitionEnd(Transition transition) {
            f.b(transition, this);
            this.f9196a.setVisibility(8);
            int size = this.f9197b.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((View) this.f9197b.get(i10)).setVisibility(0);
            }
        }

        @Override
        public void onTransitionStart(Transition transition) {
            f.b(transition, this);
            f.a(transition, this);
        }

        @Override
        public void onTransitionCancel(Transition transition) {
        }

        @Override
        public void onTransitionPause(Transition transition) {
        }

        @Override
        public void onTransitionResume(Transition transition) {
        }
    }

    class c implements Transition.TransitionListener {

        final Object f9199a;

        final ArrayList f9200b;

        final Object f9201c;

        final ArrayList f9202d;

        final Object f9203e;

        final ArrayList f9204f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f9199a = obj;
            this.f9200b = arrayList;
            this.f9201c = obj2;
            this.f9202d = arrayList2;
            this.f9203e = obj3;
            this.f9204f = arrayList3;
        }

        @Override
        public void onTransitionEnd(Transition transition) {
            f.b(transition, this);
        }

        @Override
        public void onTransitionStart(Transition transition) {
            Object obj = this.f9199a;
            if (obj != null) {
                y.this.w(obj, this.f9200b, null);
            }
            Object obj2 = this.f9201c;
            if (obj2 != null) {
                y.this.w(obj2, this.f9202d, null);
            }
            Object obj3 = this.f9203e;
            if (obj3 != null) {
                y.this.w(obj3, this.f9204f, null);
            }
        }

        @Override
        public void onTransitionCancel(Transition transition) {
        }

        @Override
        public void onTransitionPause(Transition transition) {
        }

        @Override
        public void onTransitionResume(Transition transition) {
        }
    }

    class d implements Transition.TransitionListener {

        final Runnable f9206a;

        d(Runnable runnable) {
            this.f9206a = runnable;
        }

        @Override
        public void onTransitionEnd(Transition transition) {
            this.f9206a.run();
        }

        @Override
        public void onTransitionCancel(Transition transition) {
        }

        @Override
        public void onTransitionPause(Transition transition) {
        }

        @Override
        public void onTransitionResume(Transition transition) {
        }

        @Override
        public void onTransitionStart(Transition transition) {
        }
    }
}

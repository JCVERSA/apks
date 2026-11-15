package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class DefaultSpecialEffectsController extends SpecialEffectsController {

    static class a {

        static final int[] f8923a;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            f8923a = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8923a[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8923a[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8923a[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class b extends AnimatorListenerAdapter {

        final ViewGroup f8924a;

        final View f8925b;

        final boolean f8926c;

        final SpecialEffectsController.Operation f8927d;

        final e f8928e;

        b(ViewGroup viewGroup, View view, boolean z10, SpecialEffectsController.Operation operation, e eVar) {
            this.f8924a = viewGroup;
            this.f8925b = view;
            this.f8926c = z10;
            this.f8927d = operation;
            this.f8928e = eVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f8924a.endViewTransition(this.f8925b);
            if (this.f8926c) {
                this.f8927d.e().applyState(this.f8925b);
            }
            this.f8928e.a();
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Animator from operation " + this.f8927d + " has ended.");
            }
        }
    }

    class c implements androidx.core.os.e.a {

        final Animator f8930a;

        final SpecialEffectsController.Operation f8931b;

        c(Animator animator, SpecialEffectsController.Operation operation) {
            this.f8930a = animator;
            this.f8931b = operation;
        }

        @Override
        public void onCancel() {
            this.f8930a.end();
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Animator from operation " + this.f8931b + " has been canceled.");
            }
        }
    }

    class d implements androidx.core.os.e.a {

        final View f8933a;

        final ViewGroup f8934b;

        final e f8935c;

        final SpecialEffectsController.Operation f8936d;

        d(View view, ViewGroup viewGroup, e eVar, SpecialEffectsController.Operation operation) {
            this.f8933a = view;
            this.f8934b = viewGroup;
            this.f8935c = eVar;
            this.f8936d = operation;
        }

        @Override
        public void onCancel() {
            this.f8933a.clearAnimation();
            this.f8934b.endViewTransition(this.f8933a);
            this.f8935c.a();
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Animation from operation " + this.f8936d + " has been cancelled.");
            }
        }
    }

    private static class e extends f {

        private boolean f8938c;

        private boolean f8939d;

        private FragmentAnim.a f8940e;

        e(SpecialEffectsController.Operation operation, androidx.core.os.e eVar, boolean z10) {
            super(operation, eVar);
            this.f8939d = false;
            this.f8938c = z10;
        }

        FragmentAnim.a e(Context context) {
            if (this.f8939d) {
                return this.f8940e;
            }
            FragmentAnim.a aVarB = FragmentAnim.b(context, b().f(), b().e() == SpecialEffectsController.Operation.State.VISIBLE, this.f8938c);
            this.f8940e = aVarB;
            this.f8939d = true;
            return aVarB;
        }
    }

    private static class f {

        private final SpecialEffectsController.Operation f8941a;

        private final androidx.core.os.e f8942b;

        f(SpecialEffectsController.Operation operation, androidx.core.os.e eVar) {
            this.f8941a = operation;
            this.f8942b = eVar;
        }

        void a() {
            this.f8941a.d(this.f8942b);
        }

        SpecialEffectsController.Operation b() {
            return this.f8941a;
        }

        androidx.core.os.e c() {
            return this.f8942b;
        }

        boolean d() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(this.f8941a.f().mView);
            SpecialEffectsController.Operation.State stateE = this.f8941a.e();
            return stateFrom == stateE || !(stateFrom == (state = SpecialEffectsController.Operation.State.VISIBLE) || stateE == state);
        }
    }

    private static class g extends f {

        private final Object f8943c;

        private final boolean f8944d;

        private final Object f8945e;

        g(SpecialEffectsController.Operation operation, androidx.core.os.e eVar, boolean z10, boolean z11) {
            super(operation, eVar);
            if (operation.e() == SpecialEffectsController.Operation.State.VISIBLE) {
                this.f8943c = z10 ? operation.f().getReenterTransition() : operation.f().getEnterTransition();
                this.f8944d = z10 ? operation.f().getAllowReturnTransitionOverlap() : operation.f().getAllowEnterTransitionOverlap();
            } else {
                this.f8943c = z10 ? operation.f().getReturnTransition() : operation.f().getExitTransition();
                this.f8944d = true;
            }
            if (!z11) {
                this.f8945e = null;
            } else if (z10) {
                this.f8945e = operation.f().getSharedElementReturnTransition();
            } else {
                this.f8945e = operation.f().getSharedElementEnterTransition();
            }
        }

        private FragmentTransitionImpl f(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = x.f9192a;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.e(obj)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = x.f9193b;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.e(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().f() + " is not a valid framework Transition or AndroidX Transition");
        }

        FragmentTransitionImpl e() {
            FragmentTransitionImpl fragmentTransitionImplF = f(this.f8943c);
            FragmentTransitionImpl fragmentTransitionImplF2 = f(this.f8945e);
            if (fragmentTransitionImplF == null || fragmentTransitionImplF2 == null || fragmentTransitionImplF == fragmentTransitionImplF2) {
                return fragmentTransitionImplF != null ? fragmentTransitionImplF : fragmentTransitionImplF2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().f() + " returned Transition " + this.f8943c + " which uses a different Transition  type than its shared element transition " + this.f8945e);
        }

        public Object g() {
            return this.f8945e;
        }

        Object h() {
            return this.f8943c;
        }

        public boolean i() {
            return this.f8945e != null;
        }

        boolean j() {
            return this.f8944d;
        }
    }

    DefaultSpecialEffectsController(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void w(List list, List list2, boolean z10, Map map) {
        int i10;
        boolean z11;
        Context context;
        View view;
        int i11;
        SpecialEffectsController.Operation operation;
        final ViewGroup viewGroupM = m();
        Context context2 = viewGroupM.getContext();
        ArrayList<e> arrayList = new ArrayList();
        Iterator it = list.iterator();
        boolean z12 = false;
        while (true) {
            i10 = 2;
            if (!it.hasNext()) {
                break;
            }
            e eVar = (e) it.next();
            if (eVar.d()) {
                eVar.a();
            } else {
                FragmentAnim.a aVarE = eVar.e(context2);
                if (aVarE == null) {
                    eVar.a();
                } else {
                    Animator animator = aVarE.f8989b;
                    if (animator == null) {
                        arrayList.add(eVar);
                    } else {
                        SpecialEffectsController.Operation operationB = eVar.b();
                        Fragment fragmentF = operationB.f();
                        if (Boolean.TRUE.equals(map.get(operationB))) {
                            if (FragmentManager.M0(2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + fragmentF + " as this Fragment was involved in a Transition.");
                            }
                            eVar.a();
                        } else {
                            boolean z13 = operationB.e() == SpecialEffectsController.Operation.State.GONE;
                            if (z13) {
                                list2.remove(operationB);
                            }
                            View view2 = fragmentF.mView;
                            viewGroupM.startViewTransition(view2);
                            animator.addListener(new b(viewGroupM, view2, z13, operationB, eVar));
                            animator.setTarget(view2);
                            animator.start();
                            if (FragmentManager.M0(2)) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Animator from operation ");
                                operation = operationB;
                                sb2.append(operation);
                                sb2.append(" has started.");
                                Log.v("FragmentManager", sb2.toString());
                            } else {
                                operation = operationB;
                            }
                            eVar.c().b(new c(animator, operation));
                            z12 = true;
                        }
                    }
                }
            }
        }
        for (final e eVar2 : arrayList) {
            final SpecialEffectsController.Operation operationB2 = eVar2.b();
            Fragment fragmentF2 = operationB2.f();
            if (z10) {
                if (FragmentManager.M0(i10)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Transitions.");
                }
                eVar2.a();
            } else if (z12) {
                if (FragmentManager.M0(i10)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Animators.");
                }
                eVar2.a();
            } else {
                final View view3 = fragmentF2.mView;
                Animation animation = (Animation) androidx.core.util.i.g(((FragmentAnim.a) androidx.core.util.i.g(eVar2.e(context2))).f8988a);
                if (operationB2.e() != SpecialEffectsController.Operation.State.REMOVED) {
                    view3.startAnimation(animation);
                    eVar2.a();
                    z11 = z12;
                    context = context2;
                    i11 = i10;
                    view = view3;
                } else {
                    viewGroupM.startViewTransition(view3);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation, viewGroupM, view3);
                    z11 = z12;
                    context = context2;
                    view = view3;
                    endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() {
                        @Override
                        public void onAnimationEnd(Animation animation2) {
                            viewGroupM.post(new Runnable() {
                                @Override
                                public void run() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    viewGroupM.endViewTransition(view3);
                                    eVar2.a();
                                }
                            });
                            if (FragmentManager.M0(2)) {
                                Log.v("FragmentManager", "Animation from operation " + operationB2 + " has ended.");
                            }
                        }

                        @Override
                        public void onAnimationStart(Animation animation2) {
                            if (FragmentManager.M0(2)) {
                                Log.v("FragmentManager", "Animation from operation " + operationB2 + " has reached onAnimationStart.");
                            }
                        }

                        @Override
                        public void onAnimationRepeat(Animation animation2) {
                        }
                    });
                    view.startAnimation(endViewTransitionAnimation);
                    i11 = 2;
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "Animation from operation " + operationB2 + " has started.");
                    }
                }
                eVar2.c().b(new d(view, viewGroupM, eVar2, operationB2));
                i10 = i11;
                z12 = z11;
                context2 = context;
            }
        }
    }

    private Map x(List list, List list2, final boolean z10, final SpecialEffectsController.Operation operation, final SpecialEffectsController.Operation operation2) {
        String str;
        String str2;
        String str3;
        View view;
        Object objK;
        ArrayList arrayList;
        Object objK2;
        ArrayList arrayList2;
        SpecialEffectsController.Operation operation3;
        SpecialEffectsController.Operation operation4;
        View view2;
        SpecialEffectsController.Operation operation5;
        HashMap map;
        View view3;
        ArrayList arrayList3;
        SpecialEffectsController.Operation operation6;
        final Rect rect;
        androidx.core.app.a0 enterTransitionCallback;
        androidx.core.app.a0 exitTransitionCallback;
        ArrayList<String> arrayList4;
        int i10;
        final View view4;
        String strB;
        ArrayList<String> arrayList5;
        SpecialEffectsController.Operation operation7 = operation;
        SpecialEffectsController.Operation operation8 = operation2;
        HashMap map2 = new HashMap();
        Iterator it = list.iterator();
        final FragmentTransitionImpl fragmentTransitionImpl = null;
        while (it.hasNext()) {
            g gVar = (g) it.next();
            if (!gVar.d()) {
                FragmentTransitionImpl fragmentTransitionImplE = gVar.e();
                if (fragmentTransitionImpl == null) {
                    fragmentTransitionImpl = fragmentTransitionImplE;
                } else if (fragmentTransitionImplE != null && fragmentTransitionImpl != fragmentTransitionImplE) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + gVar.b().f() + " returned Transition " + gVar.h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (fragmentTransitionImpl == null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                g gVar2 = (g) it2.next();
                map2.put(gVar2.b(), Boolean.FALSE);
                gVar2.a();
            }
            return map2;
        }
        View view5 = new View(m().getContext());
        Rect rect2 = new Rect();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        androidx.collection.a aVar = new androidx.collection.a();
        Iterator it3 = list.iterator();
        Object obj = null;
        View view6 = null;
        boolean z11 = false;
        while (true) {
            str = "FragmentManager";
            if (!it3.hasNext()) {
                break;
            }
            g gVar3 = (g) it3.next();
            if (!gVar3.i() || operation7 == null || operation8 == null) {
                operation5 = operation7;
                map = map2;
                view3 = view5;
                arrayList3 = arrayList7;
                operation6 = operation8;
                rect = rect2;
                view6 = view6;
            } else {
                Object objU = fragmentTransitionImpl.u(fragmentTransitionImpl.f(gVar3.g()));
                ArrayList<String> sharedElementSourceNames = operation2.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = operation.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = operation.f().getSharedElementTargetNames();
                View view7 = view6;
                HashMap map3 = map2;
                int i11 = 0;
                while (i11 < sharedElementTargetNames.size()) {
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i11));
                    ArrayList<String> arrayList8 = sharedElementTargetNames;
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i11));
                    }
                    i11++;
                    sharedElementTargetNames = arrayList8;
                }
                ArrayList<String> sharedElementTargetNames2 = operation2.f().getSharedElementTargetNames();
                if (z10 == 0) {
                    enterTransitionCallback = operation.f().getExitTransitionCallback();
                    exitTransitionCallback = operation2.f().getEnterTransitionCallback();
                } else {
                    enterTransitionCallback = operation.f().getEnterTransitionCallback();
                    exitTransitionCallback = operation2.f().getExitTransitionCallback();
                }
                int size = sharedElementSourceNames.size();
                view3 = view5;
                int i12 = 0;
                while (i12 < size) {
                    aVar.put(sharedElementSourceNames.get(i12), sharedElementTargetNames2.get(i12));
                    i12++;
                    size = size;
                    rect2 = rect2;
                }
                Rect rect3 = rect2;
                if (FragmentManager.M0(2)) {
                    Log.v("FragmentManager", ">>> entering view names <<<");
                    for (Iterator<String> it4 = sharedElementTargetNames2.iterator(); it4.hasNext(); it4 = it4) {
                        Log.v("FragmentManager", "Name: " + it4.next());
                    }
                    Log.v("FragmentManager", ">>> exiting view names <<<");
                    for (Iterator<String> it5 = sharedElementSourceNames.iterator(); it5.hasNext(); it5 = it5) {
                        Log.v("FragmentManager", "Name: " + it5.next());
                    }
                }
                androidx.collection.a aVar2 = new androidx.collection.a();
                u(aVar2, operation.f().mView);
                aVar2.retainAll(sharedElementSourceNames);
                if (enterTransitionCallback != null) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "Executing exit callback for operation " + operation7);
                    }
                    enterTransitionCallback.d(sharedElementSourceNames, aVar2);
                    int size2 = sharedElementSourceNames.size() - 1;
                    while (size2 >= 0) {
                        String str4 = sharedElementSourceNames.get(size2);
                        View view8 = (View) aVar2.get(str4);
                        if (view8 == null) {
                            aVar.remove(str4);
                            arrayList5 = sharedElementSourceNames;
                        } else {
                            arrayList5 = sharedElementSourceNames;
                            if (!str4.equals(ViewCompat.getTransitionName(view8))) {
                                aVar.put(ViewCompat.getTransitionName(view8), (String) aVar.remove(str4));
                            }
                        }
                        size2--;
                        sharedElementSourceNames = arrayList5;
                    }
                    arrayList4 = sharedElementSourceNames;
                } else {
                    arrayList4 = sharedElementSourceNames;
                    aVar.retainAll(aVar2.keySet());
                }
                final androidx.collection.a aVar3 = new androidx.collection.a();
                u(aVar3, operation2.f().mView);
                aVar3.retainAll(sharedElementTargetNames2);
                aVar3.retainAll(aVar.values());
                if (exitTransitionCallback != null) {
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "Executing enter callback for operation " + operation8);
                    }
                    exitTransitionCallback.d(sharedElementTargetNames2, aVar3);
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str5 = sharedElementTargetNames2.get(size3);
                        View view9 = (View) aVar3.get(str5);
                        if (view9 == null) {
                            String strB2 = x.b(aVar, str5);
                            if (strB2 != null) {
                                aVar.remove(strB2);
                            }
                        } else if (!str5.equals(ViewCompat.getTransitionName(view9)) && (strB = x.b(aVar, str5)) != null) {
                            aVar.put(strB, ViewCompat.getTransitionName(view9));
                        }
                    }
                } else {
                    x.d(aVar, aVar3);
                }
                v(aVar2, aVar.keySet());
                v(aVar3, aVar.values());
                if (aVar.isEmpty()) {
                    arrayList6.clear();
                    arrayList7.clear();
                    arrayList3 = arrayList7;
                    operation5 = operation7;
                    view6 = view7;
                    view3 = view3;
                    map = map3;
                    rect = rect3;
                    obj = null;
                    operation6 = operation8;
                } else {
                    x.a(operation2.f(), operation.f(), z10, aVar2, true);
                    ArrayList arrayList9 = arrayList7;
                    OneShotPreDrawListener.add(m(), new Runnable() {
                        @Override
                        public void run() {
                            x.a(operation2.f(), operation.f(), z10, aVar3, false);
                        }
                    });
                    arrayList6.addAll(aVar2.values());
                    if (arrayList4.isEmpty()) {
                        i10 = 0;
                        view6 = view7;
                    } else {
                        i10 = 0;
                        view6 = (View) aVar2.get((String) arrayList4.get(0));
                        fragmentTransitionImpl.p(objU, view6);
                    }
                    arrayList9.addAll(aVar3.values());
                    if (sharedElementTargetNames2.isEmpty() || (view4 = (View) aVar3.get((String) sharedElementTargetNames2.get(i10))) == null) {
                        rect = rect3;
                    } else {
                        rect = rect3;
                        OneShotPreDrawListener.add(m(), new Runnable() {
                            @Override
                            public void run() {
                                fragmentTransitionImpl.h(view4, rect);
                            }
                        });
                        z11 = true;
                    }
                    fragmentTransitionImpl.s(objU, view3, arrayList6);
                    fragmentTransitionImpl.n(objU, null, null, null, null, objU, arrayList9);
                    Boolean bool = Boolean.TRUE;
                    operation5 = operation;
                    arrayList3 = arrayList9;
                    map = map3;
                    map.put(operation5, bool);
                    operation6 = operation2;
                    map.put(operation6, bool);
                    obj = objU;
                }
            }
            view5 = view3;
            rect2 = rect;
            arrayList6 = arrayList6;
            arrayList7 = arrayList3;
            operation8 = operation6;
            map2 = map;
            fragmentTransitionImpl = fragmentTransitionImpl;
            operation7 = operation5;
            aVar = aVar;
        }
        View view10 = view6;
        androidx.collection.a aVar4 = aVar;
        SpecialEffectsController.Operation operation9 = operation7;
        HashMap map4 = map2;
        ArrayList arrayList10 = arrayList6;
        View view11 = view5;
        FragmentTransitionImpl fragmentTransitionImpl2 = fragmentTransitionImpl;
        ArrayList arrayList11 = arrayList7;
        SpecialEffectsController.Operation operation10 = operation8;
        Rect rect4 = rect2;
        ArrayList arrayList12 = new ArrayList();
        Iterator it6 = list.iterator();
        Object obj2 = null;
        Object obj3 = null;
        while (it6.hasNext()) {
            g gVar4 = (g) it6.next();
            if (gVar4.d()) {
                map4.put(gVar4.b(), Boolean.FALSE);
                gVar4.a();
                it6 = it6;
            } else {
                Iterator it7 = it6;
                Object objF = fragmentTransitionImpl2.f(gVar4.h());
                SpecialEffectsController.Operation operationB = gVar4.b();
                boolean z12 = obj != null && (operationB == operation9 || operationB == operation10);
                if (objF == null) {
                    if (!z12) {
                        map4.put(operationB, Boolean.FALSE);
                        gVar4.a();
                    }
                    view = view11;
                    str3 = str;
                    arrayList = arrayList10;
                    arrayList2 = arrayList11;
                    objK = obj2;
                    objK2 = obj3;
                    operation3 = operation10;
                    view2 = view10;
                } else {
                    str3 = str;
                    final ArrayList arrayList13 = new ArrayList();
                    Object obj4 = obj2;
                    t(arrayList13, operationB.f().mView);
                    if (z12) {
                        if (operationB == operation9) {
                            arrayList13.removeAll(arrayList10);
                        } else {
                            arrayList13.removeAll(arrayList11);
                        }
                    }
                    if (arrayList13.isEmpty()) {
                        fragmentTransitionImpl2.a(objF, view11);
                        view = view11;
                        arrayList = arrayList10;
                        arrayList2 = arrayList11;
                        objK2 = obj3;
                        operation4 = operationB;
                        operation3 = operation10;
                        objK = obj4;
                    } else {
                        fragmentTransitionImpl2.b(objF, arrayList13);
                        view = view11;
                        objK = obj4;
                        arrayList = arrayList10;
                        objK2 = obj3;
                        arrayList2 = arrayList11;
                        operation3 = operation10;
                        fragmentTransitionImpl2.n(objF, objF, arrayList13, null, null, null, null);
                        if (operationB.e() == SpecialEffectsController.Operation.State.GONE) {
                            operation4 = operationB;
                            list2.remove(operation4);
                            ArrayList arrayList14 = new ArrayList(arrayList13);
                            arrayList14.remove(operation4.f().mView);
                            fragmentTransitionImpl2.m(objF, operation4.f().mView, arrayList14);
                            OneShotPreDrawListener.add(m(), new Runnable() {
                                @Override
                                public void run() {
                                    x.e(arrayList13, 4);
                                }
                            });
                        } else {
                            operation4 = operationB;
                        }
                    }
                    if (operation4.e() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList12.addAll(arrayList13);
                        if (z11) {
                            fragmentTransitionImpl2.o(objF, rect4);
                        }
                        view2 = view10;
                    } else {
                        view2 = view10;
                        fragmentTransitionImpl2.p(objF, view2);
                    }
                    map4.put(operation4, Boolean.TRUE);
                    if (gVar4.j()) {
                        objK2 = fragmentTransitionImpl2.k(objK2, objF, null);
                    } else {
                        objK = fragmentTransitionImpl2.k(objK, objF, null);
                    }
                }
                it6 = it7;
                obj2 = objK;
                view10 = view2;
                obj3 = objK2;
                operation10 = operation3;
                str = str3;
                view11 = view;
                arrayList10 = arrayList;
                arrayList11 = arrayList2;
            }
        }
        String str6 = str;
        ArrayList<View> arrayList15 = arrayList10;
        ArrayList<View> arrayList16 = arrayList11;
        SpecialEffectsController.Operation operation11 = operation10;
        Object objJ = fragmentTransitionImpl2.j(obj3, obj2, obj);
        if (objJ == null) {
            return map4;
        }
        Iterator it8 = list.iterator();
        while (it8.hasNext()) {
            final g gVar5 = (g) it8.next();
            if (!gVar5.d()) {
                Object objH = gVar5.h();
                final SpecialEffectsController.Operation operationB2 = gVar5.b();
                boolean z13 = obj != null && (operationB2 == operation9 || operationB2 == operation11);
                if (objH == null && !z13) {
                    str2 = str6;
                } else if (ViewCompat.isLaidOut(m())) {
                    str2 = str6;
                    fragmentTransitionImpl2.q(gVar5.b().f(), objJ, gVar5.c(), new Runnable() {
                        @Override
                        public void run() {
                            gVar5.a();
                            if (FragmentManager.M0(2)) {
                                Log.v("FragmentManager", "Transition for operation " + operationB2 + "has completed");
                            }
                        }
                    });
                } else {
                    if (FragmentManager.M0(2)) {
                        str2 = str6;
                        Log.v(str2, "SpecialEffectsController: Container " + m() + " has not been laid out. Completing operation " + operationB2);
                    } else {
                        str2 = str6;
                    }
                    gVar5.a();
                }
                str6 = str2;
            }
        }
        String str7 = str6;
        if (!ViewCompat.isLaidOut(m())) {
            return map4;
        }
        x.e(arrayList12, 4);
        ArrayList arrayListL = fragmentTransitionImpl2.l(arrayList16);
        if (FragmentManager.M0(2)) {
            Log.v(str7, ">>>>> Beginning transition <<<<<");
            Log.v(str7, ">>>>> SharedElementFirstOutViews <<<<<");
            for (View view12 : arrayList15) {
                Log.v(str7, "View: " + view12 + " Name: " + ViewCompat.getTransitionName(view12));
            }
            Log.v(str7, ">>>>> SharedElementLastInViews <<<<<");
            for (View view13 : arrayList16) {
                Log.v(str7, "View: " + view13 + " Name: " + ViewCompat.getTransitionName(view13));
            }
        }
        fragmentTransitionImpl2.c(m(), objJ);
        fragmentTransitionImpl2.r(m(), arrayList15, arrayList16, arrayListL, aVar4);
        x.e(arrayList12, 0);
        fragmentTransitionImpl2.t(obj, arrayList15, arrayList16);
        return map4;
    }

    private void y(List list) {
        Fragment fragmentF = ((SpecialEffectsController.Operation) list.get(list.size() - 1)).f();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SpecialEffectsController.Operation operation = (SpecialEffectsController.Operation) it.next();
            operation.f().mAnimationInfo.f8967c = fragmentF.mAnimationInfo.f8967c;
            operation.f().mAnimationInfo.f8968d = fragmentF.mAnimationInfo.f8968d;
            operation.f().mAnimationInfo.f8969e = fragmentF.mAnimationInfo.f8969e;
            operation.f().mAnimationInfo.f8970f = fragmentF.mAnimationInfo.f8970f;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a8  */
    @Override
    void f(List list, boolean z10) {
        Iterator it = list.iterator();
        SpecialEffectsController.Operation operation = null;
        SpecialEffectsController.Operation operation2 = null;
        while (it.hasNext()) {
            SpecialEffectsController.Operation operation3 = (SpecialEffectsController.Operation) it.next();
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(operation3.f().mView);
            int i10 = a.f8923a[operation3.e().ordinal()];
            if (i10 == 1 || i10 == 2 || i10 == 3) {
                if (stateFrom == SpecialEffectsController.Operation.State.VISIBLE && operation == null) {
                    operation = operation3;
                }
            } else if (i10 == 4 && stateFrom != SpecialEffectsController.Operation.State.VISIBLE) {
                operation2 = operation3;
            }
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Executing operations from " + operation + " to " + operation2);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList(list);
        y(list);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final SpecialEffectsController.Operation operation4 = (SpecialEffectsController.Operation) it2.next();
            androidx.core.os.e eVar = new androidx.core.os.e();
            operation4.j(eVar);
            arrayList.add(new e(operation4, eVar, z10));
            androidx.core.os.e eVar2 = new androidx.core.os.e();
            operation4.j(eVar2);
            boolean z11 = false;
            if (z10) {
                if (operation4 == operation) {
                    z11 = true;
                }
            } else if (operation4 == operation2) {
                z11 = true;
            }
            arrayList2.add(new g(operation4, eVar2, z10, z11));
            operation4.a(new Runnable() {
                @Override
                public void run() {
                    if (arrayList3.contains(operation4)) {
                        arrayList3.remove(operation4);
                        DefaultSpecialEffectsController.this.s(operation4);
                    }
                }
            });
        }
        Map mapX = x(arrayList2, arrayList3, z10, operation, operation2);
        w(arrayList, arrayList3, mapX.containsValue(Boolean.TRUE), mapX);
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            s((SpecialEffectsController.Operation) it3.next());
        }
        arrayList3.clear();
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Completed executing operations from " + operation + " to " + operation2);
        }
    }

    void s(SpecialEffectsController.Operation operation) {
        operation.e().applyState(operation.f().mView);
    }

    void t(ArrayList arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt.getVisibility() == 0) {
                t(arrayList, childAt);
            }
        }
    }

    void u(Map map, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            map.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    u(map, childAt);
                }
            }
        }
    }

    void v(androidx.collection.a aVar, Collection collection) {
        Iterator<Map.Entry<Object, Object>> it = aVar.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(ViewCompat.getTransitionName((View) it.next().getValue()))) {
                it.remove();
            }
        }
    }
}

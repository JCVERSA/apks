package defpackage;

import android.animation.Animator;
import android.view.View;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.Div;
import com.yandex.div2.DivActionAnimatorStart;
import com.yandex.div2.DivAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;

public final class kg2 {
    public final Div2View a;
    public final Map b;

    public static final class a implements Animator.AnimatorListener {
        public final Pair c;

        public a(Pair pair) {
            this.c = pair;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            kg2.this.b.remove(this.c);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public static final class b implements Animator.AnimatorListener {
        public final Pair c;

        public b(Pair pair) {
            this.c = pair;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            kg2.this.b.remove(this.c);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public kg2(Div2View div2View) {
        y45.j(div2View, "divView");
        this.a = div2View;
        this.b = new LinkedHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DivAnimator b(View view, String str) {
        og2 og2VarB;
        if (view instanceof mk2) {
            Div div = ((mk2) view).getDiv();
            DivAnimator divAnimatorC = c((div == null || (og2VarB = div.b()) == null) ? null : og2VarB.A(), str);
            if (divAnimatorC != null) {
                return divAnimatorC;
            }
            Object parent = view.getParent();
            View view2 = parent instanceof View ? (View) parent : null;
            if (view2 != null) {
                return b(view2, str);
            }
            return null;
        }
        if (!(view instanceof Div2View)) {
            Object parent2 = view.getParent();
            View view3 = parent2 instanceof View ? (View) parent2 : null;
            if (view3 != null) {
                return b(view3, str);
            }
            return null;
        }
        eg2.f(this.a, new RuntimeException("Unable to find animator with id '" + str + '\''));
        return null;
    }

    public final DivAnimator c(List list, String str) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (y45.e(((DivAnimator) obj).b().getId(), str)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty() && arrayList.size() <= 1) {
            return (DivAnimator) i81.o0(arrayList);
        }
        return null;
    }

    public final void d() {
        Iterator it = new ArrayList(this.b.values()).iterator();
        while (it.hasNext()) {
            ((Animator) it.next()).cancel();
        }
        this.b.clear();
    }

    public final void e(String str, View view, DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var) {
        Animator animator;
        y45.j(str, "scopeId");
        y45.j(view, "targetView");
        y45.j(divActionAnimatorStart, "action");
        y45.j(oj3Var, "resolver");
        String str2 = divActionAnimatorStart.a;
        DivAnimator divAnimatorB = b(view, str2);
        if (divAnimatorB == null) {
            return;
        }
        Pair pairA = abb.a(str, str2);
        if (this.b.containsKey(pairA) && (animator = (Animator) this.b.remove(pairA)) != null) {
            animator.cancel();
        }
        Animator animatorA = gu2.a.a(this.a, divAnimatorB, divActionAnimatorStart, oj3Var);
        if (animatorA == null) {
            return;
        }
        animatorA.addListener(new b(pairA));
        animatorA.addListener(new a(pairA));
        this.b.put(pairA, animatorA);
        animatorA.start();
    }

    public final void f(String str, String str2) {
        y45.j(str, "scopeId");
        y45.j(str2, "animatorId");
        Animator animator = (Animator) this.b.remove(abb.a(str, str2));
        if (animator == null) {
            return;
        }
        animator.cancel();
    }
}

package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.transition.ChangeBounds;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import com.yandex.div.core.view2.animations.Fade;
import com.yandex.div.core.view2.animations.Scale;
import com.yandex.div.core.view2.animations.Slide;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.DivAnimationInterpolator;
import com.yandex.div2.DivAppearanceTransition;
import com.yandex.div2.DivChangeTransition;
import com.yandex.div2.DivDimension;
import com.yandex.div2.DivSlideTransition;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public class ut2 {
    public final Context a;
    public final tv2 b;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivSlideTransition.Edge.values().length];
            try {
                iArr[DivSlideTransition.Edge.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivSlideTransition.Edge.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivSlideTransition.Edge.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivSlideTransition.Edge.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public ut2(Context context, tv2 tv2Var) {
        y45.j(context, "context");
        y45.j(tv2Var, "viewIdProvider");
        this.a = context;
        this.b = tv2Var;
    }

    public final List a(pc9 pc9Var, oj3 oj3Var) {
        ArrayList arrayList = new ArrayList();
        Iterator it = pc9Var.iterator();
        while (it.hasNext()) {
            zl2 zl2Var = (zl2) it.next();
            String id = zl2Var.c().b().getId();
            DivChangeTransition divChangeTransitionJ = zl2Var.c().b().j();
            if (id != null && divChangeTransitionJ != null) {
                Transition transitionH = h(divChangeTransitionJ, oj3Var);
                transitionH.addTarget(this.b.a(id));
                arrayList.add(transitionH);
            }
        }
        return arrayList;
    }

    public final List b(pc9 pc9Var, oj3 oj3Var) {
        ArrayList arrayList = new ArrayList();
        Iterator it = pc9Var.iterator();
        while (it.hasNext()) {
            zl2 zl2Var = (zl2) it.next();
            String id = zl2Var.c().b().getId();
            DivAppearanceTransition divAppearanceTransitionZ = zl2Var.c().b().z();
            if (id != null && divAppearanceTransitionZ != null) {
                Transition transitionG = g(divAppearanceTransitionZ, 1, oj3Var);
                transitionG.addTarget(this.b.a(id));
                arrayList.add(transitionG);
            }
        }
        return arrayList;
    }

    public final List c(pc9 pc9Var, oj3 oj3Var) {
        ArrayList arrayList = new ArrayList();
        Iterator it = pc9Var.iterator();
        while (it.hasNext()) {
            zl2 zl2Var = (zl2) it.next();
            String id = zl2Var.c().b().getId();
            DivAppearanceTransition divAppearanceTransitionI = zl2Var.c().b().i();
            if (id != null && divAppearanceTransitionI != null) {
                Transition transitionG = g(divAppearanceTransitionI, 2, oj3Var);
                transitionG.addTarget(this.b.a(id));
                arrayList.add(transitionG);
            }
        }
        return arrayList;
    }

    public TransitionSet d(pc9 pc9Var, pc9 pc9Var2, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "fromResolver");
        y45.j(oj3Var2, "toResolver");
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        if (pc9Var != null) {
            v7b.a(transitionSet, c(pc9Var, oj3Var));
        }
        if (pc9Var != null && pc9Var2 != null) {
            v7b.a(transitionSet, a(pc9Var, oj3Var));
        }
        if (pc9Var2 != null) {
            v7b.a(transitionSet, b(pc9Var2, oj3Var2));
        }
        return transitionSet;
    }

    public Transition e(DivAppearanceTransition divAppearanceTransition, int i, oj3 oj3Var) {
        y45.j(oj3Var, "resolver");
        if (divAppearanceTransition == null) {
            return null;
        }
        return g(divAppearanceTransition, i, oj3Var);
    }

    public final DisplayMetrics f() {
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "context.resources.displayMetrics");
        return displayMetrics;
    }

    public final Transition g(DivAppearanceTransition divAppearanceTransition, int i, oj3 oj3Var) {
        if (divAppearanceTransition instanceof DivAppearanceTransition.d) {
            TransitionSet transitionSet = new TransitionSet();
            Iterator it = ((DivAppearanceTransition.d) divAppearanceTransition).c().a.iterator();
            while (it.hasNext()) {
                Transition transitionG = g((DivAppearanceTransition) it.next(), i, oj3Var);
                transitionSet.setDuration(Math.max(transitionSet.getDuration(), transitionG.getStartDelay() + transitionG.getDuration()));
                transitionSet.addTransition(transitionG);
            }
            return transitionSet;
        }
        if (divAppearanceTransition instanceof DivAppearanceTransition.b) {
            DivAppearanceTransition.b bVar = (DivAppearanceTransition.b) divAppearanceTransition;
            Fade fade = new Fade((float) ((Number) bVar.c().a.b(oj3Var)).doubleValue());
            fade.setMode(i);
            fade.setDuration(((Number) bVar.c().b().b(oj3Var)).longValue());
            fade.setStartDelay(((Number) bVar.c().d().b(oj3Var)).longValue());
            fade.setInterpolator(eu2.d((DivAnimationInterpolator) bVar.c().c().b(oj3Var)));
            return fade;
        }
        if (divAppearanceTransition instanceof DivAppearanceTransition.c) {
            DivAppearanceTransition.c cVar = (DivAppearanceTransition.c) divAppearanceTransition;
            Scale scale = new Scale((float) ((Number) cVar.c().e.b(oj3Var)).doubleValue(), (float) ((Number) cVar.c().c.b(oj3Var)).doubleValue(), (float) ((Number) cVar.c().d.b(oj3Var)).doubleValue());
            scale.setMode(i);
            scale.setDuration(((Number) cVar.c().b().b(oj3Var)).longValue());
            scale.setStartDelay(((Number) cVar.c().d().b(oj3Var)).longValue());
            scale.setInterpolator(eu2.d((DivAnimationInterpolator) cVar.c().c().b(oj3Var)));
            return scale;
        }
        if (!(divAppearanceTransition instanceof DivAppearanceTransition.e)) {
            throw new NoWhenBranchMatchedException();
        }
        DivAppearanceTransition.e eVar = (DivAppearanceTransition.e) divAppearanceTransition;
        DivDimension divDimension = eVar.c().a;
        Slide slide = new Slide(divDimension != null ? BaseDivViewExtensionsKt.G0(divDimension, f(), oj3Var) : -1, i((DivSlideTransition.Edge) eVar.c().c.b(oj3Var)));
        slide.setMode(i);
        slide.setDuration(((Number) eVar.c().b().b(oj3Var)).longValue());
        slide.setStartDelay(((Number) eVar.c().d().b(oj3Var)).longValue());
        slide.setInterpolator(eu2.d((DivAnimationInterpolator) eVar.c().c().b(oj3Var)));
        return slide;
    }

    public final Transition h(DivChangeTransition divChangeTransition, oj3 oj3Var) {
        if (divChangeTransition instanceof DivChangeTransition.c) {
            TransitionSet transitionSet = new TransitionSet();
            Iterator it = ((DivChangeTransition.c) divChangeTransition).c().a.iterator();
            while (it.hasNext()) {
                transitionSet.addTransition(h((DivChangeTransition) it.next(), oj3Var));
            }
            return transitionSet;
        }
        if (!(divChangeTransition instanceof DivChangeTransition.a)) {
            throw new NoWhenBranchMatchedException();
        }
        ChangeBounds changeBounds = new ChangeBounds();
        DivChangeTransition.a aVar = (DivChangeTransition.a) divChangeTransition;
        changeBounds.setDuration(((Number) aVar.c().b().b(oj3Var)).longValue());
        changeBounds.setStartDelay(((Number) aVar.c().d().b(oj3Var)).longValue());
        changeBounds.setInterpolator(eu2.d((DivAnimationInterpolator) aVar.c().c().b(oj3Var)));
        return changeBounds;
    }

    public final int i(DivSlideTransition.Edge edge) {
        int i = a.a[edge.ordinal()];
        if (i == 1) {
            return 3;
        }
        if (i == 2) {
            return 48;
        }
        if (i == 3) {
            return 5;
        }
        if (i == 4) {
            return 80;
        }
        throw new NoWhenBranchMatchedException();
    }
}

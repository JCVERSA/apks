package defpackage;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.evaluable.MissingVariableException;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivActionAnimatorStart;
import com.yandex.div2.DivAnimationDirection;
import com.yandex.div2.DivAnimationInterpolator;
import com.yandex.div2.DivAnimator;
import com.yandex.div2.DivColorAnimator;
import com.yandex.div2.DivCount;
import com.yandex.div2.DivNumberAnimator;
import com.yandex.div2.DivTypedValue;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class gu2 {
    public static final gu2 a = new gu2();

    public static final class a implements Animator.AnimatorListener {
        public final List b;
        public final Div2View c;
        public final oj3 d;

        public a(List list, Div2View div2View, oj3 oj3Var) {
            this.b = list;
            this.c = div2View;
            this.d = oj3Var;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                this.c.handleAction((DivAction) it.next(), "animation_end", this.d);
            }
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public static final class b implements Animator.AnimatorListener {
        public final List b;
        public final Div2View c;
        public final oj3 d;

        public b(List list, Div2View div2View, oj3 oj3Var) {
            this.b = list;
            this.c = div2View;
            this.d = oj3Var;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                this.c.handleAction((DivAction) it.next(), "animation_cancel", this.d);
            }
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

    public final Animator a(Div2View div2View, DivAnimator divAnimator, DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var) {
        y45.j(div2View, "divView");
        y45.j(divAnimator, "animator");
        y45.j(divActionAnimatorStart, "startAction");
        y45.j(oj3Var, "expressionResolver");
        if (divAnimator instanceof DivAnimator.c) {
            return e(div2View, ((DivAnimator.c) divAnimator).c(), divActionAnimatorStart, oj3Var);
        }
        if (divAnimator instanceof DivAnimator.a) {
            return b(div2View, ((DivAnimator.a) divAnimator).c(), divActionAnimatorStart, oj3Var);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Animator b(Div2View div2View, DivColorAnimator divColorAnimator, DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var) {
        vj3 expressionsRuntime;
        Integer numB;
        Integer numB2;
        snb snbVarG;
        String strH = divColorAnimator.h();
        RuntimeStore runtimeStore = div2View.getRuntimeStore();
        if (runtimeStore == null || (expressionsRuntime = runtimeStore.j(oj3Var)) == null) {
            expressionsRuntime = div2View.getExpressionsRuntime();
        }
        Integer num = null;
        qnb qnbVarA = (expressionsRuntime == null || (snbVarG = expressionsRuntime.g()) == null) ? null : snbVarG.a(strH);
        if (!(qnbVarA instanceof qnb.c)) {
            qnbVarA = null;
        }
        qnb.c cVar = (qnb.c) qnbVarA;
        if (cVar == null) {
            eg2.e(div2View, new MissingVariableException("Unable to find color variable with name '" + divColorAnimator.h() + '\'', null, 2, null));
            return null;
        }
        DivTypedValue divTypedValue = divActionAnimatorStart.h;
        if (divTypedValue == null || (numB2 = eg2.b(divTypedValue, oj3Var)) == null) {
            Expression expression = divColorAnimator.j;
            if (expression != null) {
                num = (Integer) expression.b(oj3Var);
            }
        } else {
            num = numB2;
        }
        DivTypedValue divTypedValue2 = divActionAnimatorStart.d;
        int iIntValue = (divTypedValue2 == null || (numB = eg2.b(divTypedValue2, oj3Var)) == null) ? ((Number) divColorAnimator.e.b(oj3Var)).intValue() : numB.intValue();
        if (num != null) {
            cVar.p(k81.c(k81.d(num.intValue())));
        }
        ObjectAnimator objectAnimatorOfArgb = ObjectAnimator.ofArgb(cVar, w81.a, iIntValue);
        y45.i(objectAnimatorOfArgb, "ofArgb(variable, ColorIntValueProperty, endValue)");
        return f(objectAnimatorOfArgb, div2View, divColorAnimator, divActionAnimatorStart, oj3Var);
    }

    public final Animator c(Div2View div2View, DivNumberAnimator divNumberAnimator, DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var, qnb.e eVar) {
        Double dC;
        Double dC2;
        DivTypedValue divTypedValue = divActionAnimatorStart.h;
        if (divTypedValue == null || (dC = eg2.c(divTypedValue, oj3Var)) == null) {
            Expression expression = divNumberAnimator.j;
            dC = expression != null ? (Double) expression.b(oj3Var) : null;
        }
        DivTypedValue divTypedValue2 = divActionAnimatorStart.d;
        double dDoubleValue = (divTypedValue2 == null || (dC2 = eg2.c(divTypedValue2, oj3Var)) == null) ? ((Number) divNumberAnimator.e.b(oj3Var)).doubleValue() : dC2.doubleValue();
        if (dC != null) {
            eVar.p(dC);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(eVar, f47.a, (float) dDoubleValue);
        y45.i(objectAnimatorOfFloat, "ofFloat(variable, Number…erty, endValue.toFloat())");
        return f(objectAnimatorOfFloat, div2View, divNumberAnimator, divActionAnimatorStart, oj3Var);
    }

    public final Animator d(Div2View div2View, DivNumberAnimator divNumberAnimator, DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var, qnb.f fVar) {
        Object objB;
        Object objB2;
        DivTypedValue divTypedValue = divActionAnimatorStart.h;
        if (divTypedValue == null || (objB = eg2.g(divTypedValue, oj3Var)) == null) {
            Expression expression = divNumberAnimator.j;
            objB = expression != null ? expression.b(oj3Var) : null;
        }
        DivTypedValue divTypedValue2 = divActionAnimatorStart.d;
        if (divTypedValue2 == null || (objB2 = eg2.g(divTypedValue2, oj3Var)) == null) {
            objB2 = divNumberAnimator.e.b(oj3Var);
        }
        if (objB != null) {
            fVar.p(objB);
        }
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(fVar, y25.a, ((Number) objB2).intValue());
        y45.i(objectAnimatorOfInt, "ofInt(variable, IntegerV…operty, endValue.toInt())");
        return f(objectAnimatorOfInt, div2View, divNumberAnimator, divActionAnimatorStart, oj3Var);
    }

    public final Animator e(Div2View div2View, DivNumberAnimator divNumberAnimator, DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var) {
        vj3 expressionsRuntime;
        snb snbVarG;
        String strH = divNumberAnimator.h();
        RuntimeStore runtimeStore = div2View.getRuntimeStore();
        if (runtimeStore == null || (expressionsRuntime = runtimeStore.j(oj3Var)) == null) {
            expressionsRuntime = div2View.getExpressionsRuntime();
        }
        qnb qnbVarA = (expressionsRuntime == null || (snbVarG = expressionsRuntime.g()) == null) ? null : snbVarG.a(strH);
        if (qnbVarA == null) {
            qnbVarA = null;
        }
        if (qnbVarA instanceof qnb.f) {
            return d(div2View, divNumberAnimator, divActionAnimatorStart, oj3Var, (qnb.f) qnbVarA);
        }
        if (qnbVarA instanceof qnb.e) {
            return c(div2View, divNumberAnimator, divActionAnimatorStart, oj3Var, (qnb.e) qnbVarA);
        }
        eg2.e(div2View, new MissingVariableException("Unable to find number variable with name '" + divNumberAnimator.h() + '\'', null, 2, null));
        return null;
    }

    public final ObjectAnimator f(ObjectAnimator objectAnimator, Div2View div2View, jg2 jg2Var, DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var) {
        DivAnimationDirection divAnimationDirection;
        DivAnimationInterpolator divAnimationInterpolator;
        int iD;
        Expression expression = divActionAnimatorStart.b;
        if (expression == null || (divAnimationDirection = (DivAnimationDirection) expression.b(oj3Var)) == null) {
            divAnimationDirection = (DivAnimationDirection) jg2Var.a().b(oj3Var);
        }
        Expression duration = divActionAnimatorStart.c;
        if (duration == null) {
            duration = jg2Var.getDuration();
        }
        objectAnimator.setDuration(((Number) duration.b(oj3Var)).longValue());
        Expression expressionF = divActionAnimatorStart.g;
        if (expressionF == null) {
            expressionF = jg2Var.f();
        }
        objectAnimator.setStartDelay(((Number) expressionF.b(oj3Var)).longValue());
        Expression expression2 = divActionAnimatorStart.e;
        if (expression2 == null || (divAnimationInterpolator = (DivAnimationInterpolator) expression2.b(oj3Var)) == null) {
            divAnimationInterpolator = (DivAnimationInterpolator) jg2Var.d().b(oj3Var);
        }
        objectAnimator.setInterpolator(eu2.a(divAnimationInterpolator, eu2.k(divAnimationDirection)));
        DivCount divCountC = divActionAnimatorStart.f;
        if (divCountC == null) {
            divCountC = jg2Var.c();
        }
        if (divCountC instanceof DivCount.b) {
            iD = wn8.d(((int) ((Number) ((DivCount.b) divCountC).c().a.b(oj3Var)).longValue()) - 1, 0);
        } else {
            if (!(divCountC instanceof DivCount.c)) {
                throw new NoWhenBranchMatchedException();
            }
            iD = -1;
        }
        objectAnimator.setRepeatCount(iD);
        objectAnimator.setRepeatMode(eu2.h(divAnimationDirection) ? 2 : 1);
        List listE = jg2Var.e();
        if (listE != null) {
            objectAnimator.addListener(new a(listE, div2View, oj3Var));
        }
        List listB = jg2Var.b();
        if (listB != null) {
            objectAnimator.addListener(new b(listB, div2View, oj3Var));
        }
        return objectAnimator;
    }
}

package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAbsoluteEdgeInsets;
import com.yandex.div2.DivBackground;
import com.yandex.div2.DivCircleShape;
import com.yandex.div2.DivDrawable;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivFilter;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivImageBackground;
import com.yandex.div2.DivLinearGradient;
import com.yandex.div2.DivNinePatchBackground;
import com.yandex.div2.DivPivot;
import com.yandex.div2.DivPivotFixed;
import com.yandex.div2.DivRadialGradient;
import com.yandex.div2.DivRadialGradientCenter;
import com.yandex.div2.DivRadialGradientRadius;
import com.yandex.div2.DivRoundedRectangleShape;
import com.yandex.div2.DivShape;
import com.yandex.div2.DivShapeDrawable;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivStroke;
import com.yandex.div2.DivTransform;
import com.yandex.div2.DivWrapContentSize;
import java.util.Iterator;
import java.util.List;

public abstract class sj3 {
    public static final void a(qj3 qj3Var, DivAbsoluteEdgeInsets divAbsoluteEdgeInsets, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divAbsoluteEdgeInsets == null) {
            return;
        }
        qj3Var.addSubscription(divAbsoluteEdgeInsets.b.e(oj3Var, e74Var));
        qj3Var.addSubscription(divAbsoluteEdgeInsets.d.e(oj3Var, e74Var));
        qj3Var.addSubscription(divAbsoluteEdgeInsets.c.e(oj3Var, e74Var));
        qj3Var.addSubscription(divAbsoluteEdgeInsets.a.e(oj3Var, e74Var));
    }

    public static final void b(qj3 qj3Var, DivBackground divBackground, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divBackground != null) {
            if (divBackground instanceof DivBackground.f) {
                qj3Var.addSubscription(((DivBackground.f) divBackground).c().a.e(oj3Var, e74Var));
                return;
            }
            if (divBackground instanceof DivBackground.b) {
                DivImageBackground divImageBackgroundC = ((DivBackground.b) divBackground).c();
                qj3Var.addSubscription(divImageBackgroundC.a.e(oj3Var, e74Var));
                qj3Var.addSubscription(divImageBackgroundC.e.e(oj3Var, e74Var));
                qj3Var.addSubscription(divImageBackgroundC.b.e(oj3Var, e74Var));
                qj3Var.addSubscription(divImageBackgroundC.c.e(oj3Var, e74Var));
                qj3Var.addSubscription(divImageBackgroundC.f.e(oj3Var, e74Var));
                qj3Var.addSubscription(divImageBackgroundC.g.e(oj3Var, e74Var));
                List list = divImageBackgroundC.d;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        g(qj3Var, (DivFilter) it.next(), oj3Var, e74Var);
                    }
                    return;
                }
                return;
            }
            if (divBackground instanceof DivBackground.c) {
                DivLinearGradient divLinearGradientC = ((DivBackground.c) divBackground).c();
                qj3Var.addSubscription(divLinearGradientC.a.e(oj3Var, e74Var));
                nj3 nj3Var = divLinearGradientC.c;
                qj3Var.addSubscription(nj3Var != null ? nj3Var.b(oj3Var, e74Var) : null);
                List list2 = divLinearGradientC.b;
                if (list2 != null) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        d(qj3Var, (DivLinearGradient.ColorPoint) it2.next(), oj3Var, e74Var);
                    }
                    return;
                }
                return;
            }
            if (!(divBackground instanceof DivBackground.e)) {
                if (divBackground instanceof DivBackground.d) {
                    DivNinePatchBackground divNinePatchBackgroundC = ((DivBackground.d) divBackground).c();
                    qj3Var.addSubscription(divNinePatchBackgroundC.a.e(oj3Var, e74Var));
                    a(qj3Var, divNinePatchBackgroundC.b, oj3Var, e74Var);
                    return;
                }
                return;
            }
            DivRadialGradient divRadialGradientC = ((DivBackground.e) divBackground).c();
            nj3 nj3Var2 = divRadialGradientC.d;
            qj3Var.addSubscription(nj3Var2 != null ? nj3Var2.b(oj3Var, e74Var) : null);
            j(qj3Var, divRadialGradientC.a, oj3Var, e74Var);
            j(qj3Var, divRadialGradientC.b, oj3Var, e74Var);
            k(qj3Var, divRadialGradientC.e, oj3Var, e74Var);
        }
    }

    public static final void c(qj3 qj3Var, DivCircleShape divCircleShape, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divCircleShape == null) {
            return;
        }
        Expression expression = divCircleShape.a;
        qj3Var.addSubscription(expression != null ? expression.e(oj3Var, e74Var) : null);
        h(qj3Var, divCircleShape.b, oj3Var, e74Var);
        o(qj3Var, divCircleShape.c, oj3Var, e74Var);
    }

    public static final void d(qj3 qj3Var, DivLinearGradient.ColorPoint colorPoint, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (colorPoint == null) {
            return;
        }
        qj3Var.addSubscription(colorPoint.a.e(oj3Var, e74Var));
        qj3Var.addSubscription(colorPoint.b.e(oj3Var, e74Var));
    }

    public static final void e(qj3 qj3Var, DivDrawable divDrawable, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divDrawable == null || !(divDrawable instanceof DivDrawable.b)) {
            return;
        }
        DivShapeDrawable divShapeDrawableC = ((DivDrawable.b) divDrawable).c();
        qj3Var.addSubscription(divShapeDrawableC.a.e(oj3Var, e74Var));
        m(qj3Var, divShapeDrawableC.b, oj3Var, e74Var);
        o(qj3Var, divShapeDrawableC.c, oj3Var, e74Var);
    }

    public static final void f(qj3 qj3Var, DivEdgeInsets divEdgeInsets, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divEdgeInsets == null) {
            return;
        }
        qj3Var.addSubscription(divEdgeInsets.f.e(oj3Var, e74Var));
        qj3Var.addSubscription(divEdgeInsets.a.e(oj3Var, e74Var));
        Expression expression = divEdgeInsets.e;
        if (expression == null && divEdgeInsets.b == null) {
            qj3Var.addSubscription(divEdgeInsets.c.e(oj3Var, e74Var));
            qj3Var.addSubscription(divEdgeInsets.d.e(oj3Var, e74Var));
        } else {
            qj3Var.addSubscription(expression != null ? expression.e(oj3Var, e74Var) : null);
            Expression expression2 = divEdgeInsets.b;
            qj3Var.addSubscription(expression2 != null ? expression2.e(oj3Var, e74Var) : null);
        }
    }

    public static final void g(qj3 qj3Var, DivFilter divFilter, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divFilter == null || (divFilter instanceof DivFilter.c) || !(divFilter instanceof DivFilter.a)) {
            return;
        }
        qj3Var.addSubscription(((DivFilter.a) divFilter).c().a.e(oj3Var, e74Var));
    }

    public static final void h(qj3 qj3Var, DivFixedSize divFixedSize, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divFixedSize == null) {
            return;
        }
        qj3Var.addSubscription(divFixedSize.b.e(oj3Var, e74Var));
        qj3Var.addSubscription(divFixedSize.a.e(oj3Var, e74Var));
    }

    public static final void i(qj3 qj3Var, DivPivot divPivot, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divPivot != null) {
            if (!(divPivot instanceof DivPivot.b)) {
                if (divPivot instanceof DivPivot.c) {
                    qj3Var.addSubscription(((DivPivot.c) divPivot).c().a.e(oj3Var, e74Var));
                }
            } else {
                DivPivotFixed divPivotFixedC = ((DivPivot.b) divPivot).c();
                Expression expression = divPivotFixedC.b;
                qj3Var.addSubscription(expression != null ? expression.e(oj3Var, e74Var) : null);
                qj3Var.addSubscription(divPivotFixedC.a.e(oj3Var, e74Var));
            }
        }
    }

    public static final void j(qj3 qj3Var, DivRadialGradientCenter divRadialGradientCenter, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divRadialGradientCenter != null) {
            if (divRadialGradientCenter instanceof DivRadialGradientCenter.b) {
                DivRadialGradientCenter.b bVar = (DivRadialGradientCenter.b) divRadialGradientCenter;
                qj3Var.addSubscription(bVar.c().a.e(oj3Var, e74Var));
                qj3Var.addSubscription(bVar.c().b.e(oj3Var, e74Var));
            } else if (divRadialGradientCenter instanceof DivRadialGradientCenter.c) {
                qj3Var.addSubscription(((DivRadialGradientCenter.c) divRadialGradientCenter).c().a.e(oj3Var, e74Var));
            }
        }
    }

    public static final void k(qj3 qj3Var, DivRadialGradientRadius divRadialGradientRadius, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divRadialGradientRadius != null) {
            if (divRadialGradientRadius instanceof DivRadialGradientRadius.b) {
                DivRadialGradientRadius.b bVar = (DivRadialGradientRadius.b) divRadialGradientRadius;
                qj3Var.addSubscription(bVar.c().a.e(oj3Var, e74Var));
                qj3Var.addSubscription(bVar.c().b.e(oj3Var, e74Var));
            } else if (divRadialGradientRadius instanceof DivRadialGradientRadius.c) {
                qj3Var.addSubscription(((DivRadialGradientRadius.c) divRadialGradientRadius).c().a.e(oj3Var, e74Var));
            }
        }
    }

    public static final void l(qj3 qj3Var, DivRoundedRectangleShape divRoundedRectangleShape, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divRoundedRectangleShape == null) {
            return;
        }
        Expression expression = divRoundedRectangleShape.a;
        qj3Var.addSubscription(expression != null ? expression.e(oj3Var, e74Var) : null);
        h(qj3Var, divRoundedRectangleShape.b, oj3Var, e74Var);
        h(qj3Var, divRoundedRectangleShape.d, oj3Var, e74Var);
        h(qj3Var, divRoundedRectangleShape.c, oj3Var, e74Var);
        o(qj3Var, divRoundedRectangleShape.e, oj3Var, e74Var);
    }

    public static final void m(qj3 qj3Var, DivShape divShape, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divShape != null) {
            if (divShape instanceof DivShape.c) {
                l(qj3Var, ((DivShape.c) divShape).c(), oj3Var, e74Var);
            } else if (divShape instanceof DivShape.a) {
                c(qj3Var, ((DivShape.a) divShape).c(), oj3Var, e74Var);
            }
        }
    }

    public static final void n(qj3 qj3Var, DivSize divSize, oj3 oj3Var, e74 e74Var) {
        Expression expression;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divSize != null) {
            if (divSize instanceof DivSize.b) {
                DivFixedSize divFixedSizeC = ((DivSize.b) divSize).c();
                qj3Var.addSubscription(divFixedSizeC.b.e(oj3Var, e74Var));
                qj3Var.addSubscription(divFixedSizeC.a.e(oj3Var, e74Var));
                return;
            }
            qc2 qc2VarE = null;
            if (divSize instanceof DivSize.c) {
                Expression expression5 = ((DivSize.c) divSize).c().a;
                qj3Var.addSubscription(expression5 != null ? expression5.e(oj3Var, e74Var) : null);
                return;
            }
            if (divSize instanceof DivSize.d) {
                DivWrapContentSize divWrapContentSizeC = ((DivSize.d) divSize).c();
                Expression expression6 = divWrapContentSizeC.a;
                qj3Var.addSubscription(expression6 != null ? expression6.e(oj3Var, e74Var) : null);
                DivWrapContentSize.ConstraintSize constraintSize = divWrapContentSizeC.c;
                qj3Var.addSubscription((constraintSize == null || (expression4 = constraintSize.b) == null) ? null : expression4.e(oj3Var, e74Var));
                DivWrapContentSize.ConstraintSize constraintSize2 = divWrapContentSizeC.c;
                qj3Var.addSubscription((constraintSize2 == null || (expression3 = constraintSize2.a) == null) ? null : expression3.e(oj3Var, e74Var));
                DivWrapContentSize.ConstraintSize constraintSize3 = divWrapContentSizeC.b;
                qj3Var.addSubscription((constraintSize3 == null || (expression2 = constraintSize3.b) == null) ? null : expression2.e(oj3Var, e74Var));
                DivWrapContentSize.ConstraintSize constraintSize4 = divWrapContentSizeC.b;
                if (constraintSize4 != null && (expression = constraintSize4.a) != null) {
                    qc2VarE = expression.e(oj3Var, e74Var);
                }
                qj3Var.addSubscription(qc2VarE);
            }
        }
    }

    public static final void o(qj3 qj3Var, DivStroke divStroke, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divStroke == null) {
            return;
        }
        qj3Var.addSubscription(divStroke.a.e(oj3Var, e74Var));
        qj3Var.addSubscription(divStroke.d.e(oj3Var, e74Var));
        qj3Var.addSubscription(divStroke.c.e(oj3Var, e74Var));
    }

    public static final void p(qj3 qj3Var, DivTransform divTransform, oj3 oj3Var, e74 e74Var) {
        y45.j(qj3Var, "<this>");
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        if (divTransform == null) {
            return;
        }
        Expression expression = divTransform.c;
        qj3Var.addSubscription(expression != null ? expression.e(oj3Var, e74Var) : null);
        i(qj3Var, divTransform.a, oj3Var, e74Var);
        i(qj3Var, divTransform.b, oj3Var, e74Var);
    }
}
